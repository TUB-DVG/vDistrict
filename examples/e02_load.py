"""This example file demonstrates how to load a TEASER project from 3DCityDB."""
import django

# IMPORTANT: Before you use EBC Django modules outside the project you need to call
# django.setup() - assuming you followed the instruction in the README. Now you can
# import all functions and models from the applications.

django.setup()
import teaser_citydb.teaser_api.to_teaser as tt
from citydb.models import CityModel


def e01_save():
    """Demonstrate how to load a TEASER project from 3DCityDB."""
    # First step is query a certain CityModel you want to translate into TEASER. As in
    # the example we set a random name to the CityModel we will use the django `last()`
    # function to get the last updated CityModel. These examples will not introduce the
    # query language of Django. We assume you are familiar with it, for example by using
    # Django Tutorial.

    city_model = CityModel.objects.last()

    print(city_model.name, city_model.description)
    # Now you can simply call the function `import_project` from the module
    # `to_teaser.py` in TEASER django application. This will automatically write all
    # available data into a new TEASER project.

    prj = tt.import_project(city_model=city_model)
    # To validate we can print the name and the net_leased_area of the Building.

    print(prj.buildings[0].name, prj.buildings[0].net_leased_area)
    import ipdb

    ipdb.set_trace()


if __name__ == "__main__":
    prj = e01_save()

    print("You are all set and imported your first TEASER Project! Congratulations! :)")
