
// Renvoie True si l'action est possible
func validChoice(choice : Int?, plateau : Plateau) -> Bool {
	guard choice != nil else { return false }
	if (choice != 1 || choice != 2)  {
		return false
	}
	else if (choice == 2 && plateau.countReserve(monPlateau.getJoueurActif) <= 0) {
		return false
	}
	else {
		return true
	}
}

// Renvoie un String contenant les infos de la piece
func showPiece(piece : Piece?) -> String{
	var txtPiece = ""
	if piece == nil {
		txtPiece += "Aucune piece dans cette case"
	}
	else {
		txtPiece += piece.getNom
		txtPiece += "\n"
		txtPiece += "Case(s) accessibles"
		for c in piece.getCasesAccessibles {
			txtPiece += c + " "
		}
	}
	return txtPiece
}

func main() {
	//-------------- [INITIALISATION PARTIE] ------
	var player1Name : String
	var player2Name : String
	print ("Nom du joueur 1")
	player1Name = "Pepito"
	print ("Nom du joueur 2")
	player2Name = "Baptiste"
	var choice : Int? = nil
	// Demander nom aux joueurs (ou pas)
	var monPlateau = Plateau(3,6, player1Name, player2Name)

	while aPerdu(monPlateau) == nil {
		//------ [CHOIX DE L'ACTION] ----------
		print("C'est le tour de ") + monPlateau.getJoueurActif().getName()
		print("Quel action voulez vous faire ?")
		print("1. Déplacer un piece")
		print("2. Parachuter une piece")
		while !validChoice(choice, monPlateau) {
			if (let action = Int(readLine()) && validChoice(choice, monPlateau)){
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
								if let p = monPlateau.getPieceFromPosition(fromX, fromY) {
									print("Piece choisie : ")
									showPiece(p)
									print("Position X de la case de destination")
									if let toX = Int(readLine()) {
										print("Position Y de la case de destination")
										if let toY = Int(readLine()) {
											if movePiece(toX, toY) {
												didHeMove = true
											}
											else {
												print("Impossible de bouger la piece dans cette case, recommencez")
											}
										}
										else {
											print ("Destination Y de la piece Invalide")
										}
									}
									else {
										print ("Destination X de la piece Invalide")
									}
								}
								else {
									print("Aucune piece sur cette case / Case invalide")
								}
							}
							else {
								print("Position Y de la piece invalide")
							}
						}
						else {
							print("Position X de la piece invalide")
						}
					}
				}

				else if (choice == 2) {
					print("Votre reserve : ")
					if let pieces = monPlateau.getJoueurActif().getPiecesReserve(){

					}
					else {
						print("Est vide")
					}
				}
			}
			else {
				print ("Action non valable")
			}
		}
		monPlateau.rotateJoueurs()
	}
}
