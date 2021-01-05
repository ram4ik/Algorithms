//
//  TicTakToe.swift
//  Algorithms
//
//  Created by Ramill Ibragimov on 05.01.2021.
//

import Foundation

class TicTakToe {
    
    func whoWon(_ board: [[String]]) -> String {
        
        var x = false;
        var o = false;
        
        for i in 0...2 {
            if (board[i][0]=="X" && board[i][1]=="X" && board[i][2]=="X") {x = true;}
            if (board[i][0]=="O" && board[i][1]=="O" && board[i][2]=="O") {o = true;}
            if (board[0][i]=="X" && board[1][i]=="X" && board[2][i]=="X") {x = true;}
            if (board[0][i]=="O" && board[1][i]=="O" && board[2][i]=="O") {o = true;}
        }
        if (board[0][0]=="X" && board[1][1]=="X" && board[2][2]=="X") {x = true;}
        if (board[0][0]=="O" && board[1][1]=="O" && board[2][2]=="O") {o = true;}
        if (board[0][2]=="X" && board[1][1]=="X" && board[2][0]=="X") {x = true;}
        if (board[0][2]=="O" && board[1][1]=="O" && board[2][0]=="O") {o = true;}
        
        if (x && !o) {return "X";}
        if (!x && o) {return "O";}
        
        return "Tie";
    }
}
