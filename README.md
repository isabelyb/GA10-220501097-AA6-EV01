# 🚀 Switch Template - Despliegue Web

Este proyecto contiene la plantilla **Switch Template** lista para ser desplegada en plataformas de hosting gratuitas con dominio personalizado.

## 📋 Características

- ✅ **Plantilla HTML gratuita** - Switch Template profesional
- ✅ **Diseño responsive** - Funciona en todos los dispositivos
- ✅ **Tema dual** - Modo claro y oscuro con toggle
- ✅ **Optimizada** - CSS y JavaScript minificados
- ✅ **Lista para producción** - Archivos compilados incluidos

## 🎯 Objetivo del Proyecto

Demostrar el proceso completo de despliegue web utilizando:
- Plantilla HTML gratuita de internet
- Plataforma de hosting gratuito (Netlify)
- Dominio personalizado gratuito (Freenom)

## 📁 Estructura del Proyecto

```
switch/
├── dist/                    # Archivos de producción
│   ├── css/                # Estilos CSS optimizados
│   ├── js/                 # JavaScript minificado
│   └── images/             # Imágenes optimizadas
├── src/                     # Código fuente
│   ├── scss/               # Estilos SCSS
│   ├── js/                 # JavaScript fuente
│   └── images/             # Imágenes originales
├── index.html              # Página principal
├── deploy.sh               # Script de despliegue automático
├── netlify.toml            # Configuración para Netlify
├── INFORME_DESPLIEGUE_SWITCH_TEMPLATE.md  # Documento completo
└── README.md               # Este archivo
```

## 🚀 Despliegue Rápido

### Opción 1: Script Automático
```bash
# Hacer ejecutable el script
chmod +x deploy.sh

# Ejecutar el script
./deploy.sh
```

### Opción 2: Manual
```bash
# 1. Inicializar Git
git init
git add .
git commit -m "Initial commit: Switch Template"

# 2. Crear repositorio en GitHub y subir
git remote add origin https://github.com/TU_USUARIO/TU_REPO.git
git branch -M main
git push -u origin main
```

## 🌐 Plataformas de Despliegue

### Hosting Gratuito
- **[Netlify](https://netlify.com)** ⭐ Recomendado
- [Vercel](https://vercel.com)
- [GitHub Pages](https://pages.github.com)

### Dominios Gratuitos
- **[Freenom](https://freenom.com)** ⭐ Recomendado
  - Dominios: .tk, .ml, .ga, .cf, .gq
- [InfinityFree](https://infinityfree.net)

## 📖 Documentación Completa

Para el proceso detallado paso a paso, consulta:
**[INFORME_DESPLIEGUE_SWITCH_TEMPLATE.md](INFORME_DESPLIEGUE_SWITCH_TEMPLATE.md)**

## 🔧 Configuración de Netlify

El archivo `netlify.toml` ya está configurado con:
- Directorio de publicación: `dist`
- Headers de seguridad
- Cache optimizado
- Redirecciones configuradas

## 📱 Funcionalidades de la Plantilla

- **Hero Section** - Presentación principal del producto
- **Features Section** - Características destacadas
- **CTA Section** - Llamadas a la acción
- **Footer** - Enlaces y información de contacto
- **Toggle de Tema** - Cambio entre modo claro y oscuro
- **Animaciones** - Efectos ScrollReveal
- **Responsive** - Adaptable a todos los dispositivos

## 🎨 Personalización

La plantilla está lista para ser personalizada:
- Cambiar textos en `index.html`
- Modificar estilos en `src/scss/`
- Agregar funcionalidades en `src/js/`
- Reemplazar imágenes en `src/images/`

## 📄 Licencia

- **Switch Template**: GPLv3 - Pasquale Vitiello
- **Proyecto de Despliegue**: Libre para uso educativo

## 🤝 Contribuciones

Este proyecto es parte de un ejercicio educativo. Las contribuciones son bienvenidas para mejorar la documentación y scripts de automatización.

## 📞 Soporte

Para dudas sobre el despliegue, consulta el informe completo o revisa la documentación de las plataformas utilizadas.

---

**¡Tu sitio web estará listo en minutos! 🎉** 