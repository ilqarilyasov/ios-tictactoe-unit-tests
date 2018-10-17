//
//  GameAI.swift
//  TicTacToe
//
//  Created by Andrew R Madsen on 9/11/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation

func game(board: GameBoard, isWonBy player: GameBoard.Mark) -> Bool {
    
    // Check vertical wins
    for x in 0...2 { // X represent each column
        var markCounter = 0
        
        for y in 0...2 {
            if board[(x, y)] == player { // Y represents each row
                markCounter += 1
            }
        }
        
        if markCounter == 3 {
            return true
        }
    }
    
    // Check horizontal wins
    for y in 0...2 { // Y represent each column
        var markCounter = 0
        
        for x in 0...2 {
            if board[(x, y)] == player { // X represents each row
                markCounter += 1
            }
        }
        
        if markCounter == 3 {
            return true
        }
    }
    
    // Chech diagonal wins
    if board[(0, 0)] == player && board[(1, 1)] == player && board[(2, 2)] == player {
        return true
    } else if board[(2, 0)] == player && board[(1, 1)] == player && board[(0, 2)] == player {
        return true
    } else { return false}
}
