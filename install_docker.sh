#!/bin/bash
set -e

echo "🔄 Mise à jour du système..."
sudo apt update && sudo apt upgrade -y

echo "📦 Installation des dépendances..."
sudo apt install ca-certificates curl gnupg lsb-release -y

echo "🔑 Ajout de la clé GPG Docker..."
sudo install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/debian/gpg | \
sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
sudo chmod a+r /etc/apt/keyrings/docker.gpg

echo "📝 Ajout du dépôt Docker..."
echo \
"deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] \
https://download.docker.com/linux/debian $(lsb_release -cs) stable" | \
sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

echo "⚙️ Installation de Docker et Docker Compose..."
sudo apt update
sudo apt install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -y

echo " "
echo "--------------------------------------------------------------------"
echo " "
echo "✅ Vérification des versions..."
docker --version
docker compose version
echo " "
echo "--------------------------------------------------------------------"
echo " "
echo "👤 Ajout de l'utilisateur actuel au groupe docker..."
sudo usermod -aG docker $USER
echo " "
echo "--------------------------------------------------------------------"
echo "🎯 Installation terminée !"
echo " "
echo "---------------------------------------------------------------------"
echo "ℹ️ Déconnecte-toi puis reconnecte-toi pour utiliser Docker sans sudo."
echo " "
echo "---------------------------------------------------------------------"
echo " "
echo "Reconnectez-vous pour activer Docker sans sudo."


echo "==== Tout est installé ! ===="
echo " " 
echo "  Merci à vous et bon courage dans vos projets :) "
echo " "
echo " ___________________________________________  "
echo "|                                           | "
echo "|    Money doesn't buy happiness BUT        | "
echo "|      Money fills the pot / Fridge         | "
echo "|      Full stomach, happy people :)        | "
echo "|    ---                                    | "
echo "|    L'argent ne fait pas le bonheur MAIS   | "
echo "|     L'argent remplis la marmite / Frigo   | "
echo "|       Ventre Plein, People content :)     | "
echo "|                                           | "
echo "| ========================================  | "
echo "|                                           | "
echo "|    👉 Pay-me a meal / Paye-moi un repas   | "
echo "|                                           | "
echo "|    ORANGE-MONEY / WAVE  👉 +223 7778 0369 | "
echo "|___________________________________________| "
echo "|                                           | "
echo "|           🌐 https://linktr.ee/boubacardz | "
echo "|                                           | "
echo "|___________________________________________| "
echo " "
