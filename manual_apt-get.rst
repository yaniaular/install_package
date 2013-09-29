APT-GET(8)                                                             APT                                                             APT-GET(8)



NOMBRE
       apt-get - Herramienta de gestión de paquetes APT -- interfaz para la línea de órdenes

SINOPSIS
       apt-get [-asqdyfmubV] [-o=config_string] [-c=config_file] [-t=target_release] [-a=architecture] {update | upgrade | dselect-upgrade |
               dist-upgrade | install pkg [{=pkg_version_number | /target_release}]...  | remove pkg...  | purge pkg...  |
               source pkg [{=pkg_version_number | /target_release}]...  | build-dep pkg [{=pkg_version_number | /target_release}]...  |
               download pkg [{=pkg_version_number | /target_release}]...  | check | clean | autoclean | autoremove | {-v | --version} |
               {-h | --help}}

DESCRIPCIÓN
       apt-get es la herramienta para la gestión de paquetes desde la línea de órdenes, y se puede considerar el sistema de «bajo nivel» de otras
       herramientas de usuario que usan la biblioteca de APT. Existen varias interfaces de «alto nivel», tales como dselect(1), aptitude(8),
       synaptic(8) y wajig(1).

       A menos que se use la opción -h o --help, una de las siguientes órdenes debe estar presente.

       update
           update se usa para sincronizar el índice de paquetes desde sus fuentes. Los índices de paquetes disponibles se obtienen de los lugares
           especificados en /etc/apt/sources.list. Por ejemplo, cuando se usa un archivo de Debian, esta orden descarga y analiza los ficheros
           Packages.gz, de tal forma que la información acerca de los nuevos paquetes pasa a estar disponible. Siempre se debe realizar un update
           antes de un upgrade o un dist-upgrade. Tenga en cuenta que el indicador de progreso será incorrecto, ya que se desconoce de antemano
           el tamaño de los archivos de paquete.

       upgrade
           upgrade se usa para instalar la versión más nueva de todos los paquetes instalados en el sistema provenientes de alguna de las fuentes
           listadas en /etc/apt/sources.list. Los paquetes instalados con una nueva versión disponible se descargan y actualizan, y bajo ninguna
           circunstancia se desinstalarán paquetes, o se instalarán paquetes nuevos. Las nuevas versiones de programas instalados que no se
           puedan actualizar sin cambiar el estado de instalación de otros paquetes no se instalarán, manteniéndose la versión actual. Debe
           realizar un update antes para que apt-get sepa que hay nuevas versiones disponibles.

       dist-upgrade
           dist-upgrade, además de realizar las acciones de upgrade, trata inteligentemente los cambios de dependencias debidos a las nuevas
           versiones de paquetes.  apt-get tiene un sistema «inteligente» de resolución de conflictos, y si es necesario tratará de actualizar
           los paquetes más importantes a costa de los menos importantes. Por ello, puede que la orden dist-upgrade elimine algunos paquetes. El
           fichero /etc/apt/sources.list contiene una lista de sitios desde los que descargar los ficheros de paquetes. También puede consultar
           apt_preferences(5) si quiere invalidar este comportamiento para paquetes individuales.

       dselect-upgrade
           dselect-upgrade se usa junto al tradicional administrador de paquetes de Debian, dselect(1).  dselect-upgrade registra los cambios que
           haya hecho dselect(1) al campo Status (estado) de los paquetes disponibles y realiza las acciones necesarias para que los cambios se
           lleven a cabo (por ejemplo, borrar paquetes antiguos e instalar las nuevas versiones).

       install
           install instala o actualiza los paquetes que siguen a la palabra «install». Cada paquete es un nombre de paquete, y no el nombre
           completo del fichero del paquete (por ejemplo, en un sistema Debian GNU/Linux, el argumento sería apt-utils, y no
           apt-utils_0.9.7.9_amd64.deb). Se obtendrán e instalarán todos los paquetes necesarios por los paquetes especificados para la
           instalación. El fichero /etc/apt/sources.list se utiliza para ubicar los paquetes. Si se antepone un guión al nombre del paquete (sin
           ningún espacio) el paquete se desinstalará en vez de instalar. De forma similar, el signo de suma se puede usar para especificar que
           un paquete se debe instalar. Estas últimas características se pueden usar para invalidar las decisiones tomadas por el sistema de
           resolución de conflictos de apt-get.

           Puede seleccionar una versión especifica de un paquete poniendo a continuación del nombre del paquete un símbolo igual («=») seguido
           de la versión deseada. Esto provocará que se localice y seleccione esa versión para su instalación. Alternativamente se puede
           seleccionar una distribución específica poniendo a continuación del nombre del paquete una barra («/») seguida de la versión de la
           distribución o su nombre en el archivo de Debian (stable, testing, unstable).

           Cualquiera de estos dos métodos de selección puede instalar una versión anterior de los paquetes y se debe utilizar con precaución.

           Esto también es el objetivo a usar si quiere actualizar uno o más paquetes instalados sin actualizar todos los paquetes del sistema. A
           diferencia del objetivo de «upgrade», que instala la versión más nueva de todos los paquetes instalados, «install» instalará la
           versión más nueva sólo de los paquetes especificados. Simplemente proporcione el nombre de los paquetes que quiere actualizar, y si
           una versión más nueva está disponible ésta (y sus dependencias, como se describió anteriormente) se descargarán e instalarán.

           Por último, apt_preferences(5) permite modificar las normas de selección para paquetes individuales.

           Si ningún paquete coincide con la expresión proporcionada y la expresión contiene un «.», «?» o un «*», entonces se asume que es una
           expresión regular de acuerdo con el estándar POSIX, y se aplica a todos los nombres de paquetes de la base de datos. Cualquier
           coincidencia se instala (o desinstala). Tenga en cuenta que la comparación se hace en subcadenas, de manera que «lo.*» es válido para
           «how-lo» y para «lowest». Si este no es el comportamiento deseado, debe anclar la expresión regular con un «^» o un «$», o bien crear
           una expresión regular más específica.

       remove
           remove se comporta del mismo modo que install con la diferencia de que elimina los paquetes en vez de instalarlos. Tenga en cuenta que
           al eliminar un paquete sus ficheros de configuración permanecen en el sistema. Si un signo de suma precede al nombre del paquete (sin
           ningún espacio en blanco entre los dos), el paquete en cuestión será instalado en vez de eliminado.

       purge
           purge es idéntico a remove, con la diferencia de que los paquetes se eliminarán y purgarán (se eliminará también cualquier fichero de
           configuración).

       source
           source hace que apt-get descargue los paquetes fuente. APT examinará los paquetes disponibles para decidir qué paquete fuente
           descargará. Entonces descargará la versión más reciente del paquete fuente en el directorio actual respetando la versión
           predeterminada, que se define en la opción APT::Default-Release, la opción -t o según el paquete con la sintaxis pkg/release, si es
           posible.

           Los paquetes fuente se registran de forma separada de los paquetes binarios mediante líneas del tipo deb-src en el fichero
           sources.list(5). Esto significa que debe añadir una línea como ésta para cada repositorio del que quiera conseguir las fuentes. En
           caso contrario podría obtener una versión de fuentes distinta (demasiado antigua/reciente) o ninguna.

           Si se especifica la opción --compile el paquete se compilará en un binario «.deb» utilizando dpkg-buildpackage para la arquitectura
           definida con la opción --host-architecture. Si se especifica --download-only el paquete fuente no se desempaquetará.

           Puede obtener una versión especifica de un paquete fuente insertando un signo igual («=») seguido de la versión a descargar después
           del nombre del paquete, de forma similar al método que se usa con los paquetes binarios. Esto permite seleccionar exactamente el
           nombre y versión del paquete fuente, activando implícitamente la opción APT::Get::Only-Source.

           Tenga en cuenta que los paquetes fuente no se instalan ni registran en la base de datos de dpkg como sí lo hacen los binarios. Sólo se
           descargan al directorio actual en la forma de archivos tar de fuentes.

       build-dep
           build-dep procova que apt-get instale/elimine paquetes para intentar satisfacer las dependencias de construcción de un paquete fuente.
           Por omisión, las dependencias se satisfacen para construir el paquete de forma nativa. También se puede definir la arquitectura
           anfitrión --host-architecture.

       check
           check es una herramienta de diagnóstico, actualiza la caché de paquetes y revisa la existencia de dependencias rotas.

       download
           download descarga el paquete binario introducido al directorio actual.

       clean
           clean borra totalmente el repositorio local que contiene los ficheros de los paquetes descargados. Borra todo excepto el fichero de
           bloqueo de los directorios /var/cache/apt/archives/ y /var/cache/apt/archives/partial/. Cuando APT se usa como un método de
           dselect(1), clean se ejecuta automáticamente. Si no usa dselect es probable que desee ejecutar apt-get clean de vez en cuando para
           liberar algo de espacio en disco.

       autoclean
           Al igual que clean, autoclean borra el repositorio local de paquetes descargados. La diferencia reside en que sólo borrará aquellos
           paquetes que ya no se pueden descargar, o que son claramente inservibles. Esto permite mantener el almacén durante largos periodos de
           tiempo sin que aumente su tamaño descontroladamente. Si la opción de configuración APT::Clean-Installed está desactivada impedirá que
           se borren los paquetes instalados.

       autoremove
           autoremove desinstala paquetes que se instalaron automáticamente para satisfacer las dependencias de otros paquetes pero que ya no son
           necesarios.

       changelog
           changelog descarga un fichero de registro de cambios «changelog» de un paquete dado y lo muestra a través de sensible-pager. El nombre
           de servidor y el directorio base se define con la variable APT::Changelogs::Server (por ejemplo, packages.debian.org/changelogs[1]
           para Debian o changelogs.ubuntu.com/changelogs[2] para Ubuntu). Por omisión, muestra el fichero de registro de cambios de la versión
           instalada. Por otra parte, puede definir las mismas opciones que con la orden install.

