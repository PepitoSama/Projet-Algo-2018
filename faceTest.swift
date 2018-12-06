//  faceTest.swift

import Foundation
@testable import faceProtocol

final class faceTest: XCTestCase {

  func testInit() -> Face{
    var faceTest = new Face("Une face", true, false, true, false, true, false, true, false)
    return faceTest
  }

  func testGetName(face : Face) -> String {
    return face.getName();
  }

  func testHaut() -> Bool {
    var h = face.haut()
    if h == true {
      return true
    } else {
      return false
    }
  }

  func testBas() -> Bool {
    var b = face.bas()
    if b == false {
      return true
    } else {
      return false
    }
  }

  func testGauche() -> Bool {
    var g = face.gauche()
    if h == true {
      return true
    } else {
      return false
    }
  }

  func testDroite() -> Bool {
    var d = face.droite()
    if h == false {
      return true
    } else {
      return false
    }
  }

  func testHDroite() -> Bool {
    var hd = face.hDroite()
    if h == true {
      return true
    } else {
      return false
    }
  }

  func testHGauche() -> Bool {
    var hg = face.hGauche()
    if h == false {
      return true
    } else {
      return false
    }
  }

  func testBDroite() -> Bool {
    var bd = face.bDroite()
    if h == true {
      return true
    } else {
      return false
    }
  }

  func testBGauche() -> Bool {
    var bg = face.bGauche()
    if h == false {
      return true
    } else {
      return false
    }
  }
}
