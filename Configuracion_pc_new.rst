Configuracion PC New
====================

Problemas de audio HDMI y PCH
=============================

sudo vim /proc/asound/cards

Password root
-------------

Establecer password al usuario root

``sudo passwd``

Generar llaves ssh
------------------

ssh-keygen

Configurar git
--------------

git config --global user.email "yanina.aular@vauxoo.com"
git config --global user.name "Yanina Aular" 

Guardar historial de comandos
-----------------------------

para que en yakuake o guake permita guardar el historial automatico cada vez que abras una pestaña
se puede editar el archivo ~/.bashrc y colocar las siguiente lines:
                                                                               
export PROMPT_COMMAND="history -a"

Configurar distribución del teclado
-----------------------------------

Vamos al menu ``Region e idioma>Distribuciones>English (US, international with dead keys)``.

Para escribir la ñ es con Alt + N.
La tecla con los simbolos (" ') se usa para lo siguiente:

- Para acentuar una letra hacer click en (" ') + "la-letra"
- Para escribir doble comillas. (" ') + Shift -> luego click en Espacio
- Para escribir la comilla simple. (" ') -> luego click en Espacio
- Para escribir el apóstrofo hacer click dos veces seguidas en (" ') 

Configurar o agregar nueva región o locale
------------------------------------------

``vim /etc/locale.gen``

Descomentar el idioma que queramos

``sudo locale -a``

``sudo locale-gen``

Luego vamos al menú Idioma y Region y configuramos el idioma nuevo.

Ejecución de script de instalación y actualización
--------------------------------------------------





Bugs y soluciones con aplicaciones
==================================


Problema con el driver rltwifi Realtek
--------------------------------------

RTL8192ce
~~~~~~~~~

http://packages.debian.org/squeeze-backports/firmware-realtek
http://forums.debian.net/viewtopic.php?f=5&t=64140

vim /etc/apt/sources.list
deb http://ftp.at.debian.org/debian-backports/ squeeze-backports main non-free
apt-get update
apt-get install firmware-realtek
mkdir -p /lib/firmware/rtlwifi
mv run/udev/firmware-missing/rtlwifi\\x2frtl8192cfw.bin /lib/firmware/rtlwifi/
modprobe -r rtl18192ce; modprobe rtl18192ce; dmesg | tail -20

RTL8723be
~~~~~~~~~

The system natively includes the driver rtl8723be. We need to troubleshoot the native driver. Before we do so, please uninstall the two drivers you installed that caused kernel panics. Follow the process you followed previously for both, except instead of make and sudo make install, do sudo make uninstall.

Then do:

**gksudo gedit /etc/modprobe.d/blacklist.conf**

Use nano or kate or leafpad if you don't have the text editor gedit. Remove the line: blacklist rtl8723be. Proofread carefully, save and close the text editor.

Now do:

**sudo modprobe rtl8723be swenc=1**
**sudo iwconfig wlan0 power off**

Is your wireless working better now? If so, we'll amend a couple of files and make it permanent.

It appears that, somehow, the rtl8723be was deleted in the process of trying two replacements that failed by causing kernel panics. Let's try to reinstall the current linux-image. With a working internet connection:

**sudo apt-get install --reinstall linux-image-$(uname -r)**

After it's done, retry the steps above.

Bug, Guake no inicia a pesar de tenerlo en aplicaciones de inicio
-----------------------------------------------------------------

Destildar la opción ``Activar notificaiones emergente al inicio`` en las perferencias de Guake.

Copiar y pegar en vim
---------------------

agregar lo siguiente a tu ~/.vimrc para crear un alias entre ambos registros:

set clipboard=unnamedplus

Desencriptar home en un live
----------------------------

You can use ecryptfs-recover-private.

ecryptfs-recover-private /media/<UUID>/home/.ecryptfs/<USERNAME>/.Private
It will promt for the mount password, unlock the wrapped-passphrase 
and mount the directory in read only mode under /tmp/ with just 
single command. Use the flag -rw to mount the encrypted filesystem as read and write.

http://manpages.ubuntu.com/manpages/trusty/en/man1/ecryptfs-recover-private.1.html