OPCIONES
       Todas las opciones de la línea de órdenes se pueden definir mediante el fichero de configuración, las descripciones indican la opción de
       la configuración a definir. Para opciones de tipo «boolean» puede invalidar el fichero de configuración utilizando algo como -f-,--no-f,
       -f=no u otras muchas variaciones.

       --no-install-recommends
           No considera los paquetes recomendados como dependencia al instalar. Opción de configuración: APT::Install-Recommends.

       --install-suggests
           Considera los paquetes sugeridos («Suggests») como una dependencia a instalar. Opción de configuración: APT::Install-Suggests.

       -d, --download-only
           Sólo descarga los ficheros de los paquetes, no los desempaqueta ni los instala. Opción de configuración: APT::Get::Download-Only.

       -f, --fix-broken
           Intenta arreglar un sistema con dependencias actualmente rotas. Si se usa esta opción junto a «install»/«remove» se puede omitir
           cualquier paquete para permitir a APT deducir una posible solución. Si se especifican problemas, deben corregir totalmente el
           problema. La opción, a veces, se necesita cuando se ejecuta APT por primera vez, APT no permite que existan dependencias de paquetes
           rotas en un sistema. Es posible que la estructura de dependencias de un sistema esté tan deteriorada que requiera una intervención
           manual (generalmente puede ejecutar dselect(1) o dpkg --remove para desinstalar alguno de los paquetes que crean el conflicto). El uso
           de esta opción junto con -m puede producir un error en algunas situaciones. Opción de configuración: APT::Get::Fix-Broken.

       -m, --ignore-missing, --fix-missing
           Ignora paquetes faltantes. Si no se pueden descargar paquetes, o estos no superan la prueba de integridad tras la descarga (ficheros
           de paquete corruptos), se retienen y se continúa con el resto. Si se utiliza esta opción con -f puede provocar un error en algunos
           casos. Si un paquete se selecciona para su instalación (particularmente si se hace mediante la línea de órdenes) y no se puede
           descargar, se le retendrá silenciosamente. Opción de configuración: APT::Get::Fix-Missing.

       --no-download
           Deshabilita la descarga de paquetes. Si se utiliza junto --ignore-missing ofrece la mejor manera de forzar a APT a utilizar sólo los
           ficheros «.deb» descargados con anterioridad. Opción de configuración: APT::Get::Download.

       -q, --quiet
           Produce una salida adecuada para su registro, omitiendo los indicadores de progreso. Si se especifican más «q» (hasta un máximo de 2)
           se conseguirá una salida más silenciosa. También es posible usar -q=# para seleccionar el nivel de silencio, omitiendo el fichero de
           configuración. Tenga en cuenta que un nivel silencioso 2 implica -y; por ello, no se debe utilizar «-qq» sin añadir un modificador de
           acción nula como «-d», «--print-uris» o «-s» para evitar que APT realice algo que usted no espera. Opción de configuración: quiet.

       -s, --simulate, --just-print, --dry-run, --recon, --no-act
           No realiza ninguna acción, simula lo que hubiese ocurrido pero sin hacer cambios reales en el sistema. Opción de configuración:
           APT::Get::Simulate.

           Las simulaciones de ejecución realizadas por un usuario desactivan el bloqueo de forma automática (Debug::NoLocking), y si se define
           la opción APT::Get::Show-User-Simulation-Note (activa de forma predefinida) se muestra un aviso que indica que solo es una simulación.
           Las ejecuciones realizadas como usuario «root» no activan «NoLocking» o el aviso. Los administradores deben ser conscientes de sus
           acciones sin avisos de apt-get.

           Las simulaciones de ejecución muestran un conjunto de líneas, y cada una representa una acción de dpkg: configuración (Conf),
           eliminación (Remv) o desempaquetado (Inst). Los corchetes indican paquetes rotos, y corchetes vacíos indican relaciones de rotura sin
           consecuencias (poco frecuente).

       -y, --yes, --assume-yes
           Supone una respuesta afirmativa a todas las preguntas, de esta forma apt-get se ejecuta sin necesidad de intervención posterior para
           tomar decisiones.  apt-get terminará sin hacer nada de producirse una situación no deseada, como cambiar un paquete retenido, instalar
           un paquete sin autenticar o desinstalar un paquete esencial. Opción de configuración: APT::Get::Assume-Yes.

       --assume-no
           Supone «no» a todas las consultas. Opción de configuración: APT::Get::Assume-No.

       -u, --show-upgraded
           Muestra los paquetes que se van a actualizar. Opción de configuración: APT::Get::Show-Upgraded.

       -V, --verbose-versions
           Muestra las versiones completas para los paquetes actualizados e instalados. Opción de configuración: APT::Get::Show-Versions.

       -a, --host-architecture
           Esta opción controla la arquitectura para la que se construyen los paquetes mediante apt-get source --compile y cómo se satisfacen las
           dependencias cruzadas de construcción. No se define por omisión, lo que implica que la arquitectura anfitrión es la misma que la de
           construcción (definida con APT::Architecture). Opción de configuración: APT::Get::Host-Architecture

       -b, --compile, --build
           Descarga los paquetes fuente y luego los compila. Opción de configuración: APT::Get::Compile.

       --ignore-hold
           Ignora los paquetes retenidos. Esto hace que apt-get ignore toda retención impuesta a un paquete. Esto puede ser útil junto a
           dist-upgrade para invalidar un gran número de paquetes retenidos de manera no deseada. Opción de configuración: APT::Ignore-Hold.

       --no-upgrade
           No actualiza los paquetes. Cuando se usa junto a install, no-upgrade, impide que se actualicen los paquetes definidos en la línea de
           órdenes si ya están instalados. Opción de configuración: APT::Get::Upgrade.

       --only-upgrade
           No instala paquetes nuevos. Cuando se usa junto a install, only-upgrade solo actualiza los paquetes definidos en la línea de órdenes
           que ya están instalados, e ignora las órdenes de instalación de paquetes nuevos. Opción de configuración: APT::Get::Only-Upgrade.

       --force-yes
           Supone una respuesta afirmativa a todas las preguntas. Ésta es una opción peligrosa que hará que apt continúe sin preguntar incluso si
           se va a realizar algo potencialmente peligroso. No se debe usar excepto en situaciones muy especiales. ¡Utilizar force-yes puede
           destruir su sistema! Opción de configuración: APT::Get::force-yes.

       --print-uris
           Muestra los URI de los ficheros a instalar en vez de descargarlos. Cada URI contiene la dirección de dónde se obtendrá el paquete, el
           fichero de destino, su tamaño y la suma de control MD5 esperada. Tenga en cuenta que el nombre de fichero no siempre coincide con el
           nombre del fichero en el sitio remoto. Esto también funciona con las órdenes source y update. Cuando se usa con la orden update no se
           incluyen ni el resumen MD5 ni el tamaño, y es tarea del usuario descomprimir cualquier fichero comprimido. Opción de configuración:
           APT::Get::Print-URIs.

       --purge
           Utiliza «purge» (purgar) en lugar de «remove» para todo aquello que se desinstale. Un asterisco («*») aparecerá a continuación de los
           paquetes que se vayan a purgar.  remove --purge es equivalente a la orden purge. Opción de configuración: APT::Get::Purge.

       --reinstall
           Reinstala los paquetes ya instalados, incluso si son la última versión disponible del paquete. Opción de configuración:
           APT::Get::ReInstall.

       --list-cleanup
           Esta opción está activada de forma predeterminada, si quiere desactivarla utilice --no-list-cleanup. Cuando está activada apt-get
           administra automáticamente los contenidos de /var/lib/apt/lists para asegurarse de que se borran los ficheros obsoletos. La única
           razón para desactivarla es si realiza frecuentemente cambios en la lista de fuentes. Opción de configuración: APT::Get::List-Cleanup.

       -t, --target-release, --default-release
           Esta opción controla la entrada predeterminada del motor de directrices, creando un anclaje («pin») con una prioridad 990 usando la
           cadena de caracteres de la distribución especificada. Esto invalida la configuración general de /etc/apt/preferences. Aquellos
           paquetes con un anclaje específico no se verán afectados por el valor de esta opción. Resumiendo, esta opción le da control sobre la
           distribución de la que se obtienen los paquetes. Algunos ejemplos comunes pueden ser -t '2.1*' o -t unstable o -t sid. Opción de
           configuración: APT::Default-Release. Consulte también la página del manual de apt_preferences(5).

       --trivial-only
           Sólo realiza acciones consideradas «triviales». Esta opción está relacionada con --assume-yes, de modo que donde --assume-yes responde
           afirmativamente a cualquier pregunta, --trivial-only responderá negativamente. Opción de configuración: APT::Get::Trivial-Only.

       --no-remove
           Si se va a desinstalar algún paquete, apt-get terminará inmediatamente sin preguntar. Opción de configuración: APT::Get::Remove

       --auto-remove
           Si la orden es install o remove, esta opción realiza el funcionamiento de autoremove, eliminando dependencias en desuso. Opción de
           configuración: APT::Get::AutomaticRemove.

       --only-source
           Sólo tiene sentido para las órdenes source y build-dep. Indica que los nombres de paquetes fuente proporcionados no se deben tratar a
           través de la tabla de binarios. Esto significa que si se especifica esta opción, estas órdenes sólo aceptarán como argumento nombres
           de paquetes fuente, en vez de aceptar nombres de paquetes binarios, para luego buscar el nombre del paquete fuente correspondiente.
           Opción de configuración: APT::Get::Only-Source

       --diff-only, --dsc-only, --tar-only
           Descarga sólo el fichero diff, dsc o tar del archivo de fuentes. Opciones de configuración: APT::Get::Diff-Only, APT::Get::Dsc-Only y
           APT::Get::Tar-Only.

       --arch-only
           Procesa sólo las dependencias de construcción dependientes de la arquitectura. Opción de configuración: APT::Get::Arch-Only

       --allow-unauthenticated
           Ignora si los paquetes no se pueden autenticar, sin generar ningún diálogo sobre ello. Esto es útil para herramientas como pbuilder.
           Opción de configuración: APT::Get::AllowUnauthenticated.

       -h, --help
           Muestra un mensaje corto sobre el uso.

       -v, --version
           Muestra la versión del programa.

       -c, --config-file
           Fichero de configuración: Especifica el fichero de configuración a usar. El programa leerá el fichero de configuración predeterminado
           y, después, este fichero de configuración. Si necesita que ciertas opciones de configuración se definan antes que el análisis de los
           de los ficheros de configuración predeterminados, defina un fichero con la variable de entorno APT_CONFIG. Consulte apt.conf(5) para
           información sobre la sintaxis.

       -o, --option
           Define una opción de configuración: Esto definirá una opción arbitraria de configuración. La sintaxis es -o Algo::Cosa=cosa.  -o y
           --option se pueden usar varias veces para definir diferentes opciones.

