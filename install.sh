#!/bin/bash

echo -e "\n---------------------------------------------------------\n"
echo -e "\nActualizando repositorios\n"
echo -e "\n---------------------------------------------------------\n"
apt-get -y update

echo -e "\n---------------------------------------------------------\n"
echo -e "\nActualizar versiones repositorios...\n"
echo -e "\n---------------------------------------------------------\n"
apt-get -y upgrade

echo -e "\n---------------------------------------------------------\n"
echo -e "\nBuild-essential...\n"
echo -e "\n---------------------------------------------------------\n"
apt-get install -y build-essential

echo -e "\n---------------------------------------------------------\n"
echo -e "\nInstalando paquetes...\n"
echo -e "\n---------------------------------------------------------\n"

echo -e "\n---------------------------------------------------------\n"
echo -e "\n cmake...\n"
echo -e "\n---------------------------------------------------------\n"
apt-get install -f -y cmake

echo -e "\n---------------------------------------------------------\n"
echo -e "\n okular...\n"
echo -e "\n---------------------------------------------------------\n"
apt-get install -f -y okular 

#echo -e "\n---------------------------------------------------------\n"
#echo -e "\n yakuake...\n"
#echo -e "\n---------------------------------------------------------\n"
#apt-get install -f -y yakuake 

#echo -e "\n---------------------------------------------------------\n"
#echo -e "\n ktorrent...\n"
#echo -e "\n---------------------------------------------------------\n"
#apt-get install -f -y ktorrent 

echo -e "\n---------------------------------------------------------\n"
echo -e "\n aptitude...\n"
echo -e "\n---------------------------------------------------------\n"
apt-get install -f -y aptitude 

#echo -e "\n---------------------------------------------------------\n"
#echo -e "\n Bazaar...\n"
#echo -e "\n---------------------------------------------------------\n"
#apt-get install -f -y bzr 

echo -e "\n---------------------------------------------------------\n"
echo -e "\n Meld...\n"
echo -e "\n---------------------------------------------------------\n"
apt-get install -f -y meld 

echo -e "\n---------------------------------------------------------\n"
echo -e "\n VLC...\n"
echo -e "\n---------------------------------------------------------\n"
apt-get install -f -y vlc 

echo -e "\n---------------------------------------------------------\n"
echo -e "\n Geany...\n"
echo -e "\n---------------------------------------------------------\n"
apt-get install -f -y geany 

echo -e "\n---------------------------------------------------------\n"
echo -e "\n Openssh-client...\n"
echo -e "\n---------------------------------------------------------\n"
apt-get install -f -y openssh-client 

echo -e "\n---------------------------------------------------------\n"
echo -e "\n Texmaker...\n"
echo -e "\n---------------------------------------------------------\n"
apt-get install -f -y texmaker 

#echo -e "\n---------------------------------------------------------\n"
#echo -e "\n Qbzr...\n"
#echo -e "\n---------------------------------------------------------\n"
#apt-get install -f -y qbzr 

#echo -e "\n---------------------------------------------------------\n"
#echo -e "\n bzr-explorer...\n"
#echo -e "\n---------------------------------------------------------\n"
#apt-get install -f -y bzr-explorer 
#
#echo -e "\n---------------------------------------------------------\n"
#echo -e "\n bzrtools...\n"
#echo -e "\n---------------------------------------------------------\n"
#apt-get install -f -y bzrtools 

echo -e "\n---------------------------------------------------------\n"
echo -e "\n gimp...\n"
echo -e "\n---------------------------------------------------------\n"
apt-get install -f -y gimp 

echo -e "\n---------------------------------------------------------\n"
echo -e "\n geany-plugins...\n"
echo -e "\n---------------------------------------------------------\n"
apt-get install -f -y geany-plugins 

echo -e "\n---------------------------------------------------------\n"
echo -e "\n kazam...\n"
echo -e "\n---------------------------------------------------------\n"
apt-get install -f -y kazam

echo -e "\n---------------------------------------------------------\n"
echo -e "\n unetbootin...\n"
echo -e "\n---------------------------------------------------------\n"
apt-get install -f -y unetbootin 

echo -e "\n---------------------------------------------------------\n"
echo -e "\n python3...\n"
echo -e "\n---------------------------------------------------------\n"
apt-get install -f -y python3 
apt-get install python3-pip
apt-get install node-less

