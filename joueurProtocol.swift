import Foundation


protocol Joueur {


init()
//creation d'un joueur


func getJoueur(){} 

/* Piece -> Joueur 
récupère le joueur possèdant la pièce passée en paramètre.
*/

func setJoueur(){}

/* Joueur x Piece -> Joueur
attribut une piece à un joueur ???
*/

func capturer(){}

/* Joueur x Piece ->
données : joueur et piece 
pré: la pièce passée en paramètre n'appartient pas au joueur, elle passe dans la 
reserve du joueur
post : la pièce n'est plus sur le plateau
*/ 
