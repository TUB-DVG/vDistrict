"""This example file demonstrates how to simulate a TEASER/CityModel."""


import django
import multiprocessing
import os
import pandas as pd
import datetime

# IMPORTANT: Before you use EBC Django modules outside the project you need to call
# django.setup() - assuming you followed the instruction in the README. Now you can
# import all functions and models from the applications.

django.setup()
import teaser_citydb.teaser_api.to_teaser as tt
import teaser_citydb.simulation.simulate_models as sim
import teaser_citydb.simulation.read_results as read
from citydb.models import CityModel
import citydb.shortcuts.buildings_data as bldg_shortcut


def e03_simulate():
    """Demonstrate how to load a TEASER project from 3DCityDB."""
    # We load the last CityModel from the database and import it to TEASER.

    city_model = CityModel.objects.last()
    prj = tt.import_project(city_model=city_model)

    # As always we call `calculate_all_buildings` and `export_aixlib`.
    # Reminder: Path=None means, that we save the models into default path of TEASER.

    prj.calc_all_buildings(raise_errors=False)
    prj.export_aixlib(path=None)

    # As we want not only the TEASER models to be simulated, but we want the results to
    # be added to our databases it is important that we do not hand over the TEASER
    # project to the simulation function but all buildings from the CityModel. The
    # models and the database use the same name for Project/CityModel and Buildings so
    # nothing get mixed up.

    # We can get all Buildings by making using a citydb shortcut (see also example
    # e04_making_queries.py). This function will return a Django Query set with all
    # buildings (in this case only one) of the CityModel.

    buildings_to_simulate = bldg_shortcut.get_all_buildings(city_model=city_model)

    # To perform multiprocessing we use `queue_simulation` function. We always need to
    # hand over a simulate function, you can find this function in the simulation
    # module. `bldg_query_set` is the set of buildings we want to simulate. We need the
    # `city_model` instance to have all information (e.g. for naming of models). The
    # model path is the default path of TEASER (see above), the `results_path` can be
    # any workspace, the results will be saved into a folder named after the
    # Project/CityModel

    print("Start simulation...")

    sim.queue_simulation(
        sim_function=sim.simulate,
        bldg_query_set=buildings_to_simulate,
        city_model=city_model,
        number_of_workers=multiprocessing.cpu_count() - 1,
        model_path=os.path.join(os.path.expanduser("~"), "TEASEROutput"),
        results_path=os.path.join(os.path.expanduser("~"), "djangoteaserout"),
        start_time=0.0,
        stop_time=31536000.0,
        output_interval=3600.0,
        method="Dassl",
        tolerance=0.0001,
    )

    print("Start reading results...")
    # We also want to directly import the simulated time series for heating and cooling
    # into our database, therefore we use `queue_read_results` function. The function is
    # setup similar to `queue_simulation.`

    read.read_results(
        bldg_query_set=buildings_to_simulate,
        city_model=city_model,
        index=pd.date_range(
            datetime.datetime(2019, 1, 1), periods=8761, freq="H", tz="Europe/Berlin"
        ),
        results_path=os.path.join(os.path.expanduser("~"), "djangoteaserout"),
    )


if __name__ == "__main__":
    prj = e03_simulate()

    print(
        "You are all set and simulated your first TEASER Project! Congratulations! :)"
    )