echo -e "\n---------------------------------------------------------\n"
echo -e "\n python-pip...\n"
echo -e "\n---------------------------------------------------------\n"
apt-get install -f -y python-pip 

echo -e "\n---------------------------------------------------------\n"
echo -e "\n pep8...\n"
echo -e "\n---------------------------------------------------------\n"
apt-get install -f -y pep8 

echo -e "\n---------------------------------------------------------\n"
echo -e "\n pylint...\n"
echo -e "\n---------------------------------------------------------\n"
apt-get install -f -y pylint 

echo -e "\n---------------------------------------------------------\n"
echo -e "\n pyflakes...\n"
echo -e "\n---------------------------------------------------------\n"
apt-get install -f -y pyflakes 

echo -e "\n---------------------------------------------------------\n"
echo -e "\n vim...\n"
echo -e "\n---------------------------------------------------------\n"
apt-get install -f -y vim 
apt-get install -f -y vim-gtk

echo -e "\n---------------------------------------------------------\n"
echo -e "\n virtualbox...\n"
echo -e "\n---------------------------------------------------------\n"
apt-get install -f -y virtualbox 

echo -e "\n---------------------------------------------------------\n"
echo -e "\n pgadmin3...\n"
echo -e "\n---------------------------------------------------------\n"
apt-get install -f -y pgadmin3 

echo -e "\n---------------------------------------------------------\n"
echo -e "\n make...\n"
echo -e "\n---------------------------------------------------------\n"
apt-get install -f -y make 

echo -e "\n---------------------------------------------------------\n"
echo -e "\n doxygen...\n"
echo -e "\n---------------------------------------------------------\n"
apt-get install -f -y doxygen 

echo -e "\n---------------------------------------------------------\n"
echo -e "\n unrar...\n"
echo -e "\n---------------------------------------------------------\n"
apt-get install -f -y unrar 

echo -e "\n---------------------------------------------------------\n"
echo -e "\n rst2pdf...\n"
echo -e "\n---------------------------------------------------------\n"
apt-get install -f -y rst2pdf 

echo -e "\n---------------------------------------------------------\n"
echo -e "\n python-setuptools...\n"
echo -e "\n---------------------------------------------------------\n"
apt-get install -f -y python-setuptools

echo -e "\n---------------------------------------------------------\n"
echo -e "\n git...\n"
echo -e "\n---------------------------------------------------------\n"
apt-get install -f -y git

echo -e "\n---------------------------------------------------------\n"
echo -e "\n gitk \n"
echo -e "\n---------------------------------------------------------\n"
apt-get install -f -y gitk

echo -e "\n---------------------------------------------------------\n"
echo -e "\n bpython...\n"
echo -e "\n---------------------------------------------------------\n"
apt-get install -f -y bpython 

echo -e "\n---------------------------------------------------------\n"
echo -e "\n ipython...\n"
echo -e "\n---------------------------------------------------------\n"
apt-get install -f -y ipython

echo -e "\n---------------------------------------------------------\n"
echo -e "\nInstalando autopep8...\n"
echo -e "\n---------------------------------------------------------\n"
pip install autopep8

echo -e "\n---------------------------------------------------------\n"
echo -e "\nInstalando Sphinx\n"
echo -e "\n---------------------------------------------------------\n"
easy_install -U Sphinx

echo -e "\n---------------------------------------------------------\n"
echo -e "\nDe OpenERP - Instalando dependencias\n" 
echo -e "\n---------------------------------------------------------\n"
apt-get install -y \
graphviz \
ghostscript \
postgresql \
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

echo -e "\n---------------------------------------------------------\n"
echo -e "\nInstalando modulos python para OpenERP\n" 
echo -e "\n---------------------------------------------------------\n"
easy_install mock
easy_install unittest2
easy_install babel
pip install pyPdf
apt-get install python-passlib
apt-get install -y -f

