## Consignes exercice 1

Choisir un des extraits proposés (*Notre-Dame de Paris* de Victor Hugo ; *L’Île des esclaves* de Marivaux ; poème *Bretagne* de José-Maria de Heredia) et proposer un encodage adapté au genre littéraire du texte avec ses métadonnées. 


## Consignes exercice 2

Générer un schéma à partir de l’encodage réalisé précédemment et l’associer à son document encodé pour se familiariser à la manipulation d’Oxygen XML Editor.

Affiner le schéma : 
- en associant une liste de valeurs fermées pour l'attribut `type` des `<lg>` (poème Hérédia)
- en associant un type de données numériques pour l'attribut `n` des `<div>` (extrait de Marivaux)
- en définissant une séquence d'éléments au sein des index de lieux et de personnes (extrait de Notre-Dame de Paris)
- créer une règle schematron qui permet d'appeler :
    - d'une part les identifiants des personnages lors des tours de parole (extrait de Marivaux)
    - d'autre part les identifiants des entités nommés pour indexer le corps du texte (extrait de Notre-Dame de Paris)


## Consignes exercice 3

### Manipualtion d'XPath

Pour chaque question plusieures réponses sont possibles, essayez à chaque fois de réfléchir aux solutions les plus elliptiques. 

- Poème *Bretagne* de José-Maria de Heredia :
    - Indiquer le chemin XPath vers les vers des deux quatrains.
    - Indiquer le chemin XPath vers le premier vers du premier tercet.

- *Notre-Dame de Paris* de Victor Hugo :
    - Indiquer le chemin XPath vers la mention de la licence de la source numérique du texte.
    - Indiquer le chemin XPath vers les prises de paroles de Quasimodo dans l'extrait encodé.
    
- *L’Île des esclaves* de Marivaux :
    - Indiquer le chemin XPath vers la liste des personnages.
    - Indiquer le chemin XPath vers la première réplique de la scène 2 de l'acte I. 

### Manipulation d'XSLT

- *L’Île des esclaves* de Marivaux :
    - Créer une nouveau document XML. Ajouter l'attribut `type` avec la valeur `entrance` à la première didascalie de la scène 2 de l'acte I. Cf. [Teiguidelines](https://tei-c.org/release/doc/tei-p5-doc/fr/html/ref-stage.html) avec valeurs possibles de l'attribut `type` de l'élément `stage`.

- Poème *Bretagne* de José-Maria de Heredia :
    - Créer une nouveau document XML. Appliquer les mêmes règles pour les enfants du `<lg>` de niveau 1 (`@type="sonnet"`), copier les nœuds `<lg>`de niveau 2 (uniquement les nœuds), puis copier l'intégralité des `<l>`et le texte qui est associé.
    - Créer une nouveau document XML. Créer une règle qui permet d'associer un nombre à chaque vers, selon leur ordre d'apparition. 

- *Notre-Dame de Paris* de Victor Hugo :
    - Générer un document HTML en sortie. Créer une condition qui permet d'afficher les noms des personnes indexés en bleu dans le document de sortie, et les mentions de lieux indexés en orange. 



