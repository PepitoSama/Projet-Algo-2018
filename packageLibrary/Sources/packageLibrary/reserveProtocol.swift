import Foundation

  //Le type Reserve est une collection d'elements de type Piece
  //Cette collection peut être parcourue par un itérateur.
  protocol ReserveProtocol : Sequence{
  associatedtype Reserve
  associatedtype Piece
  associatedtype IteratorReserve : IteratorProtocol //where IteratorReserve.Element == String

  // initReserve : -> Reserve
  // Crée une réserve, vide au début
  // Pre : le joueur passé en paramètre ne possède pas de reserve
  init()

  // isEmpty : Reserve -> Boolean
  // Verifie si la réserve est vide
  // Pre : la reserve existe
  func isEmpty() -> Bool

  // searchPiece : Reserve x Piece -> Boolean
  // Cherche une piece dans la réserve et renvoie True si elle y est, False sinon
  // Pre : La piece passée en paramètre existe
  func searchPiece(piece: Piece) -> Bool

  // getPieceReserve : String -> Piece
  // Récupère une piece de la réserve à partir d'un nom de Piece
  func getPieceReserve(nomPiece: String) -> Piece

  //addPiece : Reserve x Piece -> Reserve
  // Ajoute une piece dans la réserve
  // Pre : La piece passée en paramètre existe
  // Pre : La réserve associée a été initialisée
  @discardableResult
  mutating func addPiece(piece: Piece) -> Self

  // removePiece : Reserve x Piece -> Reserve
  // Retire la piece de la réserve
  // Si la réserve est vide, renvoie une erreur
  // Pre : la piece existe et est contenue dans la réserve
  @discardableResult
  mutating func removePiece (piece: Piece) throws -> Self

  // count : Reserve -> Int
  // Compte le nombre de Piece dans la Réserve, si elle est vide, renvoie 0
  // Pre : Le plateau a été initialisé, ainsi que le joueur
  // Post : L'entier renvoyé correspond au nombre de Piece dans la réserve
  func count() -> Int

  // makeItReserve : Reserve -> IteratorReserve
  // crée un itérateur sur la collection dans l'ordre alphabétique des pièces présentes dans la réserve
  func makeItReserve() -> IteratorReserve

  }
