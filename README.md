# Projet : BEERBOARD

## Contexte de l'application

La société Shoptout a demandé aux Analystes Développeurs de la Chambre des Commerces 
et de l’Industrie de l’Indre de créer une application web pour recenser les bières 
présentes dans leur stock afin de pouvoir conseiller les clients.    
Ce beerboard permettra aussi d’afficher quelques statistiques sur les bières présentes 
dans la base de données.

## Environnement technique

### Application web
L’application web Beerboard est écrite en JAVA 11. Elle utilise le framework Spring Boot 2.6.2.

### Informations de connexion
### Lien : [Lien d'accès à la démo](http://94.247.183.122:8080/)
#### Login : zankidine.abdou
#### Mdp : zankidineabdou

### Base de données
La base de données utilisée est locale et utilise le moteur MySQL. Un dump de la base de données
est disponible dans le répertoire src\main\resources\sql.

#### Schéma de la base de données

![img.png](documentation/Bd/img.png)

## Les fonctionnalités
### Accueil - Statistiques

![img_1.png](documentation/Maquette/img_1.png) 
![img_2.png](documentation/Maquette/img_2.png)
![img_3.png](documentation/Maquette/img_3.png)
![img_4.png](documentation/Maquette/img_4.png)
![img_5.png](documentation/Maquette/img_5.png)

### Profil
![img_6.png](documentation/Maquette/img_6.png)

### Liste des brasseries
L’URL pour afficher la liste des brasseries est /breweries.
![img_7.png](documentation/Maquette/img_7.png)

### Détail d'une brasserie
L’URL pour afficher le détail est /see-brewery/{code} où {code} correspond au code 
la brasserie sélectionnée.

![img_8.png](documentation/Maquette/img_8.png)

### Formulaire d'ajout/modification d'une brasserie
![img_9.png](documentation/Maquette/img_9.png)

### Liste des bières
L’URL pour afficher la liste des bières est /beers. Le modèle de tableau utilisé 
est le même que pour les brasseries (cf. 4.1.1).

![img_10.png](documentation/Maquette/img_10.png)

### Détail d'une bièr
L’URL pour afficher le détail est /see-beer/{marque}/{version} où {marque} correspond à la marque de la bière sélectionnée et 
{version} à la version de la bière sélectionnée.e

![img.png](documentation/Maquette/img.png)

### Formulaire d'ajout/modification d'une bière
L’URL pour ajouter une bière est /add-beer.

![img_1.png](documentation/Maquette/img_1.png)

### Login

![img_2.png](documentation/Maquette/img_2.png)