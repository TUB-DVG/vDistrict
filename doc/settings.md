# How to configure your individual settings

As we want to use the web page with several databases and on different OS, we
have some project and user specific configurations. All these configurations are
saved in one file called `p_settings_<PROJECTNAME>.py` in
`vDistrict.settings`. This guide will show you how to set up your
settings file correctly.


## How to integrate your individual settings in the project?

Please copy the file `p_settings_TEMPLATE.py` into your folder of
`./vDistrict` and rename it to
`p_settings_<PROJECTNAME>.py`, this will automatically add your user information
to the `.gitignore`, so you don't need to worry about your data.

# How to configure your `p_settings_<PROJECTNAME>.py`

As already mentioned, we need two different databases to use `django-citydb`, please fill in the information in `p_settings_<PROJECTNAME>.py`.

Add user information of you PostgreSQL database, __keep quotation marks__!


    DATABASES = {
        'default': {
            'ENGINE': 'django.contrib.gis.db.backends.postgis',
            'NAME': 'YOUR_DATABASE',
            'USER': 'YOUR_USER',
            'PASSWORD': 'YOUR_PASSWORD',
            'HOST': 'YOUR_HOST',
            'PORT': '5432'
        }
    }

To also use InfluxDB timeseries database add the following to `settings.py`, add
your user information, but again __keep quotation marks__:

    from influxdb import DataFrameClient

    # Your personal connection settings for InfluxDB
    INFLUX_DF_CLIENT = DataFrameClient(
        host='YOUR_HOST',
        port='8086',
        username='YOUR_USER',
        password='YOUR_PASSWORD',
        database='YOUR_DATABASE')

## How to add this settings to your environment variables?

Please add the following environment variables to your `env_vars` file in `activate.d` and `deactivate.d` folders:


Linux `etc/conda/activate.d`:

    export DJANGO_SETTINGS_MODULE=vDistrict.p_settings_<PROJECTNAME>

Linux `etc/conda/deactivate.d`:

    unset DJANGO_SETTINGS_MODULE

Windows `etc/conda/activate.d`:

    set DJANGO_SETTINGS_MODULE=vDistrict.p_settings_<PROJECTNAME>

Windows `etc/conda/deactivate.d`:

    set DJANGO_SETTINGS_MODULE=

## Only for Linux Users

Please fill in the following variables for geospatial libraries:

    if platform.system() == "Linux":
        GDAL_LIBRARY_PATH = os.path.join(
            os.getenv("HOME"), "anaconda3", "envs", "{YOUR_ENVIRONMENT}", "lib", "libgdal.so"
        )
        GEOS_LIBRARY_PATH = os.path.join(
            os.getenv("HOME"), "anaconda3", "envs", "{YOUR_ENVIRONMENT}", "lib", "libgeos_c.so"
        )
