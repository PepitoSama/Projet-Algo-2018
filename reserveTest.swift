//  reserveTest.swift

import Piece
import Pieces
import Joueur
import Face
import Plateau
@testable import reserveProtocol

final class reserveTest: XCTestCase {
    
    // Test 1 : On vérifie que la fonction init() crée bien un objet de type Réserve
    func testInit() -> Bool {
        if let reserveTest = Reserve() {
            return true
        }
        else {
            return false
        }
    }
    
    // Test 2 : On vérifie que la fonction init() crée bien une Réserve Vide
    func testSearchPiece(piece: Piece) -> Bool {
        let reserveTest = Reserve()
        if let reserveTest.searchPiece(piece: Piece) {
            return true
        }else{
            return false
        }
    }
    
    // Test 3 : On verifie que la fonction renvoie bien une piece | vide
    func testGetPieceReserve(nomPiece: String) -> Bool {
        let reserveTest = Reserve()
        if let testGetPieceReserve = reserveTest.testGetPieceReserve(nomPiece: String) {
            return true
        } else {
            return false
        }
    }
    
    // Test 4 : On vérifie que la piece est bien ajoutée à la réserve
    func testAddPiece(piece: Piece) -> Bool {
        let reserveTest = Reserve()
        if let testAddPiece = reserveTest.testAddPiece(piece: Piece) {
            return true
        } else {
            return false
        }
    }
    
    // Test 5 : On vérifie que la piece est bien supprimée de la réserve
    // Vu que l'on ne peut pas supprimer une piece d'une Réserve vide, le test doit nous rediriger vers une ERREUR
    func testRemovePiece (piece: Piece) throws -> Bool {
        let reserveTest = Reserve()
        do {
            try reserveTest.removePiece(piece: Piece)
            return false
        } catch errorElementDoesntExist {
            print("La Réserve est vide, la fonction ne passe pas le test, donc le test a réussi")
            return true
        }
    }
    
    // Test 6 : Verifie que la fonction passe le test, et renvoie donc bien un entier représentant le nombre de pieces dans la réserve, ou 0 s'il n'y en a pas.
    func testCount() -> Bool {
        let reserveTest = Reserve()
        if let testCount = reserveTest.testCount() {
            return true
        } else {
            return false
        }
    }
}

