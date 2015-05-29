1. Carpeta www de las páginas.
2. Bookmarks

3. Guardar programas instalados:

dpkg --get-selections | grep -v deinstall > ~/packages.txt                                                                                      
easy_install --get-selections | grep -v deinstall > ~/packages.txt                                  
dpkg --get-selections > ~/packages2.txt                                                             
pip freeze > packages_easy_install.txt 

4. Lista de repositorios

http://www.debian.org/mirror/list
http://linuxappfinder.com/addrepo

Se puede configurar el archivo /etc/apt/source.list
o tambien entrar al synaptic y en settings>repositories
configurar los repositorios que se utilizarán

5. configuracion de bazaar en .bazaar:

Se pueden borrar las configuraciones de colo-ify

/openerp-server -r openerp -w openerp
--addons-path=../addons/,../web/addons/,../7.0-mail_hu-yani,../cms,../oml70 -u user_story_conf -d
mail  --xmlrpc-port=30000 --no-xmlrpcs --no-netrp

./openerp-server -c hu.cfg -u user_story_long_term -d hu

6. Password internet wifi

/etc/NetworkManager/system-connections
