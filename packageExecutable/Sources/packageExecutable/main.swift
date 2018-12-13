import Foundation

// Détermine si le choix en paramètre est valide ou non
// Renvoie True si l'action est possible, false sinon
func validChoice(choice : Int?, plateau : Plateau) -> Bool {
	guard choice != nil else { return false }
	if (choice != 1 || choice != 2)  {
		return false
	}
	else if (choice == 2 && plateau.countReserve(monPlateau.getJoueurActif()) <= 0) {
		return false
	}
	else {
		return true
	}
}

// Permet de connaitres les caractéristiques d'une piece sous forme de String
// Renvoie un String contenant les infos de la piece
func showPiece(_ piece : Piece?) -> String{
	var txtPiece = ""
	if piece == nil {
		txtPiece += "Aucune piece dans cette case"
	}
	else {
		txtPiece += piece.getNom
		txtPiece += "\n"
		txtPiece += "Case(s) accessibles"
		for c in piece.getCasesAccessibles() {
			txtPiece += c + " "
		}
	}
	return txtPiece
}

func main() {
	//-------------- [INITIALISATION PARTIE] ------
	var player1Name : String
	var player2Name : String
	print ("Nom du joueur 1 : ")
	if let player1Name = readLine() {
		print ("Nom du joueur 2 : ")
		if let player2Name = readLine() {
			var choice : Int? = nil
			// Demander nom aux joueurs (ou pas)
			var monPlateau = Plateau(3,6, player1Name, player2Name)
			//on choisit aléatoirement notre premier joueur et il devient le joueur actif
			let idRandom = Int.random(in: 1 ... 2)
			if idRandom == 1 {
				monPlateau.setJoueurActif(getJoueurById(idRandom))
				monPlateau.setJoueurPassif(getJoueurById(2))
			} else {
				monPlateau.setJoueurActif(getJoueurById(idRandom))
				monPlateau.setJoueurPassif(getJoueurById(1))
			}
			while (monPlateau.aperdu(getJoueurById(1),getJoueurById(2)) == nil) {
				//------ [CHOIX DE L'ACTION] ----------
				print("C'est le tour de ") + monPlateau.getJoueurActif().getName()
				print("Quel action voulez vous faire ?")
				print("1. Déplacer un piece")
				print("2. Parachuter une piece")
				while !validChoice(choice, monPlateau) {
					if let action = Int(readLine()) && validChoice(choice, monPlateau) {
						//------ [ACTION] ---------------------
						if (choice == 1) {
							var fromX : Int?
							var toX   : Int?
							var fromY : Int?
							var toY   : Int?

							fromX = nil
							toX   = nil
							fromY = nil
							toY   = nil

							var didHeMove : Bool = false
							while (!didHeMove) {
								print("Position X de la piece à déplacer")
								if let fromX = Int(readLine()) {

									print("Position Y de la piece à déplacer")
									if let fromY = Int(readLine()) {
										if let piece = monPlateau.getPieceFromPosition(fromX, fromY) {
											print("Piece choisie : ")
											showPiece(p)
											print("Position X de la case de destination")
											if let toX = Int(readLine()) {
												print("Position Y de la case de destination")
												if let toY = Int(readLine()) {
													// Si la nouvelle case est occupée par le joueur recommencer
													// Si la nouvelle case est occupée par l'ennemie capturer
													// SI la nouvelle case est vide bouger
													if monPlateau.bouger(piece,toX, toY) {
														didHeMove = true
													} else {
														print("Impossible de bouger la piece dans cette case, recommencez")
													}
												} else {
													print ("Destination Y de la piece Invalide")
												}
											} else {
												print ("Destination X de la piece Invalide")
											}
										} else {
											print("Aucune piece sur cette case / Case invalide")
										}
									} else {
										print("Position Y de la piece invalide")
									}
								} else {
									print("Position X de la piece invalide")
								}
							}
						}

						else if (choice == 2) {
							var i = 0
							print("Votre reserve : ")
							if let pieces = monPlateau.getJoueurActif().getReserve(){
								for piece in pieces {
									print(i+"\n")
									print(showPiece(piece))
									i++
								}
								print("Quelle piece voulez vous prendre ?")
								var didHeMove : Bool = false
								while (!didHeMove){
									if let noPiece = Int(readLine()) {
										if let selectedPiece = pieces[noPiece] {
											print("Piece selectionnée : ")
											print(showPiece(selectedPiece))
											print("Ou voulez vous la déposer ?")

												print("Position X de la case de destination")
												if let toX = Int(readLine()) {
													print("Position Y de la case de destination")
													if let toY = Int(readLine()) {
														// Si la case est occupée
														if monPlateau.parachuter(selectedPiece, toX, toY) {
															didHeMove = true
														} else {
															print("Impossible de bouger la piece dans cette case, recommencez")
														}
													} else {
														print ("Destination Y de la piece Invalide")
													}
												} else {
													print ("Destination X de la piece Invalide")
												}
											} else {
												print("Piece non valide")
											}
										} else {
											print("numéro invalide")
										}
									}
								} else {
									print ("Cette piece n'existe pas ressayez")
								}
							} else {
								print("Est vide")
							}
						} else {
						print ("Action non valable")
					}
				}
				monPlateau.rotateJoueurs()
			}
			print("Le Joueur " + monPlateau.aPerdu() + " a perdu")
		} else {
			fatalError("Mauvais nom Joueur 2")
		}
	} else {
		fatalError("Mauvais nom Joueur 1")
	}
}
