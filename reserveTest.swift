//
//  reserveTest.swift
//  
//
//  Created by Amjad MENOUER on 05/12/2018.
//
//

import XCTest
@testable import YokaiNo //on verra plus tard pour le nom du package

final class reserveTest: XCTestCase {
    func testInit() {
        
    }
    
    func isEmpty() -> Bool
    
    func searchPiece(piece: Piece) -> Piece
    
    func getPieceReserve(nomPiece: String) -> Piece
    
    mutating func addPiece(piece: Piece) -> Self
    
    mutating func removePiece (piece: Piece) throws -> Self
}

