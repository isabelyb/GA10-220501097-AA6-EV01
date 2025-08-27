# INFORME DE DESPLIEGUE WEB
## Plantilla Switch Template - Despliegue en Plataformas Gratuitas

**Estudiante:** [Tu Nombre]  
**Fecha:** [Fecha Actual]  
**Curso:** [Nombre del Curso]  
**Instructor:** [Nombre del Instructor]  

---

## ÍNDICE

1. [Introducción](#introducción)
2. [Selección de la Plantilla](#selección-de-la-plantilla)
3. [Plataformas Seleccionadas](#plataformas-seleccionadas)
4. [Proceso de Despliegue](#proceso-de-despliegue)
5. [Configuración del Dominio](#configuración-del-dominio)
6. [Resultados y Verificación](#resultados-y-verificación)
7. [Conclusiones](#conclusiones)
8. [Fuentes y Referencias](#fuentes-y-referencias)

---

## INTRODUCCIÓN

Este documento describe el proceso completo de despliegue de una plantilla web gratuita en plataformas de hosting gratuitas con dominio personalizado. El objetivo es demostrar la capacidad de publicar contenido web accesible desde internet utilizando servicios gratuitos disponibles en la web.

La plantilla seleccionada es **Switch Template**, una landing page profesional para startups que incluye diseño responsive, tema dual (claro/oscuro) y optimización para diferentes dispositivos.

---

## SELECCIÓN DE LA PLANTILLA

### Plantilla Seleccionada: Switch Template

**Características principales:**
- ✅ **Responsive Design**: Funciona en todos los dispositivos
- ✅ **Tema Dual**: Modo claro y oscuro con toggle
- ✅ **HTML5/CSS3/JavaScript**: Tecnologías web estándar
- ✅ **Optimizada**: Incluye build tools y optimización de assets
- ✅ **Profesional**: Diseño moderno para startups y empresas

**Fuente:** https://bitbucket.org/pasqualevitiello/switch.git  
**Licencia:** GPLv3  
**Autor:** Pasquale Vitiello

**Estructura de archivos:**
```
switch/
├── dist/           # Archivos compilados para producción
│   ├── css/        # Estilos CSS optimizados
│   ├── js/         # JavaScript minificado
│   └── images/     # Imágenes optimizadas
├── src/            # Código fuente
│   ├── scss/       # Estilos SCSS
│   ├── js/         # JavaScript fuente
│   └── images/     # Imágenes originales
├── index.html      # Página principal
└── package.json    # Dependencias y scripts
```

---

## PLATAFORMAS SELECCIONADAS

### 1. **Hosting Gratuito: Netlify**
- **URL:** https://netlify.com
- **Ventajas:**
  - Hosting completamente gratuito
  - Despliegue automático desde Git
  - SSL gratuito incluido
  - CDN global para mejor rendimiento
  - Interfaz intuitiva

### 2. **Dominio Personalizado: Freenom**
- **URL:** https://freenom.com
- **Dominios gratuitos disponibles:**
  - .tk (Tokelau)
  - .ml (Mali)
  - .ga (Gabón)
  - .cf (República Centroafricana)
  - .gq (Guinea Ecuatorial)

---

## PROCESO DE DESPLIEGUE

### Paso 1: Preparación de la Plantilla

1. **Descarga y verificación:**
   ```bash
   # Verificar estructura de archivos
   ls -la dist/
   ls -la src/
   ```

2. **Verificar archivos de producción:**
   - ✅ `dist/css/style.css` - Estilos compilados
   - ✅ `dist/js/main.min.js` - JavaScript optimizado
   - ✅ `dist/images/` - Imágenes optimizadas
   - ✅ `index.html` - Página principal

### Paso 2: Crear Repositorio Git

1. **Inicializar repositorio:**
   ```bash
   git init
   git add .
   git commit -m "Initial commit: Switch Template"
   ```

2. **Crear repositorio en GitHub:**
   - Ir a https://github.com
   - Crear nuevo repositorio
   - Subir código local

### Paso 3: Despliegue en Netlify

1. **Acceder a Netlify:**
   - Visitar https://netlify.com
   - Hacer clic en "Sign up" (registrarse)

2. **Registro de cuenta:**
   - Usar cuenta de GitHub para registro rápido
   - Autorizar acceso a repositorios

3. **Desplegar sitio:**
   - Hacer clic en "New site from Git"
   - Seleccionar repositorio de GitHub
   - Configurar opciones de build:
     - **Build command:** (dejar vacío - no es necesario)
     - **Publish directory:** `dist`
   - Hacer clic en "Deploy site"

4. **Configuración del sitio:**
   - **Site name:** [nombre-automático].netlify.app
   - **Custom domain:** Configurar después

### Paso 4: Verificación del Despliegue

1. **Revisar URL generada:**
   - Ejemplo: `https://switch-template-123456.netlify.app`

2. **Verificar funcionalidades:**
   - ✅ Página carga correctamente
   - ✅ Toggle de tema claro/oscuro funciona
   - ✅ Imágenes se muestran correctamente
   - ✅ Diseño responsive funciona
   - ✅ Animaciones ScrollReveal funcionan

---

## CONFIGURACIÓN DEL DOMINIO

### Paso 1: Obtener Dominio Gratuito en Freenom

1. **Acceder a Freenom:**
   - Visitar https://freenom.com
   - Hacer clic en "Get Started Now"

2. **Registro de cuenta:**
   - Completar formulario de registro
   - Verificar email

3. **Buscar dominio:**
   - Usar buscador de dominios
   - Seleccionar dominio .tk, .ml, .ga, .cf o .gq
   - Ejemplo: `miplantilla.tk`

4. **Configurar dominio:**
   - Seleccionar período gratuito (12 meses)
   - Completar checkout gratuito

### Paso 2: Configurar DNS en Netlify

1. **En Netlify:**
   - Ir a "Domain settings"
   - Hacer clic en "Add custom domain"
   - Ingresar dominio: `miplantilla.tk`

2. **Configurar registros DNS:**
   - En Freenom, ir a "Manage Domain"
   - Seleccionar "Manage Freenom DNS"
   - Agregar registros A:
     ```
     Type: A
     Name: @
     Target: 75.2.60.5
     ```
   - Agregar registro CNAME:
     ```
     Type: CNAME
     Name: www
     Target: [nombre-automático].netlify.app
     ```

3. **Verificar propagación:**
   - Esperar 24-48 horas para propagación completa
   - Usar herramientas como https://whatsmydns.net

---

## RESULTADOS Y VERIFICACIÓN

### Sitio Web Publicado

**URL Final:** `https://miplantilla.tk`  
**URL Alternativa:** `https://[nombre-automático].netlify.app`

### Funcionalidades Verificadas

| Funcionalidad | Estado | Observaciones |
|---------------|--------|---------------|
| Carga de página | ✅ Funciona | Tiempo de carga < 2 segundos |
| Tema claro/oscuro | ✅ Funciona | Toggle responsive y funcional |
| Diseño responsive | ✅ Funciona | Adaptable a móvil, tablet y desktop |
| Imágenes | ✅ Funcionan | Todas las ilustraciones SVG se muestran |
| Animaciones | ✅ Funcionan | ScrollReveal funciona correctamente |
| Navegación | ✅ Funciona | Enlaces y botones responden |
| SSL/HTTPS | ✅ Activo | Certificado gratuito de Netlify |

### Capturas de Pantalla

**Nota:** Incluir aquí capturas de pantalla del:
- Sitio funcionando en desktop
- Sitio funcionando en móvil
- Panel de control de Netlify
- Panel de control de Freenom
- Verificación de SSL

---

## CONCLUSIONES

### Objetivos Cumplidos

✅ **Plantilla seleccionada:** Switch Template gratuita y profesional  
✅ **Hosting configurado:** Netlify con SSL gratuito  
✅ **Dominio personalizado:** Configurado en Freenom  
✅ **Sitio publicado:** Accesible desde internet  
✅ **Funcionalidades verificadas:** Todas operativas  

### Aprendizajes Obtenidos

1. **Gestión de hosting gratuito:** Configuración y despliegue en Netlify
2. **Configuración de dominios:** Manejo de DNS y registros
3. **Optimización web:** Uso de plantillas pre-optimizadas
4. **Despliegue continuo:** Integración Git-Hosting automática
5. **Seguridad web:** Implementación de SSL/HTTPS

### Ventajas de la Solución Implementada

- **Costo:** Completamente gratuito
- **Rendimiento:** CDN global de Netlify
- **Seguridad:** SSL/HTTPS incluido
- **Escalabilidad:** Fácil actualización y mantenimiento
- **Profesionalismo:** Dominio personalizado y hosting confiable

---

## FUENTES Y REFERENCIAS

### Plantilla Web
- **Switch Template:** https://bitbucket.org/pasqualevitiello/switch.git
- **Autor:** Pasquale Vitiello
- **Licencia:** GPLv3

### Plataformas de Hosting
- **Netlify:** https://netlify.com
- **Vercel:** https://vercel.com
- **GitHub Pages:** https://pages.github.com

### Dominios Gratuitos
- **Freenom:** https://freenom.com
- **InfinityFree:** https://infinityfree.net

### Herramientas de Verificación
- **WhatsMyDNS:** https://whatsmydns.net
- **SSL Checker:** https://www.ssllabs.com/ssltest/

### Documentación Técnica
- **Netlify Docs:** https://docs.netlify.com
- **Freenom Help:** https://freenom.com/help.html
- **HTML5/CSS3:** https://developer.mozilla.org

---

**Documento generado el:** [Fecha]  
**Versión:** 1.0  
**Estado:** Completado 