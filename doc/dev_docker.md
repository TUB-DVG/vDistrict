# Administrator Guide Using Docker

To set up databases, we will guide you through 2 steps:

1. Start `3dcitydb` docker with `PostgreSQL` and `PostGIS`. For this you can use the docker-compose file in the `vDistrict` folder and the `.env` file in the `config` folder.
2. Start `InfluxDB` docker
3. Migrate EnergyADE and UtilityNetworksADE, with the `3dcitydb` [importer/exporter tool](https://www.3dcitydb.org/3dcitydb/3dimpexp/).

If you don't know docker, have a look at: https://docs.docker.com/. There is a helpful
docker cheat sheet available here:
https://www.docker.com/sites/default/files/Docker_CheatSheet_08.09.2016_0.pdf.

We assume you have docker already installed on you system, if not, use this guide:
https://docs.docker.com/engine/installation/linux/docker-ce/ubuntu/#install-docker-ce.

## 1. 3DCityDB

First we want to start a docker, that contains a `PostgreSQL` database, with
`PostGIS` extension and one database, with 3DCityDB schema.
- run the docker with:

        $ docker run -dit --name {YOURNAME} -p {YOURPORT}:5432 -e "SRID=25832" -e "SRSNAME=urn:adv:crs:ETRS89_UTM32*DE_DHHN92_NH" -e "CITYDBNAME={YOURDB}"  -e "POSTGRES_USER=admin" -e "POSTGRES_PASSWORD=admin" tumgis/3dcitydb-postgis

    - --name for docker container name (e.g. citydb-docker)
    - -p is to expose the postgres port 5432 (e.g. 5432:5432)
    - CITYDBNAME for Database Name (e.g. citydb)
    - POSTGRES_USER for Database user name (e. g. admin)
    - POSTGRES_PASSWORD for Password (e. g. admin)
    - SRID set the SRID reference (standardvalues / needed for 3dcitydb) ("25832")
    - SRSName set the SRSName reference (standardvalues / needed for 3dcitydb) ("urn:adv:crs:ETRS89_UTM32*DE_DHHN92_NH")


    - You can also use the docker-compose file in the `vDistrict` folder and the `.env` file in the `config` folder to start the `3dcitydb` docker.

## 2. InfluxDB

In addition to semantic data we store time series data using `InfluxDB`, to run the docker do the following:

- pull the influxdb docker image

        $ docker pull influxdb

For persistence it is recommended, that you are using a mounted or shared folder
where you can store your backups to (in our example we are creating a folder in
media at the host machine)

- run the docker with the http api port 8086 exposed

        $ docker run --name=influxdb -d -p 8086:8086 -v /media/influxdb_backup/:/backup influxdb

- jump into the influxdb console for Database and User creation

        $ docker exec -it influxdb bash
        $ influx

        # CREATE DATABASE vdistrict
        # CREATE USER vdistrict WITH PASSWORD 'vdistrict' WITH ALL PRIVILEGES

For Backup and restore have a look here:

https://www.influxdata.com/blog/backuprestore-of-influxdb-fromto-docker-containers/

## 3. Migrate EnergyADE and UtilityNetworksADE

1. Start 3DCityDB Importer/Exporter https://github.com/3dcitydb/importer-exporter
2. Select tab "Datenbank" and enter your database configuration and connect your database ("Verbinden")
3. Select tab "ADE Manager" and chose the path to `vDistrict/schema_mappings/EnergyADE_mapping` folder in this repository
4. Select "ADE registrieren"
5. Repeat step 3 and 4 with `vDistrict/schema_mappings/UtilityNetworksADE_mapping`


## Important Note : Restore

## InfluxDB

As i ran into quite a few problems while actually restoring the data, i would like to share my way how i got it to work:

1. create a docker container with a shared influxdb folder like: `-v /your/path/here:/var/lib/influxdb`
2. exec into the container with `exec -it containername /bin/bash`
3. restore your data with the restore command found in the link above (quickstart: `influxd restore -metadir /var/lib/influxdb/meta -datadir /var/lib/influxdb/data -database yourdatabase /backup/yourdatabase.backup`)
4. restart your container with "docker restart influxdb"
6. Enjoy your backup!

Troubleshooting if needed:

4. after done that you should restart the influxdb service (but that is not working, thus you have to follow the workaraound in step 5.)
5. Check if the data / meta / and wal directories with your database exist in the shared folder mentioned in 1. If no (i have no glue). So if yes, simply start another docker container
  with for example : `docker run --name=influxdb -d -p 8086:8086 -v /media/influxdb_backup/:/backup -v /your/path/here:/var/lib/influxdb influxdb` (Attention: the second shared folder
  with the actual data is very much needed :) )
6. Enjoy your backup!

#### Postgres

A very simple approach to backup and restore the postgres docker is explained here:

https://stackoverflow.com/questions/24718706/backup-restore-a-dockerized-postgresql-database/29913462#29913462
