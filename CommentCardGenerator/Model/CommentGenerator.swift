//
//  CommentGenerator.swift
//  CommentCardGenerator
//
//  Created by Clyde Lartey on 23/02/2022.
//

import Foundation

class CommentGenerator: ObservableObject{
    
    let understandingSentences = ["excellent", "good", "average", "bad", "rubbish"]
    
    
    let weaknessSentences = ["I need to ask more questions","I am finding it hard to do work in Class", "The EWs are hard"]
        
    
    let enjoymentSentences = ["really enjoying" ,"enjoying","having a good time", "dislike", "hate", "despise"]
    
    
    let subjectSentences = ["Maths", "Economics", "Theology", "Computer Science"]


    
    
    func generateComment(data: CommentData)-> String{
        
        
        let understandingSentence = understandingSentences[data.understanding]
        
        let weaknessSentence = weaknessSentences[data.weakness]
        
        let enjoymentSentence = enjoymentSentences[data.enjoyment]
        
        let subjectSentence = subjectSentences[data.subject]

        
        
        let comment = "I am \(enjoymentSentence) in my time in \(subjectSentence) this half. I have a \(understandingSentence) understanding of the content that we have covered this term. The issues i have found are the fact that \(weaknessSentence)."
        return comment
        
    }
}
