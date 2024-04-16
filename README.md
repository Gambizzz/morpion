Projet création d'un MORPION

Le programme du jeu du morpion comprend huit comportements attendus, énumérés par ordre d'importance :

1 - Le jeu se joue uniquement entre deux joueurs humains.

2 - Le programme commence en demandant le prénom de chaque joueur.

3 - Le plateau de jeu comporte 9 cases désignées par leur position verticale (A, B ou C) suivie de leur position horizontale (1, 2 ou 3).

4 - Au début de chaque tour, le plateau est affiché dans le terminal, puis le joueur en cours est invité à jouer.

5 - Les joueurs jouent tour à tour jusqu'à ce qu'un joueur gagne ou que le plateau soit rempli.

6 - Le programme détecte la fin de la partie, annonce le nom du joueur gagnant ou informe d'un match nul.

7 - À la fin d'une partie, le programme propose de lancer une nouvelle partie.

8 - Un effort est attendu sur l'affichage du jeu dans le terminal, comme un affichage stylisé du plateau et un compteur de parties.


Le programme est organisé en six classes :

1 - Game : initialise et gère la partie, lance les parties, permet de jouer un tour, et détecte la fin de la partie.

2 - Player : représente les joueurs, avec un nom et un symbole ("x" ou "o").

3 - Board : représente le plateau de jeu, avec 9 instances de BoardCase, et gère les interactions avec les BoardCases.

4 - BoardCase : représente une case sur le plateau, avec une position et un contenu (" ", "x", ou "o").

5 - Application : lance le jeu en bouclant sur les parties et instancie un Game.

6 - Show : une vue qui affiche l'état du plateau de jeu.


Pour aller plus loin, chaque classe est détaillée pour clarifier son rôle et son fonctionnement.

Par exemple, BoardCase correspond à l'état d'une case.

Board gère les interactions entre les BoardCases et le Game.

Player représente les joueurs avec leur nom et symbole.
