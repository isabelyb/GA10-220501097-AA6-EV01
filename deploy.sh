#!/bin/bash

# Script de Despliegue Automático - Switch Template
# Este script automatiza el proceso de preparación y despliegue

echo "🚀 INICIANDO DESPLIEGUE DE SWITCH TEMPLATE"
echo "=============================================="

# Verificar que estamos en el directorio correcto
if [ ! -f "index.html" ]; then
    echo "❌ Error: No se encontró index.html"
    echo "   Asegúrate de estar en el directorio del proyecto Switch"
    exit 1
fi

echo "✅ Verificando estructura del proyecto..."

# Verificar archivos necesarios
if [ ! -d "dist" ]; then
    echo "❌ Error: No se encontró el directorio 'dist'"
    echo "   Ejecuta 'npm run build' primero si tienes Node.js instalado"
    exit 1
fi

if [ ! -d "dist/css" ] || [ ! -d "dist/js" ] || [ ! -d "dist/images" ]; then
    echo "❌ Error: Estructura de directorios 'dist' incompleta"
    exit 1
fi

echo "✅ Estructura del proyecto verificada"

# Verificar si Git está instalado
if ! command -v git &> /dev/null; then
    echo "⚠️  Git no está instalado. Instálalo para continuar:"
    echo "   sudo apt-get install git (Ubuntu/Debian)"
    echo "   brew install git (macOS)"
    exit 1
fi

echo "✅ Git detectado"

# Inicializar repositorio Git si no existe
if [ ! -d ".git" ]; then
    echo "📁 Inicializando repositorio Git..."
    git init
    git add .
    git commit -m "Initial commit: Switch Template ready for deployment"
    echo "✅ Repositorio Git inicializado"
else
    echo "✅ Repositorio Git ya existe"
fi

echo ""
echo "🎯 PASOS SIGUIENTES PARA EL DESPLIEGUE:"
echo "========================================"
echo ""
echo "1. 📤 SUBIR A GITHUB:"
echo "   - Ve a https://github.com"
echo "   - Crea un nuevo repositorio"
echo "   - Ejecuta estos comandos:"
echo "     git remote add origin https://github.com/TU_USUARIO/TU_REPO.git"
echo "     git branch -M main"
echo "     git push -u origin main"
echo ""
echo "2. 🌐 DESPLEGAR EN NETLIFY:"
echo "   - Ve a https://netlify.com"
echo "   - Regístrate con tu cuenta de GitHub"
echo "   - Haz clic en 'New site from Git'"
echo "   - Selecciona tu repositorio"
echo "   - Configura:"
echo "     * Build command: (dejar vacío)"
echo "     * Publish directory: dist"
echo "   - Haz clic en 'Deploy site'"
echo ""
echo "3. 🔗 CONFIGURAR DOMINIO:"
echo "   - Ve a https://freenom.com"
echo "   - Obtén un dominio gratuito (.tk, .ml, .ga, .cf, .gq)"
echo "   - Configura los registros DNS en Netlify"
echo ""
echo "✅ Tu plantilla Switch estará lista para el despliegue!"
echo ""
echo "📋 ARCHIVOS LISTOS PARA PRODUCCIÓN:"
echo "   - index.html (página principal)"
echo "   - dist/css/ (estilos optimizados)"
echo "   - dist/js/ (JavaScript optimizado)"
echo "   - dist/images/ (imágenes optimizadas)"
echo ""
echo "🎉 ¡Despliegue configurado exitosamente!" 