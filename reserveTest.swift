//  reserveTest.swift

import reserveProtocol
@testable import reserveProtocol

final class reserveTest: XCTestCase {
    
    // Test 1 : On vérifie que la fonction init() crée bien un objet de type Réserve
    func test1Init() -> Bool {
        var reserveTest : Reserve = new Reserve()
        if reserveTest return true
        else return false
    }
    // Test 2 : On vérifie que la fonction init() crée bien une Réserve Vide
    func test2Init() -> Bool {
        var reserveTest : Reserve = new Reserve()
        if reserveTest.isEmpty() return true
        else return false
    }
    
    func testIsEmpty() -> Bool
    
    func searchPiece(piece: Piece) -> Piece
    
    func getPieceReserve(nomPiece: String) -> Piece
    
    mutating func addPiece(piece: Piece) -> Self
    
    mutating func removePiece (piece: Piece) throws -> Self
}

