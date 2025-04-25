# Publicación de una Aplicación Angular en Azure Static Web Apps

Este informe describe el procedimiento llevado a cabo para desplegar una aplicación web basada en Angular en la plataforma de Microsoft Azure. Se detallan los pasos seguidos desde la creación del recurso en Azure hasta la elección de la solución de hosting, explicando las razones técnicas y estratégicas detrás de cada decisión.

##  Creación de una Cuenta en Azure for Students

Antes de proceder con la publicación de una aplicación Angular en Azure Static Web Apps, es necesario contar con una cuenta activa en Azure for Students. A continuación, se detallan los pasos para crear una cuenta en Azure for Students:

### Paso 1: Acceder al Sitio Web de Azure for Students
1. Abre tu navegador web y dirígete a la página oficial de [Azure for Students](https://azure.microsoft.com/es-es/free/students/).

### Paso 2: Iniciar el Proceso de Registro
2. Haz clic en el botón "**Comenzar gratis**" para iniciar el proceso de registro.

### Paso 3: Iniciar Sesión con una Cuenta Microsoft
3. Si ya tienes una cuenta Microsoft, inicia sesión con tus credenciales. Si no tienes una cuenta, deberás crear una nueva.

### Paso 4: Verificación de Identidad Estudiantil
4. Azure for Students requiere verificar que eres un estudiante. Para ello, deberás proporcionar información académica, como tu correo electrónico institucional (por ejemplo, un correo de tu universidad).

### Paso 5: Completar el Formulario de Registro
5. Completa el formulario con la información solicitada, incluyendo tu nombre, país de residencia, y otros datos personales.

### Paso 6: Verificación de la Cuenta
6. Una vez completado el formulario, Azure enviará un correo electrónico de verificación a la dirección proporcionada. Sigue las instrucciones en el correo para verificar tu cuenta.

### Paso 7: Acceso al Portal de Azure
7. Después de verificar tu cuenta, podrás acceder al [portal de Azure](https://portal.azure.com/) con tu cuenta de Azure for Students.

### Paso 8: Activación de la Suscripción
8. En el portal de Azure, asegúrate de que tu suscripción a Azure for Students esté activa. Puedes verificar esto en la sección de "Suscripciones" del portal.

### Paso 9: Configuración Inicial
9. Una vez activada tu suscripción, puedes comenzar a crear recursos y servicios en Azure, incluyendo Azure Static Web Apps para desplegar tu aplicación Angular.

Con estos pasos, habrás creado y activado tu cuenta en Azure for Students, y estarás listo para proceder con la publicación de tu aplicación Angular en Azure Static Web Apps.

## 1. Preparativos Iniciales

Para iniciar el proceso de publicación en la nube, se contaba con:

- Una suscripción activa en [Azure for Students](https://azure.microsoft.com/es-es/free/students/)
- Una aplicación Angular desarrollada en un entorno local
- Un repositorio en GitHub que almacenaba el código fuente del proyecto
- Archivos de distribución (`dist/pokedex-angular`) generados mediante comandos `npm`

## 2. Configuración del Recurso en Azure

### Paso 1: Acceso al Portal de Azure
Se accedió al [portal de Azure](https://portal.azure.com/) utilizando una cuenta vinculada a la suscripción "Azure for Students".

### Paso 2: Elección del Tipo de Servicio
Se seleccionó el servicio **Azure Static Web Apps**, diseñado específicamente para hospedar aplicaciones front-end estáticas construidas con frameworks como Angular, React o Vue, junto con APIs RESTful.

### Paso 3: Personalización del Recurso
Durante la configuración del recurso, se establecieron los siguientes parámetros:

| Parámetro | Valor |
|-----------|-------|
| **Nombre de la aplicación** | Pokedex-App-cps |
| **Ubicación geográfica** | Central US |
| **Fuente del código** | Repositorio GitHub (Testappweb-pokedex-cps) |
| **Directorio de salida** | `dist/pokedex-angular` |

Tras completar la configuración, se procedió a crear el recurso, lo cual se realizó con éxito.

## 3. Medidas de Seguridad

Se implementaron las siguientes medidas de seguridad:

```json
// staticwebapp.config.json
{
  "globalHeaders": {
    "Content-Security-Policy": "...",
    "X-Frame-Options": "DENY",
    "Permissions-Policy": "..."
  }
}
