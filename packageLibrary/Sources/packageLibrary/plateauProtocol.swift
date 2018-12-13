import Foundation

    // Le type plateau est un type particulier qui va contenir toute les cases du plateau
    // Il permettra de contenir tout les éléments du jeu, comme les joueurs, leurs réserves ainsi que leur pieces
    // On pourra récupérer les informations de chaque case, savoir s'il y a une piece dessus, et le joueur a qui elle appartient
    // Aucun itérateur ne sera utilisé pour ce type (inutile)
    // On laisse le choix d'implémentation aux Developpeurs qui pourra définir s'il souhaite commencer par la case 0 ou la case 1
    // Il devra juste respecter le nombre de lignes et de colonnes demandées (xMax/yMax)
    protocol PlateauProtocol : Sequence{
      associatedtype Piece : PieceProtocol
      associatedtype Joueur : JoueurProtocol
      associatedtype Reserve : ReserveProtocol

    // initPlateau : Int x Int x String x String -> Plateau
    // Les paramètre donnés sont les coordonnées X et Y max respectivement
    // Creer les joueurs avec les id 1 et 2 et les noms passé en paramère
    init(xmax: Int, ymax: Int, name1: String, name2: String)
    
    // bouger : Piece x Int x Int -> Bool
    // Evolue si passe la ligne
    // Capture si case occupée par l'ennemie
    // Renvoie True si succes
    // Renvoie false si case occupée
    func bouger(x : Int, y : Int) -> Bool

    // getCase : Plateau x Int x Int -> Piece
    // Renvoie la piece, si il y en a une, sur la case donnée en paramètre
    // Pre : Coordonnées en paramètre doivent être valides (comprises dans le plateau)
    // Erreur sinon
    func getCase(coordX: Int, coordY: Int) throws -> Piece?

    // getCasesAccessibles : Piece x Int x Int-> [String]
    // Renvoie toute les cases accessibles à la piece  sous forme de liste de string
    // Post : La case retournée doit appartenir au plateau
    func getCasesAccessibles(piece : Piece, xMax : Int, yMax : Int) -> [String]

    // bouger : Plateau x Piece x Int x Int -> Bool
    // Evolue si passe la ligne
    // Capture si case occupée par l'ennemie
    // Prend en compte l'id du joueur pour determiner le sens de la piece
    // Renvoie True si succes
    // Renvoie false si case occupée
    func bouger(_ piece: Piece, x : Int, y : Int) -> Bool

    // parachuter : Plateau x Piece x Int x Int -> Bool
    // N'evolue pas si parachuté derriere la ligne
    // Ne peut pas parachuter sur case occupé par une piece quelconque
    // Retire la piece de la Reserve du Joueur concerné
    // Renvoie True si succes
    // Renvoie false si case occupée
    func parachuter(_ piece : Piece, x : Int, y : Int) -> Bool

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
    
    // getCasesAccessibles : Piece x Int x Int-> [String]
    // Renvoie toute les cases accessibles à la piece  sous forme de liste de string
    // Post : La case retournée doit appartenir au plateau
    func getCasesAccessibles(xMax : Int, yMax : Int) -> [String]
    
    // getJoueurById : Plateau x Int -> Joueur
    // Recupere un joueur a partir de son id (parametre)
    // Pre : L'id est soit 1, soit 2
    // Pre : Le Plateau a été initialisé
    func getJoueurById(id: Int)-> Joueur

    // getJoueurActif : Plateau -> Joueur
    // Récupère le joueur actif pour ce tour
    // Pre : Le plateau a été initialisé
    // P1 : plateau.getJoueurActif() != plateau.getJoueurPassif()
    // Renvoie une erreur dans le cas ou aucun joueur n'a été définit comme étant Actif
    func getJoueurActif() throws -> Joueur

    // getJoueurPassif : Plateau -> Joueur
    // Récupère le joueur passif pour ce tour
    // Pre : cf. fonction au dessus
    // P1 : cf. fonction au dessus
    // Renvoie une erreur dans le cas ou aucun joueur n'a été définit comme étant Passif
    func getJoueurPassif() throws -> Joueur

    // setJoueurActif : Plateau x Joueur -> Plateau
    // Passe le joueur en parametre, en état : "joueurActif" et renvoie le Plateau
    // Pre : Le Joueur existe
    // Post : Le Joueur en paramètre est joueur actif
    // Post : Les deux joueurs ne peuvent pas être actifs en meme temps
    @discardableResult
    mutating func setJoueurActif(joueur: Joueur)-> Self

    // setJoueurPassif : Plateau x Joueur -> Plateau
    // Passe le joueur en parametre, en état : "joueurPassif" et renvoie le Plateau
    // Pre : Le Joueur existe
    // Post : Le Joueur en paramètre est joueur passif
    @discardableResult
    mutating func setJoueurActif(joueur: Joueur)-> Self

    // rotateJoueurs : Plateau -> Self
    // Permet de changer l'état des joueurs, échange les deux joueurs
    // L'un devient actif pendant que l'autre passe en inactif
    // Post : le joueur actif ne l'est plus, et le joueur qui ne l'était pas devient le joueur actif
    @discardableResult
    mutating func rotateJoueurs() -> Self

    // capturer : Plateau x Piece -> Plateau
    // Supprime les positions X Y de la piece
    // Place la piece dans la Reserve du dit Joueur
    // Supprime la piece de la liste des pieces du joueur
    // Change le joueur proprietaire (Si c'est 1 passe a 2, Si c'est 2 passe a 1)
    // Post : la pièce n'est plus sur le plateau
    @discardableResult
    mutating func capturer(piece: Piece) -> Self

    // piece1CapturePiece2 : Plateau x Piece x Piece -> Bool
    // Renvoie true si la piece1 peut capturer la piece2
    // Pre : La piece 1 et la piece 2 appartiennent à deux joueurs differents
    // Renvoie une erreur si la precondition n'est pas remplie
    func piece1CapturePiece2(_ piece: Piece, pieceACapturer: Piece) throws-> Bool

    // aPerdu : Plateau x Joueur x Joueur -> (Int | Vide)
    // Renvoie l'id du Joueur ayant perdu
    // Renvoie Vide si personne n'a perdu
    func aPerdu(_ joueur1: Joueur,_ joueur2: Joueur) -> Int?

    // getXMax : Plateau -> Int
    // Renvoie la longueur du plateau
    // Pre : Le Plateau a été initialisé avec une valeur de longueur et de largeur
    func getXMax()->Int

    // getYMax : Plateau -> Int
    // Renvoie la largeur du plateau
    // Pre : Le Plateau a été initialisé avec une valeur de longueur et de largeur
    func getYMax()->Int
}
