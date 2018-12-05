import Foundation

//Le type plateau est une collection qui va contenir 
//itérateur ?
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
func getJoueurActif() -> Joueur
    
// rotateJoueur : 
    
}
