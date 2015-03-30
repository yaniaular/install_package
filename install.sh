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

echo -e "\n---------------------------------------------------------\n"
echo -e "\n Guake...\n"
echo -e "\n---------------------------------------------------------\n"

apt-get install -f --force-yes guake 

echo -e "\n---------------------------------------------------------\n"
echo -e "\n Bazaar...\n"
echo -e "\n---------------------------------------------------------\n"

apt-get install -f --force-yes -y bzr 

echo -e "\n---------------------------------------------------------\n"
echo -e "\n Meld...\n"
echo -e "\n---------------------------------------------------------\n"

apt-get install -f --force-yes -y meld 

echo -e "\n---------------------------------------------------------\n"
echo -e "\n VLC...\n"
echo -e "\n---------------------------------------------------------\n"

apt-get install -f --force-yes -y vlc 

echo -e "\n---------------------------------------------------------\n"
echo -e "\n Geany...\n"
echo -e "\n---------------------------------------------------------\n"

apt-get install -f --force-yes -y geany 

echo -e "\n---------------------------------------------------------\n"
echo -e "\n Openssh-client...\n"
echo -e "\n---------------------------------------------------------\n"

apt-get install -f --force-yes -y openssh-client 

echo -e "\n---------------------------------------------------------\n"
echo -e "\n Texmaker...\n"
echo -e "\n---------------------------------------------------------\n"

apt-get install -f --force-yes -y texmaker 

echo -e "\n---------------------------------------------------------\n"
echo -e "\n Qbzr...\n"
echo -e "\n---------------------------------------------------------\n"

apt-get install -f --force-yes -y qbzr 

echo -e "\n---------------------------------------------------------\n"
echo -e "\n bzr-explorer...\n"
echo -e "\n---------------------------------------------------------\n"

apt-get install -f --force-yes -y bzr-explorer 

echo -e "\n---------------------------------------------------------\n"
echo -e "\n bzrtools...\n"
echo -e "\n---------------------------------------------------------\n"

apt-get install -f --force-yes -y bzrtools 

echo -e "\n---------------------------------------------------------\n"
echo -e "\n gimp...\n"
echo -e "\n---------------------------------------------------------\n"

apt-get install -f --force-yes -y gimp 

echo -e "\n---------------------------------------------------------\n"
echo -e "\n geany-plugins...\n"
echo -e "\n---------------------------------------------------------\n"

apt-get install -f --force-yes -y geany-plugins 

echo -e "\n---------------------------------------------------------\n"
echo -e "\n aptitude...\n"
echo -e "\n---------------------------------------------------------\n"

apt-get install -f --force-yes -y aptitude 

echo -e "\n---------------------------------------------------------\n"
echo -e "\n kazam...\n"
echo -e "\n---------------------------------------------------------\n"

#add-apt-repository ppa:and471/kazam-daily-stable 
#sudo apt-get update && sudo apt-get install kazam
#apt-get install -f --force-yes kazam 

#Instalar bzr
#sudo aptitude install bzr
#
#Ahora buscar el código usando el bzr
#bzr branch lp:kazam
#
#Dependencias necesarias
#sudo aptitude install libkeybinder0 libx264-98 python-keybinder python-rsvg python-xlib python-distutils-extra python-pycurl
#
#El script de configuración:
#cd kazam && python setup.py install
#
#Para poder ejecutarlo
#sudo ln -s /usr/local/share/kazam/ /usr/share/kazam
#
#Y ya que lo instalamos, lo probamos
#kazam

echo -e "\n---------------------------------------------------------\n"
echo -e "\n unetbootin...\n"
echo -e "\n---------------------------------------------------------\n"

apt-get install -f --force-yes -y unetbootin 

echo -e "\n---------------------------------------------------------\n"
echo -e "\n python-pip...\n"
echo -e "\n---------------------------------------------------------\n"

apt-get install -f --force-yes -y python-pip 

echo -e "\n---------------------------------------------------------\n"
echo -e "\n pep8...\n"
echo -e "\n---------------------------------------------------------\n"

apt-get install -f --force-yes -y pep8 

echo -e "\n---------------------------------------------------------\n"
echo -e "\n vim...\n"
echo -e "\n---------------------------------------------------------\n"

apt-get install -f --force-yes -y vim 

echo -e "\n---------------------------------------------------------\n"
echo -e "\n virtualbox...\n"
echo -e "\n---------------------------------------------------------\n"

apt-get install -f --force-yes -y virtualbox 

echo -e "\n---------------------------------------------------------\n"
echo -e "\n pgadmin3...\n"
echo -e "\n---------------------------------------------------------\n"

apt-get install -f --force-yes -y pgadmin3 

echo -e "\n---------------------------------------------------------\n"
echo -e "\n make...\n"
echo -e "\n---------------------------------------------------------\n"

apt-get install -f --force-yes -y make 

echo -e "\n---------------------------------------------------------\n"
echo -e "\n doxygen...\n"
echo -e "\n---------------------------------------------------------\n"

apt-get install -f --force-yes -y doxygen 

echo -e "\n---------------------------------------------------------\n"
echo -e "\n unrar...\n"
echo -e "\n---------------------------------------------------------\n"

apt-get install -f --force-yes -y unrar 

echo -e "\n---------------------------------------------------------\n"
echo -e "\n unetbootin...\n"
echo -e "\n---------------------------------------------------------\n"

apt-get install -f --force-yes -y unetbootin 

echo -e "\n---------------------------------------------------------\n"
echo -e "\n rst2pdf...\n"
echo -e "\n---------------------------------------------------------\n"

apt-get install -f --force-yes -y rst2pdf 

echo -e "\n---------------------------------------------------------\n"
echo -e "\n python-setuptools...\n"
echo -e "\n---------------------------------------------------------\n"

apt-get install -f --force-yes -y python-setuptools

echo -e "\n---------------------------------------------------------\n"
echo -e "\n qbzr...\n"
echo -e "\n---------------------------------------------------------\n"

apt-get install -f --force-yes -y qbzr

echo -e "\n---------------------------------------------------------\n"
echo -e "\n texlive-full...\n"
echo -e "\n---------------------------------------------------------\n"

apt-get install -f --force-yes -y texlive-full 
#apt-get install --force-yes 
#google-chrome-stable \
#google-talkplugin \
echo -e "\n---------------------------------------------------------\n"
echo -e "\n bpython...\n"
echo -e "\n---------------------------------------------------------\n"

apt-get install -f --force-yes -y bpython 

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
#wget -i $distro.txt

echo -e "\n---------------------------------------------------------\n"
echo -e "\nInstalando paquetes descargados...\n"
echo -e "\n---------------------------------------------------------\n"
#dpkg -i *.deb

echo -e "\n---------------------------------------------------------\n"
echo -e "\nInstalando dependencias\n" 
echo -e "\n---------------------------------------------------------\n"
#apt-get install --force-yes -f



echo -e "\n---------------------------------------------------------\n"
echo -e "\nDe OpenERP - Instalando dependencias\n" 
echo -e "\n---------------------------------------------------------\n"
apt-get install \
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
#easy_install 


echo -e "\n---------------------------------------------------------\n"
echo -e "\n Install gedit \n" 
echo -e "\n---------------------------------------------------------\n"
apt-get install gedit

echo -e "\n---------------------------------------------------------\n"
echo -e "\n Generate SSH KEY \n" 
echo -e "\n---------------------------------------------------------\n"
ssh-keygen

apt-get install --force-yes -f -y

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
