#djangobox

The main purposed of this box is to create an environment that runs Django. It also clones the hos-django repository; to make it easy to set-up the development environment for Hope One Source projects.

#####The final vagrant box is on [ATLAS](https://atlas.hashicorp.com/omnitom/boxes/hosdjangobox) and is named omnitom/hosdjangobox
#####Install Vagrant and see [Getting Started](http://docs.vagrantup.com/v2/getting-started/index.html) 
#####example:
```Batchfile
$ vagrant init omnitom/hosdjangobox
$ vagrant up
```
#####Building the djangobox yourself:

Three different packer templates are meant to be run in order. This is done so new features can be added in an incremental fashion.

Install [packer](https://www.packer.io/intro/getting-started/setup.html) first. 

-packer build hos-djangbox-step1-install-os.json

This will output a hos-djangbox-step1 .ovf and .vmdk file in the newly created output-virtualbox-iso directory

-packer build hos-djangbox-step2-install-software.json

This will output a .ovf file in the newly created output-virtualbox-ovf directory

-packer build hos-djangbox-step3-configure-system.json

The final .ovf file will be inside the output-virtualbox-ovf3 directory. The final Vagrant box file will be inside the step3-box directory.

##What's installed

-ubuntu 14.04 desktop (credit to: https://github.com/boxcutter/ubuntu)

###system_packages:
  - build-essential
  - git
  - curl
  - make
  - vim
  - unzip
  - nodejs 
  - graphicsmagick
  - nginx
  - clang 
  - whois
  - python-setuptools
  - python-dateutil
  - python-software-properties 
  - python-gdal 
  - python-mapnik2 
  - python-pyproj
  - python-dev 
  - python-imaging
  - python-virtualenv
  - postgis
  - zlib1g-dev
  - subversion
  - doxygen
  - graphviz
  - pgadmin3
  - gdal-bin
  - libpq-dev
  - libgdal-dev
  - supervisor
  - qgis

  ###Ubuntu Personal Package Archives (PPAs):

  - ubuntugis/ubuntugis-unstable
  - kakrueger/osm-unstable
  - developmentseed/mapbox
  - rael-gc/rvm

  ###repos:

  - https://github.com/d3netxer/hos-django

  ###Python packages:

  - django
  - psycopg2
  - django-geojson
  - requests
  - pyyaml
  - django-leaflet
  - gunicorn


