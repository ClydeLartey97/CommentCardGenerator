//
//  ContentView.swift
//  CommentCardGenerator
//
//  Created by Lartey, David (HWTA) on 08/02/2022.
//

import SwiftUI

struct ContentView: View {
    
    
    @State private var difficulty = ""
    @State private var enjoyment: Double = 1.0
    @State private var isEditing = false
    
    var body: some View {
        
        
        
        
        
        
        
        
        VStack {
            Text("Select your difficulty")
                .foregroundColor(.green)
            
                .padding(15)
            
            Button("Very Hard", action: {
            
                difficulty = "very hard"
                
            })
            Button("Hard", action: {
                
                difficulty = "hard"
                
            })
            Button("Ok", action: {
                difficulty = "ok"
            })
            Button("Easy", action: {
                difficulty = "easy"
            })
            Button("Very Easy", action: {
                difficulty = "very easy"
            })
            Text("I am finding Computer Science \(difficulty)")
                .foregroundColor(.orange)
                .padding(35)
            
            
            
            
            
            Text("Select enjoyment")
                .foregroundColor(.green)
                .padding(15)
            Slider(
                value: $enjoyment,
                in: 1...10,
                step: 1
                
                
            ) {
                Text("Current Enjoyment ")
                
            } minimumValueLabel: {
                Text("0")
            } maximumValueLabel: {
                Text("10")
            } onEditingChanged: { editing in
                isEditing = editing
            }
            
                Text("My happiness is in Computer Science is \(Int(enjoyment)) out of 10")
                .foregroundColor(.orange)
                //Text("Happiness figure \(enjoyment)")
                .padding(35)
            
            
            
            
            
                }
           
            }
                
        }
        



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

