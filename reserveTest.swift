//  reserveTest.swift

import Foundation
@testable import reserveProtocol

final class reserveTest: XCTestCase {
associatedtype Reserve
associatedtype Piece
    
    // Test 1 : On vérifie que la fonction init() crée bien un objet de type Réserve
    func test1Init() -> Bool {
        if let reserveTest = Reserve() {
            return true
        }
        else {
            return false
        }
    }
    
    // Test 2 : On vérifie que la fonction init() crée bien une Réserve Vide
    func test2Init() -> Bool {
        let reserveTest = Reserve()
        if reserveTest.isEmpty() {
            return true
        }
        else {
            return false
        }
    }
    
    //
    func testSearchPiece(piece: Piece) -> Piece {
        if self.isEmpty() {
            return nil
        }else{}
    }
    
    //
    func getPieceReserve(nomPiece: String) -> Piece
    
    //
    func test1AddPiece(piece: Piece) -> Bool {
        if self.isEmpty() {
            if self.addPiece(piece: Piece).isEmpty() {
                return false //cas ou la Reserve est vide alors qu'on vient de rajouter une Piece
            }
        }else {
            return true
        }
    }
    
    //
    func test2AddPiece(piece: Piece) -> Int {
        if self.addPiece(piece: Piece){
            return self.count()+1
        }else {
            return self.count()
        }
    }
    
    mutating func removePiece (piece: Piece) throws -> Self
    
    //
    func testCount() -> Bool {
        if self.isEmpty() {
            if self.count() == 0 {
                return true
            } else {
                return false
            }
        }else {
            if self.count() > 0 {
                return true
            }else {
                return false
            }
        }
    }
}

