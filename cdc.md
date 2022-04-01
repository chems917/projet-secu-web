### Vulnérabilité 1

| Vulnérabilité |                                   Injection SQL                                   |
|:-----:|:---------------------------------------------------------------------------------:|
| Description |    Possibilité de connexion sans idantifiant ni mot de passe avec un ' OR 1=1     | 
| Criticité |                                     Critique                                      |
| Exploitation |                        https://localhost:5000/?view=login                         |
| Remédiation | On bloque les chaines de caracteres contenant un OR en verifiant les entrées POST |


### Vulnérabilité 2

| Vulnérabilité |                                                                                          Injection SQL                                                                                           |
|:-----:|:------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------:|
| Description | En ajoutant un chiffre apres le ' OR 1=1 (1 à 9) le client non seulement il se connecte mais sans username mais en plus il possède de l'argent jusqu'à 9€ qu'il peut envoyer à quelqu'un d'autre | 
| Criticité |                                                                                             Critique                                                                                             |
| Exploitation |                                                                                https://localhost:5000/?view=login                                                                                |
| Remédiation |                                                                         Renforcer la sécurité en vérifiant tout les POST                                                                         |


### Vulnérabilité 3

| Vulnérabilité |                                                                              Exposition de données sensibles dans le cookie                                                                               |
|:-----:|:---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------:|
| Description | Certaines informations sont stockées dans le cookie comme le code pin qui n'est pas censé être révelé le client peut le récupérer et proceder à des envoies d'argents qu'il n'est pas censé pouvoir faire | 
| Criticité |                                                                                                 Critique                                                                                                  |
| Exploitation |                                                                                              cookies, jwt.io                                                                                              |
| Remédiation |                                                       Supprimer les informations qui n'ont rien à faire dans un jwt et les stocker dans le serveur                                                        |


### Vulnérabilité 4

| Vulnérabilité |                                                                 Injection XSS                                                                  |
|:-----:|:----------------------------------------------------------------------------------------------------------------------------------------------:|
| Description | Le paramètre GET error de n'importe quel endroit dans le site nous permet de faire un njection xss pour faire tout ce qu'on veut en javascript | 
| Criticité |                                                                    Critique                                                                    |
| Exploitation |                      https://localhost:5000/?view=register&error=<img src="aaaaa" onerror="alert('Image introuvable');/>                       |
| Remédiation |                                                   bloquer les entrée en javascript éxterieur                                                   |


### Vulnérabilité 5

| Vulnérabilité |                                                                        Modification d'information personnels et vol d'argent                                                                         |
|:-----:|:----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------:|
| Description | Clé de certificat jwt très facilement cassable ce qui permet au client de génerer lui même des certificats et en faisant cela il peut tout faire comme augmenter son solde faire des virement etc... | 
| Criticité |                                                                                               Critique                                                                                               |
| Exploitation |                                                                                https://localhost:5000/?view=transfer                                                                                 |
| Remédiation |                                                                                 crypter les informations importantes                                                                                 |

### Vulnérabilité 6

| Vulnérabilité |                         clickjacking                          |
|:-----:|:-------------------------------------------------------------:|
| Description | possibilité à l'utilisateur de faire des actions indésirable. | 
| Criticité |                           Critique                            |
| Exploitation |                https://localhost:5000(header).                |
| Remédiation |      mettre l'entête X-Frame option:deny dans le header       |
