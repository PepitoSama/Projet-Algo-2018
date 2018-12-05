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
init()

// getJoueur Piece -> Joueur
// récupere le joueur possédant la pièce passée en paramètre
// le renvoi
func getJoueur(joueur : Joueur){} -> int

// setJoueur Joueur x Piece -> Joueur
// attribut une piece à un joueur
// le renvoi
func setJoueur( joueur : Joueur, piece : Piece){} -> Joueur

// getJoueurActif Plateau -> Joueur
// récupère depuis un objet plateau le joueur "actif", soit le joueur jouant son tour
// le renvoi
func getJoueurActif(monPlateau : Plateau){} -> Joueur

// getName Joueur -> String
// recupère le nom du joueur passé en paramètre et le renvoi sous forme de String
func getName(joueur : Joueur){} -> String

// capturer Joueur x Piece -> Joueur
// pré : la pièce en paramètre n'appartient pas au joueur
// post : la pièce est desormais dans la reserve du joueur passé en paramètre, elle n'est plus sur le plateau
func capturer(joueur : Joueur, piece : Piece){}

// Renvoie la reserve du joueur
func getReserve() -> Reserve
