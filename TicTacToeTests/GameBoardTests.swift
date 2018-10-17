//
//  GameBoardTests.swift
//  TicTacToeTests
//
//  Created by Ilgar Ilyasov on 10/17/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import XCTest
@testable import TicTacToe // IMPORTANT !!!

class GameBoardTests: XCTestCase {
    
    // Make sure (0, 0) coordinage is Empty
    func testIsThereAMarkAtZeroZero() {
        let board = GameBoard()
        let mark = board[(0, 0)]
        XCTAssertNil(mark)
    }
    
    // Make sure GameBoard is Empty
    func testCreatingEmptyBoard() {
        
        let board = GameBoard()
        for x in 0...2 {
            for y in 0...2{
                let mark = board[(x, y)]
                XCTAssertNil(mark)
            }
        }
    }
    
    func testPlacingMarks() {
        var board = GameBoard()
        XCTAssertNoThrow(try board.place(mark: .x, on: (0, 0)))
        // Verify that (0, 0) has a mark now
        let mark = board[(0, 0)]
        
        XCTAssert(mark == .x)
        //XCTAssertEqual(mark, .x) // Same as above XCTAssert
        
        for x in 0...2 {
            for y in 0...2{
                let mark = board[(x, y)]
                if x == 0 && y == 0 {
                    XCTAssertEqual(mark, .x)
                    continue
                }
                XCTAssertNil(mark)
            }
        }
    }
    
    func testBoardIsFull() {
        var board = GameBoard()
        
        // You could use the double for-in loop like previous test for this
        // This is just another way of doing it
        
        try! board.place(mark: .x, on: (0, 0))
        try! board.place(mark: .x, on: (0, 1))
        try! board.place(mark: .x, on: (0, 2))
        try! board.place(mark: .x, on: (1, 0))
        try! board.place(mark: .x, on: (1, 1))
        try! board.place(mark: .x, on: (1, 2))
        try! board.place(mark: .x, on: (2, 0))
        try! board.place(mark: .x, on: (2, 1))
        try! board.place(mark: .x, on: (2, 2))
        
        XCTAssertTrue(board.isFull)
    }
    
    
    
//    var board: GameBoard!
//
//    override func setUp() {
//        board = GameBoard()
//    }
}
