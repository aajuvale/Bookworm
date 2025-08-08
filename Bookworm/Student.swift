//
//  Student.swift
//  Bookworm
//
//  Created by Ahmed Juvale on 8/8/25.
//

import Foundation
import SwiftData

@Model
class Student {
    var id: UUID
    var name: String

    init(id: UUID, name: String) {
        self.id = id
        self.name = name
    }
}
