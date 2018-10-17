//
//  GameAITests.swift
//  TicTacToeTests
//
//  Created by Ilgar Ilyasov on 10/17/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import XCTest
@testable import TicTacToe // IMPORTANT !!!

class GameAITests: XCTestCase {
    
    /*
     
     x o -
     x o -
     x - -
     
    */
    
    func testWinCheckingVertical0() {
        var board = GameBoard()
        try! board.place(mark: .x, on: (0, 0))
        try! board.place(mark: .o, on: (1, 0))
        try! board.place(mark: .x, on: (0, 1))
        try! board.place(mark: .o, on: (1, 1))
        try! board.place(mark: .x, on: (0, 2))
        
        XCTAssertTrue(game(board: board, isWonBy: .x))
        XCTAssertFalse(game(board: board, isWonBy: .o))
    }
    
    /*
     
     x x x
     o o -
     - - -
     
     */
    
    func testCheckingHorizontal0() {
        var board = GameBoard()
        try! board.place(mark: .x, on: (0, 0))
        try! board.place(mark: .o, on: (0, 1))
        try! board.place(mark: .x, on: (1, 0))
        try! board.place(mark: .o, on: (1, 1))
        try! board.place(mark: .x, on: (2, 0))
        
        XCTAssertTrue(game(board: board, isWonBy: .x))
        XCTAssertFalse(game(board: board, isWonBy: .o))
    }
    
    /*
     
     x o -
     - x o
     - - x
     
    */
    
    func testCheckingDiagonal0() {
        var board = GameBoard()
        try! board.place(mark: .x, on: (0, 0))
        try! board.place(mark: .o, on: (1, 0))
        try! board.place(mark: .x, on: (1, 1))
        try! board.place(mark: .o, on: (2, 1))
        try! board.place(mark: .x, on: (2, 2))
        
        XCTAssertTrue(game(board: board, isWonBy: .x))
        XCTAssertFalse(game(board: board, isWonBy: .o))
    }
    
}
