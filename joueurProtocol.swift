import Foundation

//Le type joueur va contenir en variable ( ou constante ) le nom du joueur ainsi que son numero
//Et un objet reserve, contentant les objet piece étant dans la reserve du joueur courant
protocol JoueurProtocol : Sequence {

// creation d'un joueur
// Un joueur à :
// un nom
// un id
// Les pieces de base (accessible via Pieces) positionnée
// Une reserve Vide
init(name : String, id : int)

// getName Joueur -> String
// recupère le nom du joueur et le renvoi sous forme de String
func getName(){} -> String

// Renvoie la reserve du joueur
// Pre : le joueur passé en paramètre possède une reserve
func getReserve() -> Reserve

// getId Joueur -> Int
// renvoi l'id du joueur passé en paramètre
func getId(joueur : Joueur) -> int
