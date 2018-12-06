// TODO : En faire un protocole
// Initialisation d'une piece
init(face1 : Face, face2 : Face)


// Renvoie toute les cases accessibles à la piece  sous forme de liste de string
func getCasesAccessibles() -> [String]

// Renvoie la coordonnée X de la Piece
func getX

// Renvoie la coordonnée Y de la piece
func getY

// Renvoie la face active
func getFaceActive() -> Face

// Renvoie la face passive
func getFacePassive() -> Face

// Modifie la face active
func setFaceActive(face : Face) ->

// Modifie la face passive
func setFacePassive(face : Face) ->

// Evolue si passe la ligne
// Capture si case occupée par l'ennemie
// Renvoie True si succes
// Renvoie false si case occupée
func bouger(x : Int, y : Int) -> Bool

// getJoueur : Piece -> Int
// Renvoie l'id du Joueur possedant la piece
func getJoueur() -> Int
