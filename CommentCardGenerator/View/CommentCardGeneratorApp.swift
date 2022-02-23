//
//  CommentCardGeneratorApp.swift
//  CommentCardGenerator
//
//  Created by Lartey, David (HWTA) on 08/02/2022.
//
import SwiftUI

@main
struct CommentCardWriterApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(commentData: CommentData(enjoyment: 0, subject: 0, understanding: 0, weakness: 0), commentGenerator: CommentGenerator())
        }
    }
}
