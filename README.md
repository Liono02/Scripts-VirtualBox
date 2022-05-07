# Scripts-VirtualBox

Para la correcta ejecución de este script sin necesidad de confirmaciones por parte del usuario con comandos de administrador requiere hacer lo siguiente:

Antes de la ejecución del script

Ingresar al archivo "visudo" con el comando:

"sudo visudo"

Dentro del archivo "visudo" agregar como última línea al final lo siguiente:

nom_usuario ALL=(ALL) NOPASSWD:ALL

Sustituir el "nom_usuario" por el nombre de usuario al que se le busque dar acceso a dichos comandos

Nota: A pesar de que otorgar le permisos totales a un usuario sobre los comandos de administrador nos es de ayuda con nuestro problema no suele ser recomendable realizar dicha acción a no ser que uno esté totalmente seguro de su decisión.

Luego, ejecutar el script

bash script-tp1.sh nombre_de_usuario_que_quiera_crear

Listo! El/los usuarios que ingrese serán creados y podrá utilizarlos.
