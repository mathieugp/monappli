## RESSOURCES UTILES
- [Tutoriel de Erika Heidi de Digital Ocean (en français !)](https://www.digitalocean.com/community/tutorials/how-to-install-and-set-up-laravel-with-docker-compose-on-ubuntu-20-04-fr)
- [Videotutoriel de Andrew Schmelyun](https://www.youtube.com/watch?v=I980aPL-NRM)

# Si Laravel 8. x
- [Essayer Laravel Sail](https://laravel.com/docs/8.x/sail)

# Si Laravel est votre univers
- [Essayer plutôt Laradoc](https://laradock.io)

# Si pas encore de projet Laravel 7.x
- Commenter le service artisan dans docker-compose.yml
- docker-compose up -d --build
- Déplacer temporairment tous les fichiers hors du dossier du projet
- docker-compose run --rm composer create-project --prefer-dist laravel/laravel:^7.0 .
- sudo chown -R votre_utilisateur:votre_utilisateur src
- Remettre les fichiers déplacés temporairement dans le dossier du projet

## Lancer les conteneurs + les commandes utiles
- docker-compose up -d --build
- docker-compose run --rm composer upgrade
- docker-compose run --rm composer install
-  docker-compose run --rm npm run dev
- docker-compose run --rm artisan migrate

# Exemples avec des alias dans .bash_aliases
- alias dcomp='docker-compose run --rm composer'
- alias dnpm='docker-compose run --rm npm'
- alias dart='docker-compose run --rm artisan'

# Déployer en production ?
- Configurer un nom de domaine : monappli.monsite.org
- Ajouter port 443 au service nginx dans docker-compose.yml
- Installer et configurer certbot : https://github.com/JonasAlfredsson/docker-nginx-certbot/
- Modifier fichier .env
- APP_ENV=production
- APP_DEBUG=true
# Optimisations : 
- Voir https://laravel.com/docs/7.x/deployment
- dcomp install --optimize-autoloader --no-dev
- dnpm run prod
- dart config:cache
- dart route:cache
- dart view:cache
