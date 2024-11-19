"""This example file demonstrates how to use shortcuts of django-citydb."""


import django
import os
# IMPORTANT: Before you use EBC Django modules outside the project you need to call
# django.setup() - assuming you followed the instruction in the README. Now you can
# import all functions and models from the applications.
import sys
import os

# Get the project root directory and add to Python path
project_root = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
sys.path.append(project_root)

# Configure Django settings
os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'vDistrict.settings')

# Initialize Django
django.setup()

# Import required modules
from django.conf import settings
import citydb.shortcuts.time_series_data as ts_short
import citydb.shortcuts.buildings_data as bldg_short
from datetime import datetime as dt


def e04_queries():
    """Demonstrate how to use shortcuts of django-citydb."""
    # As queries with citydb and django can be quite cumbersome we implemented a few
    # shortcut functions for you. This example demonstrates a few of them, if not stated
    # different in documentation, the shortcuts will return Django objects or Django
    # QuerySets. If you think some queries are performed more than once, please also add
    # a more general short cut!

    # 1. Get last CityModel

    city_model = bldg_short.get_all_city_models().last()

    print(city_model, city_model.name)

    # 2. Get Buildings

    buildings = bldg_short.get_all_buildings(city_model=city_model)

    print(buildings)

    # 3. Get Simulation data, this function will not directly return an object, but a
    # dictionary containing the object and the values of the time series.

    ts_information = ts_short.get_time_series_data(
        building=buildings.first(),
        end_use="ventilationHeating",
        thematic_description="Power",
        acquisition_method="simulation",
        start=dt(2019, 1, 1, 0, 0, 0),
        end=dt(2019, 12, 31, 23, 55, 0),
        mean="1h",
    )

    # You can either access the whole dictionary, the Object IrregularTimeSeriesFile or
    # the values (as pandas dataframe directly)

    print(ts_information)
    print(ts_information["time_series_object"])
    print(ts_information["time_series_values"])


if __name__ == "__main__":
    prj = e04_queries()

    print("You are all set and made first queries with shortcut functions.")
