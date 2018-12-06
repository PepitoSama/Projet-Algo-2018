//  piecesTest.swift

import Foundation
import Pieces
@testable import piecesProtocol

final class piecesTest: XCTestCase {

    // Test 1 : On teste le constructeur de Pieces
  func testInit() {
    if let testInit = Pieces() {
        return true //le joueur a été créé
    }else {
        return false
    }
  }


  func getPiece(nomPiece : String) -> Piece? {

  }

}
