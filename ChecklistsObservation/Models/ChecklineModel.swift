//
//  ChecklineModel.swift
//  ChecklistsObservation
//
//  Created by Christophe Guégan on 30/06/2024.
//

import Foundation
import Observation

@Observable
class ChecklineModel: Identifiable {
    var id: String
    var title: String
    var action: String
    var notes: String
    var isChecked: Bool
    var type: ChecklineType
    
    init(title: String, action: String, notes: String = "") {
        self.id = UUID().uuidString
        self.title = title
        self.action = action
        self.notes = notes
        self.isChecked = false
        self.type = .checkline
    }
    
}

extension ChecklineModel {
    
    var counting: Int {
        isChecked ? 1 : 0
    }
    
}

enum ChecklineType: Codable, CaseIterable, Identifiable {
    case sectionTitle
    case checkline
    case comment
    
    var id: Self { self }
    
    var description: String {
        switch self {
        case .sectionTitle:
            return "Section Title"
        case .checkline:
            return "Checkline"
        case .comment:
            return "Comment"
        }
    }
}
