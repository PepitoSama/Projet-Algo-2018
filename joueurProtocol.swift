import Foundation


//Le type joueur va contenir le nom du joueur ainsi que son numero
//Et un objet reserve, contentant les objet piece étant dans la reserve du joueur courant
protocol JoueurProtocol : Sequence {
    associatedtype Reserve : Reserve

// initJoueur : -> Joueur
// Creation d'un joueur :
// Un joueur à : un nom, un id, les pieces de base (accessibles via pieces)
// positionnée aux cooredonnées de base, et une réserve vide
init(name : String, id : int, pieces : Pieces)

// getName: Joueur -> String
// recupère le nom du joueur et le renvoi sous forme de String
func getName() -> String

// getReserve : Joueur -> Reserve
// Renvoie la reserve du joueur
// Pre : le joueur passé en paramètre possède une reserve
func getReserve() -> Reserve

// getId : Joueur -> Int
// renvoi l'id du joueur passé en paramètre
// Post : l'id renvoyé est soit 1, soit 2
func getId() -> Int
}
