# Requisitos de Despliegue

## Prerrequisitos

1. **Cuenta de Azure**: Asegúrate de tener una cuenta de Azure for Students o una suscripción de Azure activa.
2. **Cuenta de GitHub**: Necesitarás una cuenta de GitHub activa para realizar el fork del repositorio y configurar el despliegue continuo.
3. **Git instalado localmente**: Verifica que Git esté instalado en tu máquina local para clonar y gestionar el repositorio.

## Pasos para el Despliegue

### Paso 1: Hacer un Fork del Repositorio

1. **Accede al Repositorio**: Ve a (https://github.com/rcuello/ac4dem1a.git).
2. **Fork del Repositorio**: Haz clic en el botón "Fork" en la esquina superior derecha para crear una copia del repositorio en tu cuenta de GitHub.
3. **Selecciona tu Cuenta**: Elige tu cuenta de GitHub como destino para el fork.

### Paso 2: Crear una Static Web App en Azure

1. **Inicia Sesión en Azure**: Accede al [Portal de Azure](https://portal.azure.com) con tus credenciales.
2. **Buscar Static Web Apps**: Utiliza la barra de búsqueda en la parte superior para encontrar y seleccionar "Static Web Apps".
3. **Crear Nueva App**: Haz clic en "Crear" para iniciar la creación de una nueva Static Web App.
4. **Completar Detalles**:
   - **Grupo de Recursos**: Selecciona `ld-pokedex-prod` o crea uno nuevo si no existe.
   - **Nombre**: Asigna un nombre único a tu aplicación, por ejemplo, `swa-pokedex-portal-prod-[ld]`.
   - **Plan de Hospedaje**: Selecciona el plan "Gratis".
   - **Región**: La aplicación se distribuirá automáticamente mediante CDN, por lo que no necesitas seleccionar una región específica.

### Paso 3: Conectar con GitHub y Configurar el Despliegue

1. **Autorización de Implementación**: Selecciona GitHub como la directiva de autorización de implementación.
2. **Vincular Cuenta de GitHub**: Conecta tu cuenta de GitHub (en este caso, `hannover77`).
3. **Configurar Ajustes de Despliegue**:
   - **Organización**: Selecciona tu nombre de usuario de GitHub.
   - **Repositorio**: Elige el repositorio `pokedex`.
   - **Rama**: Asegúrate de que la rama seleccionada sea `master`.
4. **Configuración de Compilación**:
   - **Preset de Compilación**: Selecciona "Personalizado".
   - **Ubicación de la Aplicación**: Especifica `./sistemas-distribuidos` como la ubicación de la aplicación.
   - **Ubicación de la API**: Deja este campo vacío.
   - **Ubicación del Artefacto de la Aplicación**: Especifica `dist/pokedex-angular` como la ubicación del artefacto de la aplicación.
5. **Revisar y Crear**: Revisa todos los detalles y haz clic en "Revisar + Crear", luego en "Crear" para finalizar la configuración.

### Paso 4: Verificar el Despliegue

1. **Completar Implementación**: Una vez finalizada la implementación, ve a la sección "Static Web Apps" en el Portal de Azure.
2. **Acceder a la URL**: Copia la URL generada para tu Static Web App y ábrela en tu navegador.
3. **Verificar Aplicación**: Asegúrate de que la aplicación Pokedex cargue correctamente y funcione como se espera.

### Paso 5: Revisar la Seguridad con Security Headers

1. **Acceder a Security Headers**: Ve a [SecurityHeaders.com](https://securityheaders.com/).
2. **Analizar tu Sitio**: Ingresa la URL de tu Static Web App en el campo proporcionado y haz clic en "Scan".
3. **Revisar Resultados**: Verifica los resultados del análisis y asegúrate de que tu sitio tenga configurados los encabezados de seguridad recomendados, como:
   - **Content Security Policy (CSP)**
   - **Strict-Transport-Security (HSTS)**
   - **X-Content-Type-Options**
   - **X-Frame-Options**
   - **X-XSS-Protection**
4. **Implementar Mejoras**: Si es necesario, realiza los ajustes recomendados en la configuración de tu Static Web App para mejorar la seguridad de tu aplicación.

