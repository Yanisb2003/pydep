# Utilisation de l'image de base python:3.6-alpine
FROM python:3.6-alpine

# Définition du répertoire de travail
WORKDIR /opt

# Installation du module Flask version 1.1.2
RUN pip install flask==1.1.2

# Exposition du port 8080
EXPOSE 8080

# Copie du code source de l'apdoc

# Ajoutez ces lignes pour extraire les URL et la version du fichier releases.txt et les définir comme variables d'environnement
#RUN ODOO_URLS=$(awk '/ODOO_URL/ {print $2}' releases.txt) && \
#    PGADMIN_URL=$(awk '/PGADMIN_URL/ {print $2}' releases.txt) && \
#    VERSION=$(awk '/VERSION/ {print $2}' releases.txt) && \
#    export ODOO_URL="$ODOO_URLS" && \
#    export PGADMIN_URL="$PGADMIN_URL" && \
#    export VERSION="$VERSION"


# Définition des variables d'environnement
ENV ODOO_URL="http://192.168.163.132:8069"
ENV PGADMIN_URL="http://192.168.163.134:8080"

# Commande d'exécution de l'application Flask
CMD ["python", "app.py"]
