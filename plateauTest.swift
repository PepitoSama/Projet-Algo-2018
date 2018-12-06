//  plateauTest.swift

import Foundation
@testable import plateauProtocol

final class plateauTest: XCTestCase {
associatedtype Plateau
    
    // Test 1 : Si le plateau a bien été créé, on retourne vrai, sinon faux
    func testInit() -> Bool {
        var x : Int = 14
        var y : Int = 9
        var j1 : String = "Yokai"
        var j2 : String = "Mori"
        if let testPlateau = Plateau() {
            return true //le plateau a été créé
        }else {
            return false
        }
    }
    
    // Test 2 : Si une case est retournée on renvoie vraie sinon, on renvoie vide
    func testGetCase(joueur1: Joueur, joueur2: Joueur, coordX: Int, coordY: Int) -> Bool {
        var x : Int = 14
        var y : Int = 9
        var j1 : String = "Yokai"
        var j2 : String = "Mori"
        let testPlateau = Plateau()
        if let testGetCase = testPlateau.getCase(joueur1: Joueur, joueur2: Joueur, coordX: Int, coordY: Int) {
            return true
        } else {
            return false
        }
    }
    
    // Test 3 : Si un booleen est bien renvoyé, on renvoie vrai, sinon on renvoie faux
    func testValidFromPosition(joueurActif: Joueur, fromX: Int, fromY: Int) -> Bool {
        var x : Int = 14
        var y : Int = 9
        var j1 : String = "Yokai"
        var j2 : String = "Mori"
        let testPlateau = Plateau()
        if let testValidFromPosition = testPlateau.validFromPosition(joueurActif: Joueur, fromX: Int, fromY: Int) {
            return true
        } else {
            return false
        }
    }
    
    // Test 4 : Si un booleen est bien renvoyé par la fonction validToPosition, on renvoie vrai, sinon on renvoie faux
    func testValidToPosition(fromX: Int, fromY: Int, toX: Int, toY: Int) -> Bool {
        var x : Int = 14
        var y : Int = 9
        var j1 : String = "Yokai"
        var j2 : String = "Mori"
        let testPlateau = Plateau()
        if let testValidToPosition = testPlateau.validToPosition(fromX: Int, fromY: Int, toX: Int, toY: Int) {
            return true
        } else {
            return false
        }
    }
    
    // Test 5 : Si une pièce est renvoyé par la fonction getPieceFromPosition, on renvoie vrai, sinon on renvoie faux
    func testGetPieceFromPosition(coordX: Int, coordY: Int) -> Bool {
        var x : Int = 14
        var y : Int = 9
        var j1 : String = "Yokai"
        var j2 : String = "Mori"
        let testPlateau = Plateau()
        if let testGetPieceFromPosition = testPlateau.testGetPieceFromPosition(coordX: Int, coordY: Int) {
            return true
        } else {
            return false
        }
    }
    
    // Test 6 : Si un joueur est renvoyé par la fonction getJoueurActif, on renvoie vrai, sinon on renvoie faux
    func testGetJoueurActif() -> Bool {
        var x : Int = 14
        var y : Int = 9
        var j1 : String = "Yokai"
        var j2 : String = "Mori"
        let testPlateau = Plateau()
        do {
            try if testPlateau.testGetJoueurActif()==nil {
                return false
            }
        } catch fatalError {
            print("Cette fonction ne peut pas renvoyer un élément vide")
            return true
        }
    }
    
    // Test 7 : Si un joueur est renvoyé par la fonction getJoueurPassif, on renvoie vrai, sinon on renvoie faux
    func testGetJoueurPassif() -> Bool {
        var x : Int = 14
        var y : Int = 9
        var j1 : String = "Yokai"
        var j2 : String = "Mori"
        let testPlateau = Plateau()
        do {
            try if testPlateau.testGetJoueurPassif()==nil {
                return false
            }
        } catch fatalError {
            print("Cette fonction ne peut pas renvoyer un élément vide")
            return true
        }
    }
    
    // Test 8 :
    func testRotateJoueurs() -> Bool {
        var x : Int = 14
        var y : Int = 9
        var j1 : String = "Yokai"
        var j2 : String = "Mori"
        let testPlateau = Plateau()
        let testA = testPlateau.getJoueurActif()
        let testP = testPlateau.getJoueurActif()
        if let testRotateJoueurs = testPlateau.rotateJoueurs() {
            if
        }
    }
    
    // Test 9 :
    func testCapturer(piece: Piece) -> Bool {
        var x : Int = 14
        var y : Int = 9
        var j1 : String = "Yokai"
        var j2 : String = "Mori"
        let testPlateau = Plateau()
    }
    
    // Test 10 : 
    func testAPerdu() -> Bool {
        var x : Int = 14
        var y : Int = 9
        var j1 : String = "Yokai"
        var j2 : String = "Mori"
        let testPlateau = Plateau(x: Int, y: Int, j1: String, j2: String)
    }
}



