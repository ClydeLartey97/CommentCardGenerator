//
//  ContentView.swift
//  CommentCardGenerator
//
//  Created by Lartey, David (HWTA) on 08/02/2022.
//
import SwiftUI


struct ContentView: View {
    @StateObject var commentData: CommentData
    var commentGenerator: CommentGenerator
    var body: some View {
        
        
        Form{
            
            
            //4 buttons, understanding, weakness, happiness/enjoyment & subject
            Button("Understanding: \(commentGenerator.understandingSentences[commentData.understanding].capitalized)", action:
                    {commentData.understanding += 1
                //if commentData.understanding > 0 Then???
                if commentData.understanding > commentGenerator.understandingSentences.count-1{
                commentData.understanding = 0
            }
        })
            
            
            Button("Weakness: \(commentData.weakness)", action:
                    {commentData.weakness += 1
                //if commentData.weakness > 0 then??
                if commentData.weakness > commentGenerator.weaknessSentences.count-1{
                commentData.weakness = 0
            }
        })
             Text("\(commentGenerator.generateComment( data: commentData))")
                
            
            
            
            
            
            Button("Enjoyment: \(commentGenerator.enjoymentSentences[commentData.enjoyment].capitalized)", action: {commentData.enjoyment += 1
                
                if commentData.enjoyment > commentGenerator.enjoymentSentences.count-1{
                commentData.enjoyment = 0
            }
        })
            
            
            Button("Subject: \(commentGenerator.subjectSentences[commentData.subject].capitalized)", action: {commentData.subject += 1
                if commentData.subject > commentGenerator.subjectSentences.count-1{
                commentData.subject = 0
            }
        })
            
            
            

            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(commentData: CommentData(understanding: 0, weakness : 0, enjoyment: 0, subject: 0), commentGenerator:     CommentGenerator())
    }
}
