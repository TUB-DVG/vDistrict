# User Guide for Windows

To use `vDistrict` on windows, we will guide you through 3 steps:

1. Install `anaconda` and setup `virtual python environment`
2. Install necessary dependencies, including EBC Django-apps
3. Set your environment variables

## 1. Anaconda

If you don't know `anaconda`, have a look at: https://docs.anaconda.com/. There
is a helpful anaconda cheat sheet available here:
https://conda.io/docs/_downloads/conda-cheatsheet.pdf

To install and use `anaconda` for our purposes, do the following:

- Download latest `anaconda` version (e.g.
https://www.anaconda.com/download/#download) and use the graphical installer to
install anaconda on your PC. If you are at EON ERC, please choose your personal
folder on `D:\\` for installation. At some point the installer will ask you:
"Add Anaconda to my PATH environment variable", please check this box (although
    you might get a warning).
- Once you have everything installed, open a windows command prompt and create your virtual environment:

        $ conda create -n vDistrict python=3.7

- Activate your new environment with:

        $ activate vDistrict

## 2. Dependencies

### Public dependencies

- `vDistrict` has some dependencies, we need to install them by using `conda` or `pip`, just type

        $ conda install psycopg2 numpy pandas pyproj scipy plotly
        $ conda install shapely libgdal gdal
        $ pip install django influxdb

One comment on gdal and libgdal: Django can't handle newer version.

### Internal dependencies

We use the following EBC Django-applications:

- [`django-citydb`](https://git.rwth-aachen.de/EBC/Team_UES/living-roadmap/django-citydb) - Interface to 3DCityDB, with GIS-based web app.
- [`django-uesmodels`](https://git.rwth-aachen.de/EBC/Team_UES/living-roadmap/django-uesmodels) - Enables usage of uesmodels/uesgraphs in combination with `django-citydb`
- [`django-teaser`](https://git.rwth-aachen.de/EBC/Team_UES/living-roadmap/django-teaser) - Enable export and import of TEASER models in combination with `django-citydb`

You will find detailed installation information in the README of the repositories

## 3. Environment variables

`VDistrict` needs a couple of environment variables to AixLib Modelica library, itself and to
geospatial libraries, these libraries come with the installation of QGIS. After you have
successfully installed the latest QGIS version (e.g. using EON.ERC Softwarecenter).

Now you need to set a specific environment variable for the conda python
environment. In your anaconda environment you will find a folder called
`etc/conda` with sub folders `activate.d` and `deactivate.d` (if you do not find
them, just create them). In each of these sub folders you should create a file
called `env_vars.bat`.
Modify the file as follows:

`etc/conda/activate.d`:

        set OSGEO4W_ROOT=Path/to/your/QGIS
        set PYTHONPATH=[...]/vDistrict
        set GDAL_DATA=%OSGEO4W_ROOT%/share/gdal
        set PROJ_LIB=%OSGEO4W_ROOT%/share/proj
        set PATH=%PATH%;%OSGEO4W_ROOT%/bin
        set AIXLIB_LIBRARY_PATH=Path/to/your/AixLibClone


`etc/conda/deactivate.d`:

        set PATH=%PATH:%OSGEO4W_ROOT%/bin;=%
        set OSGEO4W_ROOT=
        set GDAL_DATA=
        set PROJ_LIB=
        set AIXLIB_LIBRARY_PATH=
        set PYTHONPATH=

You can also set these variables only for your [conda environment](https://conda.io/projects/conda/en/latest/user-guide/tasks/manage-environments.html#windows)

For my Account the variables look like:

        set PYTHONPATH=D:\pre\git\vDistrict\
        set AIXLIB_LIBRARY_PATH=D:\pre\git\AixLib\AixLib
        set OSGEO4W_ROOT=C:/Program Files/QGIS 2.14
        set GDAL_DATA=%OSGEO4W_ROOT%/share/gdal
        set PROJ_LIB=%OSGEO4W_ROOT%/share/proj
        set PATH=%PATH%;%OSGEO4W_ROOT%/bin

## Next steps

You have successfully installed all dependencies for  `vDistrict` for Windows, [please go on and adjust your Django project `settings.py`](./settings.md)
