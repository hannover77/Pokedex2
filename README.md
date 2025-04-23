# Publicación de una Aplicación Angular en Azure Static Web Apps

Este informe describe el procedimiento llevado a cabo para desplegar una aplicación web basada en Angular en la plataforma de Microsoft Azure. Se detallan los pasos seguidos desde la creación del recurso en Azure hasta la elección de la solución de hosting, explicando las razones técnicas y estratégicas detrás de cada decisión.

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
