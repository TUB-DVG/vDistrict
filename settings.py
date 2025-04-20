"""This settings file is used to set up individual project settings"""

# IMPORTANT: replace the TEMPLATE in the name with your project name, this will
# add the file automatically to the .gitignore

from .settings import *
from influxdb import DataFrameClient
import os
import platform


# Your personal connection settings for PostgreSQL DB
DATABASES = {
    "default": {
        "ENGINE": "django.contrib.gis.db.backends.postgis",
        "NAME": "YOUR_DATABASE",
        "USER": "YOUR_USER",
        "PASSWORD": "YOUR_PASSWORD",
        "HOST": "YOUR_HOST",
        "PORT": "5432",
    }
}

# Your personal connection settings for InfluxDB
INFLUX_DF_CLIENT = DataFrameClient(
    host="YOUR_HOST",
    port="8086",
    username="YOUR_USER",
    password="YOUR_PASSWORD",
    database="YOUR_DATABASE",
)

# On Unix System you need to point to gdal and geos library in Django. For
# Windows please have a look at README.

# Note if you are using any other than anaconda3 adjust this path!

if platform.system() == "Linux":
    GDAL_LIBRARY_PATH = os.path.join(
        os.getenv("HOME"), "anaconda3", "envs", "{YOURENVIRONMENT}", "lib", "libgdal.so"
    )
    GEOS_LIBRARY_PATH = os.path.join(
        os.getenv("HOME"),
        "anaconda3",
        "envs",
        "{YOURENVIRONMENT}",
        "lib",
        "libgeos_c.so",
    )

ALLOWED_HOSTS = ["*"]

# SECURITY WARNING: don't run with debug turned on in production!
DEBUG = True
