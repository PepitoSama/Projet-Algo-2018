import Foundation

//Le type Piece va contenir les deux faces
protocol PieceProtocol : Sequence {
    associatedtype Face
    
    // Initialise la piece avec 
    //      - Deux Face (la première étant la face active, la seconde la face passive)
    //      - Des coordonnées X et Y
    //      - L'id du joueur ayant la piece (
    // initPiece : Face x Face x Int x Int x Int-> Piece
    init(face1 : Face, face2 : Face, x : Int, y : Int, idJoueur : Int?)

    // getX : Piece -> Int?
    // Renvoie la coordonnée X de la Piece
    func getX() -> Int?

    // getY : Piece -> Int?
    // Renvoie la coordonnée Y de la piece
    func getY() -> Int?

    // getFaceActive : Piece -> Face
    // Renvoie la face active
    func getFaceActive() -> Face

    // getFacePassive : Piece -> Face
    // Renvoie la face passive
    func getFacePassive() -> Face

    // setFaceActive : Piece x Face -> Face
    // Modifie la face active
    func setFaceActive(face : Face) -> Face

    // setFacePassive : Piece x Face -> Face
    // Modifie la face passive
    func setFacePassive(face : Face) -> Face

    // getJoueur : Piece -> Int | Vide
    // Renvoie l'id du Joueur possedant la piece
    func getJoueur() -> Int?

}