FICHEROS
       /etc/apt/sources.list
           Ubicaciones de dónde conseguir los paquetes. Opción de configuración: Dir::Etc::SourceList.

       /etc/apt/sources.list.d/
           Fragmentos de fichero para las ubicaciones de dónde descargar los paquetes. Opción de configuración: Dir::Etc::SourceParts.

       /etc/apt/apt.conf
           Fichero de configuración de APT. Opción de configuración: Dir::Etc::Main.

       /etc/apt/apt.conf.d/
           Fragmentos del fichero de configuración de APT. Opción de configuración: Dir::Etc::Parts.

       /etc/apt/preferences
           Ficheros de preferencias de versión. Aquí puede especificar el anclaje ("pinning"), una preferencia para conseguir ciertos paquetes a
           partir de una fuente diferente o de una versión diferente de una distribución. Opción de configuración: Dir::Etc::Preferences.

       /etc/apt/preferences.d/
           Fragmentos de fichero para las preferencias de la versión. Opción de configuración: Dir::Etc::PreferencesParts.

       /var/cache/apt/archives/
           Área de almacenamiento para los ficheros de paquetes descargados. Opción de configuración: Dir::Cache::Archives.

       /var/cache/apt/archives/partial/
           Área de almacenamiento para los ficheros de paquetes en tránsito. Opción de configuración: Dir::Cache::Archives (se añade partialde
           forma implícita)

       /var/lib/apt/lists/
           Área de almacenamiento para la información del estado de cada fuente de paquetes especificado en sources.list(5) Opción de
           configuración: Dir::State::Lists.

       /var/lib/apt/lists/partial/
           Área de almacenamiento para la información de estado en tránsito. Elemento de configuración: Dir::State::Lists (se añade partial de
           forma implícita)

