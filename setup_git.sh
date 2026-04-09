#!/bin/bash

# Force le script à s'arrêter en cas d'erreur
set -e

# Se placer dynamiquement dans le dossier où se trouve le script
cd "$(dirname "$0")"
echo "📍 Dossier actuel : $PWD"

# Configuration Git
git config user.email "vincebull@hotmail.fr"
git config user.name "vince-bull"

# Création de l'env s'il n'existe pas
if [ ! -d "my_env" ]; then
    echo "📦 Création de l'environnement virtuel..."
    python3 -m venv my_env
fi

# Activation (Utilisation du chemin complet calculé)
echo "🚀 Activation..."
source "$PWD/my_env/bin/activate"

# Vérification pour confirmation
if [ "$VIRTUAL_ENV" != "" ]; then
    echo "✅ SUCCESS: Environnement (my_env) activé !"
else
    echo "❌ ERROR: L'activation a échoué."
    exit 1
fi

# Installation (on le fait après l'activation pour être sûr)
pip install --upgrade pip
pip install langchain==0.1.11 gradio==5.23.2 transformers==4.38.2 bs4==0.0.2 requests==2.31.0 torch==2.2.1
