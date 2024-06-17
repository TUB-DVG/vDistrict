"""This example file demonstrates how to save a TEASER project in 3DCityDB."""
import django
from teaser.project import Project
import random

# IMPORTANT: Before you use EBC Django modules outside the project you need to call
# django.setup() - assuming you followed the instruction in the README. Now you can
# import all functions and models from the applications.

django.setup()
import teaser_citydb.teaser_api.from_teaser as ft


def e01_save():
    """Demonstrate how to save a TEASER project in 3DCityDB."""
    # First step is to instantiate a new TEASER Project and add a building (in this case
    # residential TABULA building). We will add a random name to both the Building and
    # the Project as these are unique constraints in 3DCityDB.

    prj = Project(load_data=False)
    prj.name = "ArchetypeExample_{}".format(random.randint(1, 50))
    prj.add_residential(
        method="tabula_de",
        usage="single_family_house",
        name="ResidentialBuildingTabula_{}".format(random.randint(1, 50)),
        year_of_construction=1910,
        number_of_floors=3,
        height_of_floors=3.2,
        net_leased_area=120,
        construction_type="tabula_standard",
        with_ahu=True,
    )

    # Now you can simply call the function `import_city_model` from the module
    # `from_teaser.py` in TEASER django application. This will automatically write all
    # available TEASER data (of all buidlings) into your database.

    # If you already simulated your models, you can specify a `results_path` which will
    # then automatically also import heating and cooling demands into the database.

    ft.import_city_model(
        project=prj,
        description="Transfer a TEASER project to 3DCityDB.",
        updating_person="pre",
        reason_for_update="First example of this project.",
    )


if __name__ == "__main__":
    prj = e01_save()

    print("You are all set and uploaded your first TEASER Project! Congratulations! :)")
