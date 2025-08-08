//
//  ContentView.swift
//  Bookworm
//
//  Created by Ahmed Juvale on 8/7/25.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("notes")
    private var notes = ""

    var body: some View {
        NavigationStack {
            TextField("Enter your text", text: $notes, axis: .vertical)
                .textFieldStyle(.roundedBorder)
                .navigationTitle("Notes")
                .padding()
        }
    }
}
