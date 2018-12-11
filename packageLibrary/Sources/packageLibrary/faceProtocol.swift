import Foundation

  protocol FaceProtocol : Sequence {

  // initFace : -> Face
  // Initialise une face
  // h pour Haut
  // hg pour Haut Gauche ...etc
  init(nom : String, h : Bool, b : Bool, g : Bool, d : Bool, hg : Bool, hd : Bool, bg : Bool, bd : Bool)

  // getName : Face -> String
  // Renvoie le nom de la face
  func getName() -> String

  // haut : Face -> Bool
  // Renvoie true si la face peut aller en haut
  func haut() -> Bool

  // bas : Face -> Bool
  // Renvoie true si la face peut aller en bas
  func bas() -> Bool

  // gauche : Face -> Bool
  // Renvoie true si la face peut aller à gauche
  func gauche() -> Bool

  // droite : Face -> Bool
  // Renvoie true si la face peut aller à droite
  func droite() -> Bool

  // hDroite : Face -> Bool
  // Renvoie true si la face peut aller en haut à droite
  func hDroite() -> Bool

  // hGauche : -> Bool
  // Renvoie true si la face peut aller en haut à gauche
  func hGauche() -> Bool

  // bDroite : Face -> Bool
  // Renvoie true si la face peut aller en bas à droite
  func bDroite() -> Bool

  // bGauche : Face -> Bool
  // Renvoie true si la face peut aller en bas à gauche
  func bGauche() -> Bool
}
