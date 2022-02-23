//
//  CommentGenerator.swift
//  CommentCardGenerator
//
//  Created by Clyde Lartey on 23/02/2022.
//

import Foundation

class CommentGenerator: ObservableObject{
    //by writing here the different options i should have an easier time writing the comment cards
    //complete for later - write in stuff such as enjoyment sentence etc to show the teacher that i know what i am doing despite the fact that i have not written anything myself
    
    let understandingSentences = ["excellent", "good", "average", "bad", "rubbish"]
    
    
    let weaknessSentences = ["I need to ask more questions","I am finding it hard to do work in Class", "The EWs are hard"]
        
    
    let enjoymentSentences = ["really enjoying" ,"enjoying","having a good time", "dislike", "hate", "despise"]
    
    
    let subjectSentences = ["Maths", "Economics", "Theology", "Computer Science"]


    func generateComment(data: CommentData)-> String{
        
        
        let understandingSentence = understandingSentences[data.understanding]
        
        let weaknessSentence = weaknessSentences[data.weakness]
        
        let enjoymentSentence = enjoymentSentences[data.enjoyment]
        
        let subjectSentence = subjectSentences[data.subject]

        
        
        
        
        
     //example comment to complete at house
        //i understadn the subject a lot howevber i am finding it hard  I am enjoying CompSci this term
        let comment = "I have a \(understandingSentence) understanding of the content that we have covered this however the issue i have found are the fact that \(weaknessSentence). Overall i am I am \(enjoymentSentence) in my time in \(subjectSentence) this half."
        
        return comment
        
    }
}
