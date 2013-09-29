#!/bin/bash

USUARIO=yanina
distro=64

echo -e "\n---------------------------------------------------------\n"
echo -e "\nActualizando repositorios\n"
echo -e "\n---------------------------------------------------------\n"

apt-get --force-yes update

echo -e "\n---------------------------------------------------------\n"
echo -e "\nActualizar versiones repositorios...\n"
echo -e "\n---------------------------------------------------------\n"

apt-get --force-yes upgrade

echo -e "\n---------------------------------------------------------\n"
echo -e "\nInstalando paquetes...\n"
echo -e "\n---------------------------------------------------------\n"

apt-get install --force-yes guake 
apt-get install --force-yes bzr 
apt-get install --force-yes meld 
apt-get install --force-yes vlc 
apt-get install --force-yes geany 
apt-get install --force-yes openssh-client 
apt-get install --force-yes texmaker 
apt-get install --force-yes qbzr 
apt-get install --force-yes bzr-explorer 
apt-get install --force-yes bzrtools 
apt-get install --force-yes gimp 
apt-get install --force-yes geany-plugins 
apt-get install --force-yes aptitude 
apt-get install --force-yes kazam 
apt-get install --force-yes unetbootin 
apt-get install --force-yes python-pip 
apt-get install --force-yes pep8 
apt-get install --force-yes vim 
apt-get install --force-yes virtualbox 
apt-get install --force-yes pgadmin3 
apt-get install --force-yes make 
apt-get install --force-yes doxygen 
apt-get install --force-yes unrar 
apt-get install --force-yes unetbootin 
apt-get install --force-yes rst2pdf 
apt-get install --force-yes python-setuptools
apt-get install --force-yes qbzr
apt-get install --force-yes texlive-full 
apt-get install --force-yes 
apt-get install --force-yes 
apt-get install --force-yes 
apt-get install --force-yes 
#google-chrome-stable \
#google-talkplugin \

echo -e "\n---------------------------------------------------------\n"
echo -e "\nInstalando autopep8...\n"
echo -e "\n---------------------------------------------------------\n"
pip install autopep8



echo -e "\n---------------------------------------------------------\n"
echo -e "\nInstalando Sphinx\n"
echo -e "\n---------------------------------------------------------\n"
easy_install -U Sphinx

echo -e "\n---------------------------------------------------------\n"
echo -e "\nDescargar paquetes en " $distro " bits\n"
echo -e "\n---------------------------------------------------------\n"
wget -i $distro.txt

echo -e "\n---------------------------------------------------------\n"
echo -e "\nInstalando paquetes descargados...\n"
echo -e "\n---------------------------------------------------------\n"
dpkg -i *.deb

echo -e "\n---------------------------------------------------------\n"
echo -e "\nInstalando dependencias\n" 
echo -e "\n---------------------------------------------------------\n"
apt-get install --force-yes -f



echo -e "\n---------------------------------------------------------\n"
echo -e "\nDe OpenERP - Instalando dependencias\n" 
echo -e "\n---------------------------------------------------------\n"
apt-get install --force-yes \
graphviz \
ghostscript \
postgresql-client \
python-dateutil \
python-feedparser python-gdata \
python-ldap \
python-libxslt1 \
python-lxml \
python-mako \
python-openid \
python-psycopg2 \
python-pybabel \
python-pychart \
python-pydot \
python-pyparsing \
python-reportlab \
python-simplejson \
python-tz \
python-vatnumber \
python-vobject \
python-webdav \
python-werkzeug \
python-xlwt \
python--force-yesaml \
python-imaging \
python-matplotlib

echo -e "\n---------------------------------------------------------\n"
echo -e "\nInstalando modulos python para OpenERP\n" 
echo -e "\n---------------------------------------------------------\n"
easy_install mock
easy_install unittest2
easy_install psutil 
easy_install 

apt-get install --force-yes -f

exit
#mkdir /home/$USUARIO/instancias
#mkdir /home/$USUARIO/instancias/estable
#mkdir /home/$USUARIO/instancias/estable/7.0
#mkdir /home/$USUARIO/instancias/estable/7.0/server
#mkdir /home/$USUARIO/instancias/estable/7.0/addons
#mkdir /home/$USUARIO/instancias/estable/7.0/web
#mkdir /home/$USUARIO/instancias/estable/6.1
#mkdir /home/$USUARIO/instancias/estable/6.1/server
#mkdir /home/$USUARIO/instancias/estable/6.1/addons
#mkdir /home/$USUARIO/instancias/estable/6.1/web
#mkdir /home/$USUARIO/instancias/estable/6.1/client
#mkdir /home/$USUARIO/bzr_projects
#mkdir /home/$USUARIO/bzr_projects/_VE
#mkdir /home/$USUARIO/bzr_projects/_VE/ovl_branches
#mkdir /home/$USUARIO/bzr_projects/_VE/av_branches
#mkdir /home/$USUARIO/bzr_projects/_VE/ott_branches
#mkdir /home/$USUARIO/bzr_projects/_VE/doc_branches
#mkdir /home/$USUARIO/bzr_projects/oerplib
#mkdir /home/$USUARIO/bzr_projects/openobject-doc
