# ssh-key-generator-for-powershell

This PowerShell script allows you to easily generate SSH keys on Windows for use with GitHub or other services. It automates the key generation process and provides clear instructions for usage. Secure your connections and streamline your Git experience!

Este script en PowerShell te permite generar fácilmente claves SSH en Windows para su uso con GitHub u otros servicios. Automatiza el proceso de generación de claves y proporciona instrucciones claras para su uso. ¡Asegura tus conexiones y simplifica tu experiencia con Git.


1. Clona el repositorio desde GitHub a tu máquina local utilizando el siguiente comando en la terminal de PowerShell:

  git clone https://github.com/zer0-sh/ssh-key-generator-for-powershell.git

2. Cambia al directorio recién creado:

  cd .\ssh-key-generator-for-powershell\

3. Ejecuta el script de generación de claves SSH. Puedes hacerlo con el siguiente comando:

  .\Generate-SSHKey.ps1

4. Sigue las instrucciones proporcionadas por el script para ingresar la información necesaria, como la ruta para guardar la clave y una frase de cifrado (opcional).

5. Añade la clave ssh a tu cuenta de Github en https://github.com/settings/keys

6. Comprueba la conexión

  ssh -T git@github.com
