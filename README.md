# Dotfiles y Scripts para Ubuntu 24

Este repositorio contiene mis *dotfiles* y scripts para automatizar y personalizar mi entorno en **Ubuntu 24**. Está diseñado para poder instalarse en un sistema limpio y configurar todo rápidamente.

Incluye explicaciones detalladas de cada paso, instrucciones de uso y ejemplos de comandos útiles. Todo está documentado para que cualquiera que use estos scripts pueda entender qué hace cada cosa.

---

## Contenido del repositorio

- `install.sh` / `bootstrap.sh`: script principal que automatiza la instalación y configuración.  
- `bin/`: scripts personalizados, alias y utilidades.  
- `config/`: archivos de configuración (`.bashrc`, `.vimrc`, `.gitconfig`, etc.).  
- `services/` (opcional): scripts para configurar servicios específicos como Docker o servidores.  
- `README.md`: este archivo con toda la documentación.

---

## Requisitos previos

Antes de usar los scripts, asegúrate de:

1. Tener Ubuntu 24 instalado.  
2. Tener `git` instalado para clonar el repositorio:  

   ```bash
   sudo apt update        # Actualiza la lista de paquetes
   sudo apt install git   # Instala git si no lo tienes


3. Poder ejecutar scripts (los scripts deben ser ejecutables):

   ```bash
   chmod +x install.sh    # Da permisos de ejecución al script principal
   ```
## Instalación y uso paso a paso

1. **Clonar el repositorio en tu directorio home**
   Esto descarga todos tus scripts y configuraciones:
   ```bash
   git clone https://github.com/ciprianotoor/dotfiles.git ~/dotfiles
   ```
2. **Entrar al directorio del repositorio**
   ```bash
   cd ~/dotfiles
   ```

3. **Dar permisos de ejecución al script de instalación**
   Solo si aún no tiene permisos:

   ```bash
   chmod +x install.sh
   ```

4. **Ejecutar el script principal**
   Esto instalará y configurará todo automáticamente:

   ```bash
   ./install.sh
   ```
   * Crea enlaces simbólicos (`symlinks`) de tus dotfiles hacia tu `$HOME`.
   * Instala paquetes necesarios usando `apt`, `snap`, `pip`, o el gestor correspondiente.
   * Ejecuta scripts adicionales desde `bin/` para tareas repetitivas o utilidades.
---
## Estructura de los scripts y configuración

* **`install.sh` / `bootstrap.sh`**
  * Automatiza la instalación inicial.
  * Configura enlaces simbólicos de tus archivos de configuración.
  * Instala software y dependencias.
  * Corre scripts adicionales para personalizar el entorno.

* **`bin/`**
  Contiene scripts útiles y alias personalizados, por ejemplo:

  * Limpiar cachés del sistema.
  * Hacer backups automáticos.
  * Sincronizar archivos entre máquinas.

* **`config/`**
  Contiene tus archivos de configuración para shell, editor, git, tmux, etc.
  Estos se vinculan a tu `$HOME` mediante enlaces simbólicos, evitando sobreescribir archivos originales.

* **`services/`** (opcional)
  Scripts para instalar o configurar servicios adicionales, como servidores, Docker, entornos de desarrollo o automatización de tareas.

---

## Personalización

* Puedes agregar nuevos scripts en `bin/` según tus necesidades.
* Modificar archivos de configuración en `config/` para tus preferencias.
* Editar `install.sh` para agregar nuevos pasos de instalación o configuraciones específicas.

---

## Seguridad y advertencias

* Siempre revisa el contenido de los scripts antes de ejecutarlos, especialmente si descargas actualizaciones de GitHub.
* Haz respaldo de tus archivos importantes antes de correr `install.sh` para evitar sobrescribir configuraciones importantes.
* Los scripts pueden modificar tu sistema, instalar paquetes y cambiar configuraciones.

---

## Contribuciones

Este repositorio es principalmente para uso personal, pero puedes:

* Forquearlo y adaptarlo a tu propio entorno.
* Enviar *pull requests* para mejoras o nuevas funciones.
* Abrir *issues* si encuentras problemas o errores en los scripts.

---

## Licencia

Agrega la licencia que prefieras, por ejemplo **MIT** o **GPL‑3.0**.

---

## Contacto

* GitHub: [@ciprianotoor](https://github.com/ciprianotoor)
* (Opcional) Email: [tu-email@ejemplo.com](mailto:tu-email@ejemplo.com)

---

## Resumen de comandos útiles
##  Actualizar sistema
```
sudo apt update && sudo apt upgrade -y
```
# Instalar git
```bash
sudo apt install git -y
```
# Clonar repositorio
```bash
git clone https://github.com/ciprianotoor/dotfiles.git ~/dotfiles
```
# Entrar en el directorio del repositorio
```bash
cd ~/dotfiles
```
# Dar permisos de ejecución al script principal
```bash
chmod +x install.sh
```
# Ejecutar la instalación y bootstrap completo
```bash
./install.sh
```
Cada paso está documentado para que sepas qué hace y cuándo usarlo.

---

## Notas finales

Este README incluye **todas las instrucciones, comentarios y explicaciones** para que cualquier persona pueda usar los scripts sin necesidad de consultar documentación adicional.
Se incluyen ejemplos de comandos, estructura de carpetas y recomendaciones de seguridad.

Todo está pensado para que el repositorio sea **completo, funcional y fácil de entender**.