VÉASE TAMBIÉN
       apt-cache(8), apt-cdrom(8), dpkg(1), dselect(1), sources.list(5), apt.conf(5), apt-config(8), apt-secure(8), la guía de usuario de APT en
       /usr/share/doc/apt-doc/, apt_preferences(5), el Cómo de APT.

DIAGNÓSTICOS
       apt-get devuelve cero si no hay ningún error, y el valor 100 en caso de error.

BUGS
       Página de errores de APT[3]. Si quiere informar de un error en APT, consulte /usr/share/doc/debian/bug-reporting.txt o use la orden
       reportbug(1).

TRADUCCIÓN
       La traducción al español la realizaron Ismael Fanlo, Carlos Mestre, Rudy Godoy, Gustavo Saldumbide, Javier Fernández-Sanguino y Rubén
       Porras Campo entre los años 2003 y 2004. La traducción fue actualizada por Francisco Javier Cuadrado y Omar Campagne Polaino entre los
       años 2009 y 2012 .

       Tenga en cuenta que este documento puede contener secciones sin traducir. Esto es intencionado para evitar perder contenido cuando la
       traducción no está actualizada con respecto al documento original.

AUTORES
       Jason Gunthorpe

       Equipo de APT

NOTAS
        1. packages.debian.org/changelogs
           http://packages.debian.org/changelogs

        2. changelogs.ubuntu.com/changelogs
           http://changelogs.ubuntu.com/changelogs

        3. Página de errores de APT
           http://bugs.debian.org/src:apt



APT 0.9.7.9                                                       09 Junio 2012                                                        APT-GET(8)
