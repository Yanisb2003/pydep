# Utilisation de l'image de base python:3.6-alpine
FROM python:3.6-alpine

# Définition du répertoire de travail
WORKDIR /opt

# Installation du module Flask version 1.1.2
RUN pip install flask==1.1.2

# Exposition du port 8080
EXPOSE 8080

# Création des variables d'environnement pour les URL d'Odoo et pgAdmin
ENV ODOO_URL="http://192.168.163.132:8069"
ENV PGADMIN_URL="http://192.168.163.134:8080"


# Copie du code source de l'application dans le conteneur
COPY . /opt

# Commande d'exécution de l'application Flask
CMD ["python", "app.py"]
