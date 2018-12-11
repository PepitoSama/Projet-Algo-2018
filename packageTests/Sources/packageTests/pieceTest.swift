//  pieceTest.swift
// TODO : Tout
import Foundation
@testable import yokai_no_mori

final class pieceTest: XCTestCase {

  func test1InitPiece(face1 : Face, face2 : Face) {
    let testPiece = new Piece(face1: Face, face2: Face)
    if testPiece.getFaceActive()==face1 || testPiece.getFaceActive()==face2 {
        return true
    } else{
      return false
    }//endif
  }//endfunc

  func test2InitPiece(face1 : Face, face2 : Face) {
    let testPiece = new Piece(face1: Face, face2: Face)
    if testPiece.getFacePassive()==face1 || testPiece.getFacePassive()==face2 {
        return true
    } else{
      return false
    }//endif
  }//endfunc

  func testGetCasesAccessibles(piece : Piece,casesAccessibles: [String],xMax : Int, yMax : Int) {
    XCTAssertEqual(piece.getCasesAccessibles(xMax: Int,yMax: Int),casesAccessibles)
  }//endfunc

  func testGetX(piece: Piece,x: Int) {
    XCTAssertEqual(piece.getX(),x)
  }//endfunc

  func testGetY(piece: Piece,y: Int) {
    XCTAssertEqual(piece.getY(),y)
  }//endfunc

  func testGetFaceActive(piece: Piece, faceA: Face) {
    XCTAssertEqual(piece.getFaceActive(),faceA)
  }//endfunc

  func testGetFacePassive(piece : Piece, faceP: Face) {
    XCTAssertEqual(piece.getFacePassive(),faceP)
  }//endfunc

  func testSetFaceActive(piece : Piece, facePassive : Face) {
    XCTAssertEqual(piece.getFaceActive(),piece.setFaceActive(facePassive: Face))
  }//endfunc

  func testSetFacePassive(piece : Piece, faceActive : Face) {
    XCTAssertEqual(piece.getFacePassive(),piece.setFacePassive(faceActive: Face))
  }//endfunc

  func testBouger(piece : Piece, x : Int, y : Int) {
    XCTAssertTrue(bouger(piece: Piece,x: Int,y: Int))
  }//endfunc

  func testGetJoueur(piece : Piece)-> Bool {
    if (piece.getJoueur()==1) || (piece.getJoueur()==2) {
      return true
    } else {
      return false
    }//endif
  }//endfunc
}
