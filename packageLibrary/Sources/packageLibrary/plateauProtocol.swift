import Foundation

    // Le type plateau est un type particulier qui va contenir toute les cases du plateau
    // Il permettra de contenir tout les éléments du jeu, comme les joueurs, leurs réserves ainsi que leur pieces
    // On pourra récupérer les informations de chaque case, savoir s'il y a une piece dessus, et le joueur a qui elle appartient
    // Aucun itérateur ne sera utilisé pour ce type (inutile)
    protocol PlateauProtocol : Sequence{
    associatedtype Piece
    associatedtype Joueur

    // initPlateau : Int x Int x String x String -> Plateau
    // Les paramètre donnés sont la coordonnées X et Y max respectivement
    // Creer les joueurs avec les id 1 et 2 et les noms passé en paramère
    init(xmax: Int, ymax: Int, name1: String, name2: String)

    // getCase : Plateau x Joueur x Joueur x Int x Int -> Piece
    // Renvoie la piece, si il y en a une, sur la case donnée en paramètre
    @discardableResult
    func getCase(joueur1: Joueur, joueur2: Joueur, coordX: Int, coordY: Int) -> Piece

    // getCasesAccessibles : Piece x Int x Int-> [String]
    // Renvoie toute les cases accessibles à la piece  sous forme de liste de string
    // Post : La case retournée doit appartenir au plateau
    func getCasesAccessibles(piece : Piece, xMax : Int, yMax : Int) -> [String]

    // bouger : Piece x Int x Int -> Bool
    // Evolue si passe la ligne
    // Capture si case occupée par l'ennemie
    // Prend en compte l'id du joueur pour determiner le sens de la piece
    // Renvoie True si succes
    // Renvoie false si case occupée
    func bouger(x : Int, y : Int) -> Bool

    // validFromPosition : Plateau x Joueur x Int x Int -> Boolean
    // Renvoie True si le joueur possède une piece aux coordonnées indiquées
    // Pre : Les coordonnées entrées sont valides (ne vont pas au dela du plateau)
    func validFromPosition(joueurActif: Joueur, fromX: Int, fromY: Int) -> Bool

    // validToPosition : Plateau x Int x Int x Int x Int -> Boolean
    // Renvoie true si on peut déplacer la piece (aux coordonnées x1,y1) peut aller sur la case x2,y2
    // Pre : Les coordonnées entrées sont valides (ne vont pas au dela du plateau)
    func validToPosition(fromX: Int, fromY: Int, toX: Int, toY: Int) -> Bool

    // getPieceFromPosition : Plateau x Int x Int -> Piece
    // Renvoie la piece présente aux coordonnées indiquée
    // Pre : Les coordonnées x et y ne dépassent pas les coordonnées du tableau
    // Post : Si la piece est présente, la fonction renvoie la piece
    // Post : Si pas de piece sur cette case, renvoie "nil"
    func getPieceFromPosition(coordX: Int, coordY: Int) -> Piece

    // getJoueurActif : Plateau -> Joueur
    // Récupère le joueur actif pour ce tour
    func getJoueurActif() throws -> Joueur

    // getJoueurPassif : Plateau -> Joueur
    // Récupère le joueur passif pour ce tour
    func getJoueurPassif() throws -> Joueur

    // rotateJoueurs : Plateau -> Self
    // Permet de changer l'état des joueurs, échange les deux joueurs
    // L'un devient actif pendant que l'autre passe en inactif
    // Post : le joueur actif ne l'est plus, et le joueur qui ne l'était pas devient le joueur actif
    @discardableResult
    func rotateJoueurs() -> Self

    // capturer : Plateau x Piece -> Plateau
    // Supprime les positions X Y de la piece
    // Change le joueur proprietaire (Si c'est 1 passe a 2, Si c'est 2 passe a 1)
    // Place la piece dans la Reserve du dit Joueur
    // Post : la pièce n'est plus sur le plateau
    @discardableResult
    func capturer(piece: Piece) -> Self

    // aPerdu : Plateau x Joueur x Joueur -> (Int | Vide)
    // Renvoie l'id du Joueur ayant perdu
    // Renvoie Vide si personne n'a perdu
    func aPerdu() -> Int?

}
