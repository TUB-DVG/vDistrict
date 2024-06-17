# User Guide for Linux

To use `vDistrict` on Linux, we will guide you through 3 steps:

1. Install `anaconda` and setup `virtual python environment`
2. Install necessary dependencies
3. Set your environment variables

# 1. Anaconda

If you don't know `anaconda`, have a look at: https://docs.anaconda.com/. There
is a helpful anaconda cheat sheet available here:
https://conda.io/docs/_downloads/conda-cheatsheet.pdf

To install and use `anaconda` for our purposes, do the following:

- Download latest `anaconda` version  and use the installer to
install anaconda on your PC. At some point the installer will ask you:
"Add Anaconda to my PATH environment variable", please agree (although
    you might get a warning).

        $ wget https://repo.anaconda.com/archive/Anaconda3-2019.03-Linux-x86_64.sh
        $ bash Anaconda3-2019.03-Linux-x86_64.sh

- Once you have everything installed, open a new terminal and create your virtual environment:

        $ conda create -n vDistrict python=3.7

- Activate your new environment with:

        $ source activate vDistrict

## 2. Dependencies

### Public dependencies

- `vDistrict` has some dependencies, we need to install them by using `conda` or `pip`, just type

        $ conda install psycopg2 numpy pandas=0.23 pyproj scipy plotly
        $ conda install -c conda-forge shapely libgdal gdal
        $ pip install django influxdb

### Internal dependencies

We use the following EBC Django-applications:

- [`django-citydb`](https://git.rwth-aachen.de/EBC/Team_UES/living-roadmap/django-citydb) - Interface to 3DCityDB, with GIS-based web app.
- [`django-uesmodels`](https://git.rwth-aachen.de/EBC/Team_UES/living-roadmap/django-uesmodels) - Enables usage of uesmodels/uesgraphs in combination with `django-citydb`
- [`django-teaser`](https://git.rwth-aachen.de/EBC/Team_UES/living-roadmap/django-teaser) - Enable export and import of TEASER models in combination with `django-citydb`

You will find detailed installation information in the README of the repositories

## 3. Environment variables


Now you need to set a specific environment variable for the conda python environment. In
your anaconda environment you will find a folder called `etc/conda` with sub folders
`activate.d` and `deactivate.d` (if you do not find them, just create them). In each of
these sub folders you should create a file called `env_vars.sh`.
Modify the file as follows:

`etc/conda/activate.d/env_vars.sh`:

    export AIXLIB_LIBRARY_PATH=Path/to/your/AixLibClone
    export PYTHONPATH=Path/to/your/vDistrictClone

`etc/conda/deactivate.d/env_vars.sh`:

    unset AIXLIB_LIBRARY_PATH=Path/to/your/AixLibClone
    unset PYTHONPATH=Path/to/your/vDistrictClone

A more general description can be found here: https://conda.io/docs/user-guide/tasks/manage-environments.html#saving-environment-variables


## Next steps

You have successfully setup `vDistrict` for Linux, [please go on and adjust your Django project `settings.py`](./settings.md)
