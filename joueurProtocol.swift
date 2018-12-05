import Foundation

//le type joueur va contenir en variable ( ou constante ) le nom du joueur ainsi que son numero 
//et un objet reserve, contentant les objet piece étant dans la reserve du joueur courant 
protocol JoueurProtocol : Sequence {

//init() ->joueur
//crée un joueur, avec un nom, et un numéro
//pré 
//données 
init()


//getJoueur Piece -> Joueur 
//récupere le joueur possédant la pièce passée en paramètre 
//le renvoi
func getJoueur(){} 

//setJoueur Joueur x Piece -> Joueur
//attribut une piece à un joueur 
//le renvoi
func setJoueur(){}

//getJoueurActif Plateau -> Joueur 
//récupère depuis un objet plateau le joueur "actif", soit le joueur jouant son tour 
//le renvoi
func getJoueurActif(){}

//getName Joueur -> String
//recupère le nom du joueur passé en paramètre et le renvoi sous forme de String 
func getName(){}

//capturer Joueur x Piece -> Joueur 
//pré : la pièce en paramètre n'appartient pas au joueur 
//post : la pièce est desormais dans la reserve du joueur passé en paramètre, elle n'est plus sur le plateau
func capturer(){}
