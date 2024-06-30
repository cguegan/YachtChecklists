//
//  ChecklineEditSheet.swift
//  ChecklistsObservation
//
//  Created by Christophe Guégan on 30/06/2024.
//

import SwiftUI

struct ChecklineEditSheet: View {
    
    @Environment(\.dismiss) var dismiss
    @Bindable var checkline: ChecklineModel
    
    
    // MARK: - Main body
    // —————————————————
    
    var body: some View {
        NavigationStack {
            Form {
                Section {
                    TextField("Title", text: $checkline.title)
                    TextField("Action", text: $checkline.action)
                    TextField("Notes", text: $checkline.notes, axis: .vertical)
                    Toggle("Is Checked", isOn: $checkline.isChecked)
                }
            }
            .navigationTitle("Edit Checkline")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar { trailingToolbar }
        }
    }
}


// MARK: - Toolbar Content
// ———————————————————————

extension ChecklineEditSheet {
    @ToolbarContentBuilder
    private var trailingToolbar: some ToolbarContent {
        ToolbarItem(placement: .navigationBarTrailing) {
            Button("Done") {
                dismiss()
            }
        }
    }
}


// MARK: - Preview
// ———————————————

#Preview {
    ChecklineEditSheet(checkline: ChecklistModel.bridgeSamples.first!.lines.first!)
}
