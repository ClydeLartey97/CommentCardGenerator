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
            ContentView(commentData: CommentData( understanding: 0, weakness: 0,e njoyment: 0, subject: 0,), commentGenerator: CommentGenerator())
        }
    }
}
