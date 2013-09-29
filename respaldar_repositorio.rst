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

