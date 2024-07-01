//
//  ChecklistsStore.swift
//  ChecklistsObservation
//
//  Created by Christophe Guégan on 30/06/2024.
//

import Foundation
import Observation

@Observable
class ChecklistsStore {
    
    var checklists: [ChecklistModel] = []
    
    func fetchChecklists(for department: DepartmentModel) {
        self.checklists = department.checklists
    }
    
}
