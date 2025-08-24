# install_docker-on-debian
# 🚀 Installation de Docker & Docker Compose sur Debian 12

Ce dépôt contient un script Bash simple et automatisé pour installer :
**Docker** et **Docker Compose** sur Debian 12.
# ⚙️  Ce que fait le script
1 Met à jour le système
2 Installe les dépendances nécessaires
3 Ajoute la clé GPG officielle de Docker
4 Configure le dépôt Docker
5 Installe :
        docker-ce
        docker-ce-cli
        containerd.io
        docker-buildx-plugin
        docker-compose-plugin
        Affiche les versions installées
        Ajoute l’utilisateur au groupe docker
---

## 📋 Prérequis
- Debian 12 (Bookworm)
- Un utilisateur avec droits `sudo`
- Connexion Internet

---

## 📥 Téléchargement du script
```bash
wget https://raw.githubusercontent.com/install_docker/install_docker.sh

---

## 🚀 ▶️  Utilisation
```bash
# 1. Rendre le script exécutable
chmod +x install_docker.sh

# 2. Lancer le script (faire sous su(admin) ou sudo )
sudo ./install_docker.sh


# 🔄 Utiliser Docker sans sudo
# Après l’installation, déconnectez-vous puis reconnectez-vous pour appliquer les droits

```bash
newgrp docker
```
# install_docker-on-debian
#
## merci à 🌐 https://linktr.ee/boubacard