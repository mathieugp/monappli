FROM php:7.4-fpm

# 1. Arguments définis dan docker-compose.yml
ARG user
ARG uid

# 2. Installer les dépendances du système
# RUN apt-get update && apt-get install -y \
#    nom-du-premier-paquet \
#    nom-du-second-paquet \

# 3. Vider le cache, faire le ménage
# RUN apt-get autoremove -y && apt-get clean && rm -rf /var/lib/apt/lists/*

# 4. Installer les extensions PHP
RUN docker-php-ext-install pdo_mysql

# 5. Créer l'utiliseur qui exécutera l'appli dans le conteneur
RUN useradd -G www-data,root -u $uid -d /home/$user $user
RUN mkdir -p /home/$user/.composer && \
    chown -R $user:$user /home/$user

# 6. Définir le répertoire à partir duquel travailler
WORKDIR /var/www/mona

USER $user
