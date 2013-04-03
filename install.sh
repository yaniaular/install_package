#!/bin/bash

USUARIO=yanina

echo ""
echo "---------------------------------------------------------"
echo "\nActualizando repositorios\n"
echo "---------------------------------------------------------"
echo ""

apt-get -y update

echo ""
echo "---------------------------------------------------------"
echo "Actualizar versiones repositorios..."
echo "---------------------------------------------------------"
echo ""

apt-get -y upgrade

echo ""
echo "---------------------------------------------------------"
echo "Instalando paquetes..."
echo "---------------------------------------------------------"
echo ""

apt-get install -y \
yakuake \
bzr \
meld \
vlc \
geany \
openssh-client \
texlive-full \
texmaker \
qbzr \
bzr-explorer \
bzrtools \
gimp \
geany-plugins \
aptitude \
kazam \
unetbootin \
python3-pip \
python-pip \
pep8 \
vim \
virtualbox \
pgadmin3 \
make \
doxygen \
unrar \
unetbootin \
rst2pdf

echo "---------------------------------------------------------"
echo "\nInstalando autopep8...\n"
pip install autopep8
echo "---------------------------------------------------------"



echo ""
echo "---------------------------------------------------------"
echo "Instalando Sphinx"
echo "---------------------------------------------------------"
echo ""
easy_install -U Sphinx



echo "\nInstalando dropbox...\n"
dpkg -i dropbox_1.6.0_amd64.deb
echo "\nInstalando chrome...\n"
dpkg -i google-chrome-stable_current_amd64.deb
echo "\nInstalando google talk...\n"
dpkg -i google-talkplugin_current_amd64.deb
echo "\nDescargando skype...\n"
wget http://www.skype.com/es/download-skype/skype-for-linux/downloading/?type=ubuntu64
echo "\nInstalando skype...\n"
dpkg -i skype-ubuntu-precise_4.1.0.20-1_i386.deb
echo "\nInstalando teamViewer...\n"
dpkg -i teamviewer_linux_x64.deb
echo "\nInstalando xmind...\n"
dpkg -i xmind-linux-3.3.1.201212250029_amd64.deb
apt-get install -y -f
echo "---------------------------------------------------------"



apt-get install -y \
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
python-yaml \
python-imaging \
python-matplotlib

apt-get install -y python-docutils
easy_install mock
easy_install unittest2
easy_install psutil 
easy_install 

apt-get install -y -f

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
