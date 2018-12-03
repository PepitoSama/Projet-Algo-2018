import Foundation

//Le type plateau est un quadruplet de données
//itérateur ?
protocol PlateauProtocol : Sequence{
associatedtype Iterator : IteratorProtocol where Iterator.Element == String


initPlateau : Int x Int x String x String-> Plateau
Les paramètre donnés sont la coordonnées X et Y max respectivement
Creer les joueurs avec les id 1 et 2 et les nom passé en paramère
plateau() {

}

//Renvoie le joueur actif
func getJoueurActif() -> Joueur

//Renvoie le joueur passif
func getJoueurPassif() -> Joueur

//Modifie le joueur actif
func setJoueurActif(newActif : Joueur) -> Bool

//Modifie le joueur passif
func setJoueurPassif(newPassif : Joueur) -> Bool

// Le joueur actif devient passif
// Le joueur passif devient actif
// Renvoie true en cas de reussite
// Renvoie false en cas d'echec
func rotateJoueurs() -> Bool

//getCase : Joueur x Joueur x int x int -> (Piece | Vide)
//Renvoie la piece sur la case concernée
//Renvoie Vide si il n'y a pas de pièce
func getCase(joueur1: Joueur, joueur2: Joueur, coordX: Int, coordY: Int) -> Piece


//validFromPosition : Joueur x Int x Int -> Boolean
// Renvoie True si le joueur possède une piece aux coordonnées indiquées
func validFromPosition(joueurActif: Joueur, fromX: Int, fromY: Int) -> Bool

// validToPosition : Int x Int x Int x Int -> Boolean
// Renvoie true si on peut déplacer la piece (aux coordonnées x1,y1) peut aller sur la case x2,y2
func validToPosition(fromX: Int, fromY: Int, toX: Int, toY: Int) -> Bool

// getPieceFromPosition : Int x Int -> (Piece | Vide)
// Renvoie la piece sur la case donnée en paramètre
// Renvoie Vide si aucune piece sur la position ou position inexistante
func getPieceFromPosition() -> Piece?
