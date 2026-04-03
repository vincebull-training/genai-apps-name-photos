#!/bin/bash

# Configuration Git
git config user.email "vincebull@hotmail.fr"
git config user.name "vince-bull"
echo "✅ Configuration Git appliquée."

# Création de l'environnement seulement s'il n'existe pas
if [ ! -d "my_env" ]; then
    echo "📦 Création de l'environnement virtuel..."
    python3 -m venv my_env
fi

# Activation de l'environnement
echo "🚀 Activation de my_env..."
source my_env/bin/activate

# Installation des dépendances
echo "Wait... Installation des bibliothèques..."
pip install --upgrade pip
pip install langchain==0.1.11 \
            gradio==5.23.2 \
            transformers==4.38.2 \
            bs4==0.0.2 \
            requests==2.31.0 \
            torch==2.2.1

echo "✨ Tout est prêt ! Tu es maintenant dans my_env."