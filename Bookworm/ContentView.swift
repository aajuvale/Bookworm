//
//  ContentView.swift
//  Bookworm
//
//  Created by Ahmed Juvale on 8/7/25.
//

import SwiftData
import SwiftUI

// SwiftData is an object graph and persistence framework

struct ContentView: View {
    @Environment(\.modelContext)
    var modelContext

    @Query
    var students: [Student]

    var body: some View {
        NavigationStack {
            List(students) { student in
                Text(student.name)
            }
            .navigationTitle("Classroom")
            .toolbar {
                Button("Add") {
                    let firstNames = ["Scott", "Alex", "Kurt", "Katherine", "Jean"]
                    let lastNames = ["Summers", "Wagner", "Pryde", "Grey"]

                    let chosenFirstName = firstNames.randomElement()!
                    let chosenLastName = lastNames.randomElement()!

                    let student = Student(id: UUID(), name: "\(chosenFirstName) \(chosenLastName)")
                    modelContext.insert(student)
                }
            }
        }
    }
}
