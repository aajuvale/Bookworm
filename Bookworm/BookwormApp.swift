//
//  BookwormApp.swift
//  Bookworm
//
//  Created by Ahmed Juvale on 8/7/25.
//

import SwiftUI
import SwiftData

@main
struct BookwormApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: Book.self)
    }
}
