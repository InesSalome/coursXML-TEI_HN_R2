# L'édition numérique - Cours master Humanités numériques de Rennes 2

Les contenus de ces cours sont sous **licence CC-by 4.0**. 
Ils sont grandement inspirés des [cours d'Ariane Pinche](https://github.com/ArianePinche) dont la consultation est fortement conseillée en guise d'approfondissement. 

| Séance  | Titre|
| :---------------: | :---------------:|
| Séance 1 | Introduction à l'XML-TEI. Modéliser ses données textuelles. |
| Séance 2  | Initiation à l'édition scientifique numérique. Adapter son schéma de modélisation de données à son édition numérique. |
| Séance 3  | Interroger et transformer des données en XML-TEI. Initiation à XPath et XSLT. |

## Consignes et barèmes de l'évaluation finale (date limite de rendu : 17/01/2022)

Proposer un encodage en XML-TEI adapté à votre corpus. L'extrait choisi doit atteindre une longueur de 1500 mots environ et provenir d’une source de son choix, si possible en lien avec son mémoire de recherche. 

1. Structurer en XML-TEI votre texte en vue d’une édition, en respectant la typologie textuelle et le genre auxquels appartient votre source (/5).
2. Compléter de la manière la plus précise possible les métadonnées de votre édition, en fonction des éléments nécessaires à son établissement et à la compréhension du texte (/3).
3. Écrire une documentation adaptée à votre encodage. Pour vérifier les acquis :
	* Générer un document ODD à partir de Roma ou de oddbyexample (/2).
	* Votre ODD doit contenir au moins :
	  * Une règle contraignant l’usage d’un attribut et sa ou ses valeurs (/1) ;
	  * Une règle contraignant l’enchaînement de certains éléments (/1) ;
	  * Une règle contraignant la valeur d’un attribut ou l’usage d’un élément ou d’un attribut en fonction de son environnement (/1).
	* À partir de votre ODD, générer la documentation HTML de votre projet :
	  * Présenter en introduction votre projet et ses exploitations possibles (/4) ;
	  * Documenter le fonctionnement de votre encodage et vos choix de balises (/3).
	
Vous avez jusqu'au 17 janvier pour envoyer par mail un dossier contenant :
- Votre texte encodé dans au format XML ;
- Votre documenation (ODD) au format XML pour vérifier l'écriture de contraintes au sein du schéma ;
- Votre documentation (ODD) rédigée et transformée au format HTML ;
- Votre schéma au format RNG (généré dans un dossier `out`), schéma associé à votre texte encodé.

## Guides et tutoriels indispensables

* TEIguidelines :  http://www.tei-c.org/release/doc/tei-p5-doc/en/html/index.html

* XML Tutorial : https://www.w3schools.com/xml/default.asp

* XPath Tutorial : https://www.w3schools.com/xml/xpath_intro.asp

* XSLT Tutorial : https://www.w3schools.com/xml/xsl_intro.asp
