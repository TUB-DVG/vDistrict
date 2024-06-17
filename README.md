# vDistrict - Django Project to collect and demonstrate functionalities of EBC Django-apps.

## Introduction

This repository contains a Django project to demonstrate the functionalities of several Django apps original developed at the [Institute for Energy Efficient Buildings and Indoor Climate](https://www.ebc.eonerc.rwth-aachen.de/cms/~dmzz/E-ON-ERC-EBC/). Among these are the TEASER and uesgraph API, as well as a GIS-based
interactive webpage.

This repository is currently mainted by the [Institute for Digital Networking of Buildings, Energy Supply Systems and Users](mailto:info@dvg.tu-berlin.de) , if you have any questions don't hesitate to contact us.

We've set up this repository for testing and learning purposes. However, first you need
to learn how to configure your databases and the Django settings.



## Quick Guide installation and configuration

In this Quick Guide we assume you already have the connection details (IP, Port,
database name, username and password) for 3DCityDB (PostGIS) and InfluxDB. If not and
you are an administrator you can follow the
[administrator guide using docker](./doc/dev_docker.md), otherwise you should ask your supervisor.

First you need to ensure that you have installed all dependencies, we provide two installation guides for:
1. [Installation for Windows](./doc/user_windows.md)
2. [Installation for Linux](./doc/user_linux.md)

In addition you need to configure you Django settings. You can use this guide to [create your own settings](./doc/settings.md).

Please use this database if you want to run the tests:


Now you can run the migrations and work with vDistrict:

Run to create and synchronize the models (after the first `migrate` you will
get some errors, that the table `building` already exists, please just ignore it)

        $ python manage.py migrate
        $ python manage.py migrate --fake-initial

## First steps

After you followed the instructions above you can run your local Django server
with:

    $ ./vDistrict python manage.py runserver


## Version

This is version 0.1.0. In development phase we will not guarantee to use strict semantic
versioning.


## Reference 

The actual main part of 'django-citydb' is developed for: 

    (1) Remmen, P. Automated Calibration of Non-Residential Urban Building Energy Modeling = Automatisierte Kalibrierung von Simulationsmodellen Für Nichtwohngebäude Im Städtischen Maßstab, 1. Auflage.; E.ON Energy Research Center, RWTH Aachen University: Aachen, 2022. [Link](https://publications.rwth-aachen.de/record/843586/files/843586.pdf)


Current status of the code will be updated continously. List of publications:

[GityGML Import and Export for Dynamic Building Perfomance Simulation](https://www.researchgate.net/publication/308368722_CityGML_Import_and_Export_for_Dynamic_Building_Performance_Simulation_in_Modelica)  


## Contact 

Code is maintained by TU Berlin Institute for Digital Networking of Buildings, Energy Supply Systems and Users. [Contact Us](mailto:info@dvg.tu-berlin.de)


## License

[MIT](LICENSE)


## Acknowledgements

`django-citydb` has been developed within public funded projects
and with financial support by BMWK (Federal Ministry for Economics and Climate Action)

<img src="resources/bmwk_en_2023.png" width="200">