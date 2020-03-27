# race2breathe.com

Race2breathe is a logistic platform linking hospital needs with local 3d printing capacities for the COVID-19 crisis.

## Roles

### Hôpital

*DEMANDE*: Un hôpital souhaite, sans perdre de temps, pouvoir commander le matériel urgent et vital dont il a besoin.

*PARCOURS*: 
- Il crée un compte qui est validé rapidement par notre équipe ou se connecte à son compte (devise).
- Il se rend sur la page "products" où il sélectionne les produits et quantités  qu'il désire pour son hôpital. (model: order)
- Un bénévole traite la commande et séléctionne les "makers" les plus proches d'après une liste de proximité (geocoder: distance hopital-maker).
- Le bénévole envoie un mail groupé / alerte SMS aux "makers" pour démarrer la production avec les fichiers STL et la quantité à fournir.
- Une fois la production effectuée, le maker la livre à l'hôpital ou chez son pharmacien.

*MODEL*:
- Hospital 1-1 User
- Hospital 1-1 Location
- Hospital 1-many Order

*ROLES*:
- CAN create order

### Makers

*DEMANDE*: Un maker souhaite contribuer à la lutte contre le COVID-19 en mettant à disposition ses capacités de production 3D.

*PARCOURS*: 
- Il crée un compte ou se connecte (devise).
- Il indique ses capacités de production (model: machine) et ses coordonées (model: location)
- Il recoit un ordre de production par email avec le fichier STL et les quantités à produire. Il valide ou refuse l'ordre. (model: order)
- Une fois la production effectuée, le maker la livre à l'hôpital ou chez son pharmacien.

*MODEL*:
- Supplier 1-1 User
- Supplier 1-1 Location
- Supplier 1-many Machine
- Supplier 1-many Order 

*ROLES*:
- CAN update order

### Medecins validateurs

*DEMANDE*: Un medecin souhaite valider la qualité des "products" qui peuvent être fabriqués et s'assurer qu'ils soient bien conçus.

*PARCOURS*: 
- Il crée un compte ou se connecte (devise) à son compte validé par notre équipe en lien avec l'ordre des medecins.
- Il voit la liste totale des designs disponibles.
- Il selectionne un design et s'assure de la validité médicale et scientifique du modèle.
- Il accepte ou refuse le modèle et écrit un commentaire justifiant sa décision.

*MODEL*:
- Medecin 1-1 User

*ROLES*:
- CAN update product

### Designers

*DEMANDE*: Un designer souhaite proposer un modèle d'équipement imprimable en 3D pour participer à la lutte contre le COVID-19.

*PARCOURS*: 
- Il crée un compte ou se connecte (devise).
- Il crée un "product" avec le nom, l'URL de son projet (github, gitlab, thingiverse, etc.) et ses caractéristiques techniques (à définir) et une image.
- Il attend la validation par un médecin validateur de son projet.
- Chaque modification des STL entraine une redemande de validation scientifique.

*MODEL*:
- Designer 1-1 User
- Designer 1-many Product

*ROLES*:
- CAN create product
- CAN update product

