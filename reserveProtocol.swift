import Foundation

//Le type Reserve est une collection d'elements de type Piece
//Cette collection peut être parcourue par un itérateur.
protocol ReserveProtocol : Sequence{
associatedtype IteratorNamePiece : IteratorProtocol where IteratorNamePiece.Element == String

// init : -> [Piece]
// Crée une réserve, vide au début
// Pre : le joueur passé en paramètre ne possède pas de reserve
init()

// searchPiece : Piece -> Boolean
// Cherche une piece dans la réserve et renvoie True si elle y est, False sinon
// Pre : La piece passée en paramètre existe
func searchPiece( piece : Piece) -> Bool

// getPieceReserve : -> Piece
// Récupère une piece de la réserve,
// Pre : La piece existe
func getPieceReserve() -> Piece

// getPiecesReserve : -> ([Piece] | Vide)
// Renvoie les piece de la reserve du joueur
func getPiecesReserve() -> [Piece]

//addPiece : Piece ->
// Ajoute une piece dans la réserve
// Pre : La piece passée en paramètre existe
mutating func addPiece(piece: Piece)

// removePiece : Piece ->
// Retire la piece de la réserve
// Pre : la piece existe et est contenue dans la réserve
mutating func removePiece (piece: Piece)

// makeItNamePiece : Reserve -> IteratorNamePiece
// crée un itérateur sur la collection dans l'ordre alphabétique des pièces

}
