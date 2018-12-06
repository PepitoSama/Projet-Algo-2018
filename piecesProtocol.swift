// Le type piece permet d'avoir acces a toute les pieces possibles

// Initialisation des pieces possibles
// Les pieces de base sont :
// 1er face : koropokkuru
// Peut se déplacer dans tout les sens
// 2eme face : la même

// 1er face : kitsune
// Peut se déplacer en diagonale
// 2eme face : la même

// 1er face : tanuki
// Peut aller : - Devant
//              - Derriere
//              - A gauche
//              - A droite
// 2eme face : la même

// 1er face : kodama
// Peut aller : devant
// 2eme face : kodama samuraï
// Peut aller : - Devant
//              - Derriere
//              - A gauche
//              - A droite
//              - En Haut a gauche
//              - En Haut a droite

init()

// Recupère une piece parmis celles possibles
getPiece(nomPiece : String) -> Piece?
