import Foundation

//Le type Piece va contenir les deux faces
protocol PieceProtocol : Sequence {
    associatedtype Face : Face

    // initPiece : -> Piece
    init(face1 : Face, face2 : Face)

    // getCasesAccessibles : Piece x Int x Int-> [String]
    // Renvoie toute les cases accessibles à la piece  sous forme de liste de string
    // Post : La case retournée doit appartenir au plateau
    func getCasesAccessibles(xMax : Int, yMax : Int) -> [String]

    // getX : Piece -> Int
    // Renvoie la coordonnée X de la Piece
    func getX() -> Int

    // getY : Piece -> Int
    // Renvoie la coordonnée Y de la piece
    func getY() -> Int

    // getFaceActive : Piece -> Face
    // Renvoie la face active
    func getFaceActive() -> Face

    // getFacePassive : Piece -> Face
    // Renvoie la face passive
    func getFacePassive() -> Face

    // setFaceActive : Piece x Face -> Piece
    // Modifie la face active
    func setFaceActive(face : Face) -> Self

    // setFacePassive : Piece x Face -> Piece
    // Modifie la face passive
    func setFacePassive(face : Face) -> Self

    // bouger : Piece x Int x Int -> Bool
    // Evolue si passe la ligne
    // Capture si case occupée par l'ennemie
    // Renvoie True si succes
    // Renvoie false si case occupée
    func bouger(x : Int, y : Int) -> Bool

    // getJoueur : Piece -> Int
    // Renvoie l'id du Joueur possedant la piece
    func getJoueur() -> Int

}
