// Le type piece permet d'avoir acces a toute les pieces possibles

// Initialisation des pieces possibles
// Les pieces de base sont :
// 1er face : koropokkuru
// Peut se déplacer dans tout les sens
// 2eme face : la même

// 1er face : kitsune
// Peut se déplacer en diagonale
// 2eme face : la même

// 1er face : tanuki
// Peut aller : - Devant
//              - Derriere
//              - A gauche
//              - A droite
// 2eme face : la même

// 1er face : kodama
// Peut aller : devant
// 2eme face : kodama samuraï
// Peut aller : - Devant
//              - Derriere
//              - A gauche
//              - A droite
//              - En Haut a gauche
//              - En Haut a droite

import Foundation

// Le type Pieces (le s est important) va creer et stoquer toute les pieces existantes du jeu
protocol PiecesProtocol : Sequence {
    associatedtype Piece : PieceProtocol

    // initPieces : -> Pieces | Vide
    // Crée et stocke toute les pieces possibles du jeu
    // Collection vide ou non après initialisation
    // Post : 2 pieces ne peuvent avoir le meme nom
    init()

    // addNewPieces : Pieces -> Pieces
    // ajoute autant de piece que nécessaire à la collection
    // Si rien n'a été ajouté, renvoie la collection inchangée
    func addNewPieces()-> Pieces

    // changeStatePieces : Pieces -> Pieces
    // Pre : la collection est déjà créée
    // Si rien n'a été modifié, renvoie la collection inchangée
    func changeStatePieces()-> Pieces

    // getPiece : String -> Piece | Vide
    // Recupère une piece parmis celles possibles
    // Si piece n'est pas comprise dans la collection renvoie vide
    func getPiece(nomPiece : String) -> Piece?
}