echo -e "\n---------------------------------------------------------\n"
echo -e "\nLibrerías python para OpenERP 7\n"
echo -e "\n---------------------------------------------------------\n"
apt-get install -y python-dateutil
apt-get install -y python-psycopg2
apt-get install -y python-lxml
apt-get install -y python-yaml
apt-get install -y python-werkzeug
apt-get install -y python-mako
apt-get install -y python-pychart
apt-get install -y python-psutil
apt-get install -y python-recaptcha
apt-get install -y python-configglue
pip install googlemaps
pip install argparse
apt-get install wkhtmltopdf
pip install pytest-flakes

echo -e "\n---------------------------------------------------------\n"
echo -e "\n youtube-dl \n"
echo -e "\n---------------------------------------------------------\n"
apt-get install -y youtube-dl

echo -e "\n---------------------------------------------------------\n"
echo -e "\n gparted \n"
echo -e "\n---------------------------------------------------------\n"
apt-get install -y gparted

echo -e "\n---------------------------------------------------------\n"
echo -e "\n curl \n"
echo -e "\n---------------------------------------------------------\n"

apt-get install -y curl

echo -e "\n---------------------------------------------------------\n"
echo -e "\n Instalando vim.spf13.com \n"
echo -e "\n---------------------------------------------------------\n"
curl http://j.mp/spf13-vim3 -L -o - | sh
touch ~/.vimrc.local
echo colorscheme ron  >> ~/.vimrc.local

echo -e "\n---------------------------------------------------------\n"
echo -e "\n XBMC...\n"
echo -e "\n---------------------------------------------------------\n"
apt-get install -f -y python-software-properties pkg-config
apt-get install -f -y software-properties-common
add-apt-repository ppa:team-xbmc/ppa -y
apt-get -y update
apt-get -y install
apt-get install -f -y xbmc
apt-get install -f -y kodi

echo -e "\n---------------------------------------------------------\n"
echo -e "\n Dependencias de sonido...\n"
echo -e "\n---------------------------------------------------------\n"
apt-get install openjdk-8-jre
apt-get install gstreamer1.0-libav
apt-get install -y -f

echo -e "\n---------------------------------------------------------\n"
echo -e "\n Generar llave publica ssh...\n"
echo -e "\n---------------------------------------------------------\n"
ssh-keygen -t rsa

echo -e "\n---------------------------------------------------------\n"
echo -e "\n texlive-full...\n"
echo -e "\n---------------------------------------------------------\n"

apt-get install -f -y texlive-full 

sudo python-argcomplete-check-easy-install-script #activar autocompletado en python.

echo -e "\n---------------------------------------------------------\n"
echo -e "\n zsh...\n"
echo -e "\n---------------------------------------------------------\n"

apt-get install -f -y zsh 
apt-get install -f -y openssh-server 
apt-get install -f -y firefox 

sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo -e "\n---------------------------------------------------------\n"
echo -e "\n tmux...\n"
echo -e "\n---------------------------------------------------------\n"

apt-get install -f -y tmux 

echo -e "\n---------------------------------------------------------\n"
echo -e "\n Install docker...\n"
echo -e "\n---------------------------------------------------------\n"

apt-get -y -f install \
  apt-transport-https \
  ca-certificates \
  curl

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

add-apt-repository \
       "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
       $(lsb_release -cs) \
       stable"

apt-get update

apt-get -y install docker-ce

exit

#This script is part of the Python argcomplete package (https://github.com/kislyuk/argcomplete).
#It is used to check if an EASY-INSTALL-SCRIPT wrapper redirects to a script that contains the string
#"PYTHON_ARGCOMPLETE_OK". If you have enabled global completion in argcomplete, the completion hook will run it every
#time you press <TAB> in your shell.


#echo -e "\n---------------------------------------------------------\n"
#echo -e "\nDescargar paquetes en " $distro " bits\n"
#echo -e "\n---------------------------------------------------------\n"
#wget -i $distro.txt

#echo -e "\n---------------------------------------------------------\n"
#echo -e "\nInstalando paquetes descargados...\n"
#echo -e "\n---------------------------------------------------------\n"

#dpkg -i *.deb

#echo -e "\n---------------------------------------------------------\n"
#echo -e "\nInstalando dependencias\n" 
#echo -e "\n---------------------------------------------------------\n"

#apt-get install -y -f

#add-apt-repository ppa:and471/kazam-daily-stable 
#sudo apt-get update && sudo apt-get install kazam
#apt-get install -f -y kazam 

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
