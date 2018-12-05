import Foundation

//Le type plateau est un type particulier qui va contenir
// Aucun itérateur ne sera utilisé pour ce type
protocol PlateauProtocol : Sequence{

// initPlateau : Int x Int x String x String-> Plateau
// Les paramètre donnés sont la coordonnées X et Y max respectivement
// Creer les joueurs avec les id 1 et 2 et les nom passé en paramère
init()

// getCase : Plateau x Joueur x Joueur x int x int -> String
// Renvoie sous forme de string la piece, si il y en a une, sur la case donnée en paramètre
// La string renvoyée seras sous cette forme :
// > Nom de la piece :
// > coordonnée X : X coordonnée y : Y
// > ooo
// > o o
// > ooo
// Affiche des o en fonction des déplacements possibles de la piece
// Affiche des x ou la piece ne peut pas se déplacer
func getCase(joueur1: Joueur, joueur2: Joueur, coordX: Int, coordY: Int) -> String

// validFromPosition : Plateau x Joueur x Int x Int -> Boolean
// Renvoie True si le joueur possède une piece aux coordonnées indiquées
func validFromPosition(joueurActif: Joueur, fromX: Int, fromY: Int) -> Bool

// validToPosition : Plateau x Int x Int x Int x Int -> Boolean
// Renvoie true si on peut déplacer la piece (aux coordonnées x1,y1) peut aller sur la case x2,y2
func validToPosition(fromX: Int, fromY: Int, toX: Int, toY: Int) -> Bool

// getPieceFromPosition : Plateau x Int x Int -> Piece
//
func getPieceFromPosition(coordX: Int, coordY: Int) -> Piece

// getJoueurActif : Plateau -> Joueur
// Renvoie le Joueur Actif
func getJoueurActif() -> Joueur

// getJoueurActif : Plateau -> Joueur
// Renvoie le Joueur Passif
func getJoueurPassif() -> Joueur

// rotateJoueurs : Plateau -> Self
// Permet de changer l'état des joueurs, échange les deux joueurs
// L'un devient actif pendant que l'autre passe en inactif
// Post : le joueur actif ne l'est plus, et le joueur qui ne l'était pas devient le joueur actif
func rotateJoueurs() -> Self

// capturer : Piece ->
// Supprime les positions X Y de la piece
// Change le joueur proprietaire (Si c'est 1 passe a 2, Si c'est 2 passe a 1)
// Place la piece dans la Reserve du dit Joueur
// post : la pièce n'est plus sur le plateau
func capturer()

// Renvoie l'id du Joueur ayant aPerdu
// Renvoie Vide si personne n'a perdu
func aPerdu() -> Int?

}
