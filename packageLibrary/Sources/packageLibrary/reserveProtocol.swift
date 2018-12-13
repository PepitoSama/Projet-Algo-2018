import Foundation

  //Le type Reserve est une collection d'elements de type Piece
  //Cette collection peut être parcourue par un itérateur.
  protocol ReserveProtocol : Sequence{
  associatedtype Joueur : JoueurProtocol
  associatedtype Reserve : ReserveProtocol
  associatedtype Piece : PieceProtocol
  associatedtype IteratorReserve : IteratorProtocol //where IteratorReserve.Element == String

  // initReserve : -> Reserve
  // Crée une réserve, vide au début
  init()

  // isEmpty : Reserve -> Boolean
  // Verifie si la réserve est vide
  // Pre : la reserve a été initialisée
  // Si la réserve n'existe pas : message d'ERREUR
  func isEmpty() throws -> Bool

  // searchPiece : Reserve x Piece -> Boolean
  // Cherche une piece dans la réserve et renvoie True si elle y est, False sinon
  // Pre : La piece passée en paramètre existe
  // Si ce n'est pas le cas : ERREUR
  func searchPiece(piece: Piece) throws -> Bool

  // getPieceReserve : String -> Piece
  // Récupère une piece de la réserve à partir d'un nom de Piece
  // Pre : Le nom de la piece, est le nom d'une piece existante, sinon renvoie vide
  func getPieceReserve(nomPiece: String) -> Piece?

  //addPiece : Reserve x Piece -> Reserve
  // Ajoute une piece dans la réserve
  // Pre : La piece passée en paramètre existe
  // Pre : La réserve associée a été initialisée
  // Sinon envoie une ERREUR
  @discardableResult
  mutating func addPiece(_ piece: Piece) throws -> Self

  // removePiece : Reserve x Piece -> Reserve
  // Retire la piece de la réserve
  // Si la réserve est vide, renvoie une erreur
  // Pre : la piece existe et est contenue dans la réserve
  @discardableResult
  mutating func removePiece(_ piece: Piece) throws -> Self

  // count : Reserve -> Int
  // Compte le nombre de Piece dans la Réserve, si elle est vide, renvoie 0
  // Pre : Le plateau a été initialisé, ainsi que le joueur
  // Post : L'entier renvoyé correspond au nombre de Piece dans la réserve
  // P1 : count(reserve) >= 0
  // P2 : count(removePiece(addPiece(reserve, piece),piece)) == count(reserve)
  // P3 : count(initReserve()) == 0
  func count() -> Int

  // makeItReserve : Reserve -> IteratorReserve
  // crée un itérateur sur la collection dans l'ordre alphabétique des pièces présentes dans la réserve
  func makeItReserve() -> IteratorReserve

  }
