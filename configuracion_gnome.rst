1. Problema con el driver rltwifi Realtek
-----------------------------------------

http://packages.debian.org/squeeze-backports/firmware-realtek
http://forums.debian.net/viewtopic.php?f=5&t=64140



vim /etc/apt/sources.list
deb http://ftp.at.debian.org/debian-backports/ squeeze-backports main non-free
apt-get update
apt-get install firmware-realtek
mkdir -p /lib/firmware/rtlwifi
mv run/udev/firmware-missing/rtlwifi\\x2frtl8192cfw.bin /lib/firmware/rtlwifi/
modprobe -r rtl18192ce; modprobe rtl18192ce; dmesg | tail -20


2. Problema con guake y el historial
------------------------------------

para que en yakuake o guake permita guardar el historial automatico
cada vez que abras una pestaña se puede editar el archivo ~/.bashrc
y colocar las siguiente lines:

shopt -s histappend                                                                                 
PROMPT_COMMAND="history -a;$PROMPT_COMMAND"

3. Bug, Guake no inicia a pesar de tenerlo en aplicaciones de inicio
--------------------------------------------------------------------

Destildar la opción ``Activar notificaiones emergente al inicio`` en las perferencias de Guake.
