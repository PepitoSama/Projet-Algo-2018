//  piecesTest.swift
import Piece
import Joueur
import Face
import Plateau
import Reserve

@testable import piecesProtocol
final class piecesTest: XCTestCase {

    // Test 1 : On teste le constructeur de Pieces
  func testInit() -> Bool {
    if let testInit = Pieces() {
        return true //le joueur a été créé
    }else {
        return false
    }
  }

    // Test 2 : On test le getter qui peut récuperer une Piece dans la structure de donnée qui sera implémentée
  func testGetPiece(nomPiece : String) -> Bool {
    let testInit = Pieces()
    if let testGetPiece = testInit.testGetPiece(nomPiece : String) {
        return true //le joueur a été créé
    }else {
        return false
    }
  }
}
