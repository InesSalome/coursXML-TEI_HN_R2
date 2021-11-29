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
