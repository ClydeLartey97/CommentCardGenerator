//
//  CommentData.swift
//  CommentCardGenerator
//
//  Created by Clyde Lartey on 23/02/2022.
//
import Foundation

class CommentData: ObservableObject{
    
    @Published var understanding: Int
    
    @Published var weakness: Int
    
    @Published var enjoyment: Int

    @Published var subject: Int

    
    
    
    init(understanding: Int, weakness: Int, enjoyment: Int, subject: Int){
        self.understanding = understanding
        self.weakness = weakness
        self.enjoyment = enjoyment
        self.subject = subject

    }
}
