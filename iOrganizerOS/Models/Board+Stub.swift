//
//  Board+Stub.swift
//  TrelloClone
//
//  Created by Alfian Losari on 11/29/21.
//

import Foundation

extension Board {
    
    static var stub: Board {
        let board = Board(name: "iOrganizer")
        let backlogBoardList = BoardList(name: "Backlog", boardID: board.id)
        let backlogCards = [
            "Cloud Service",
            "Mobile Developer",
            "Project Documentation"
            
        ].map { Card(content: $0, boardListId: backlogBoardList.id) }
        backlogBoardList.cards = backlogCards
        
        let todoBoardList = BoardList(name: "To Do", boardID: board.id)
        let todoCards = [
            "Error Handling",
            "Text Search"
        ].map { Card(content: $0, boardListId: todoBoardList.id) }
        todoBoardList.cards = todoCards
        
        
        let inProgressBoardList = BoardList(name: "In Progress", boardID: board.id)
        let inProgressCards = ["File Storage Service"].map { Card(content: $0, boardListId: inProgressBoardList.id) }
        inProgressBoardList.cards = inProgressCards
        
        
        let doneBoardList = BoardList(name: "Done", boardID: board.id)
        board.lists = [
            backlogBoardList,
            todoBoardList,
            inProgressBoardList,
            doneBoardList
        ]
        
        return board
    }
}
