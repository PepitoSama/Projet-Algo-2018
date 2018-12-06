//  joueurTest.swift
import Piece
import Pieces
import Plateau
import Face
import Reserve
import Foundation

@testable import joueurProtocol

final class joueurTest : XCTestCase {
    
    // Test 1 : On verifie que le constructeur crée bien un objet de type Joueur
    func testInit(name : String, id : int) -> Bool {
        if let testJoueur = Joueur(name: String, id: int) {
            return true //le joueur a été créé
        }else {
            return false
        }
    }

    // Test 2 : On vérifie que la fonction getName renvoie bien une valeur de type String
    func testGetName() -> Bool {
        let testJoueur = Joueur("Amjad", 1)
        if let testGetName = testJoueur.testGetName() {
            return true //la fonction passe le test
        }else {
            return false
        }
    }

    // Test 3 : On verifie que la fonction getReserve renvoie bien la réserve du Joueur
    func testGetReserve() -> Bool {
        let testJoueur = Joueur("Amjad", 1)
        if let testGetReserve = testJoueur.testGetReserve() {
            return true //la fonction passe le test
        }else {
            return false
        }
    }
    
    // Test 4 : On verifie que la fonction récupere bien l'id du Joueur (soit 1, soit 2)
    func testGetId() -> Bool {
        let testJoueur = Joueur("Amjad", 1)
        if let testGetId = testJoueur.testGetId() {
            return true //la fonction passe le test
        }else {
            return false
        }
    }
}
