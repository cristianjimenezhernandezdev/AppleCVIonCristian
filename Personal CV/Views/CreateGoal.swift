//
//  CreateGoal.swift
//  Personal CV
//
//  Created by Nikos Galinos on 13/5/23.
//

import SwiftUI
import CoreData

struct CreateDeviceView: View {
    @Environment(\.dismiss) var dismiss
    @State var nomInput: String = ""
    @State var modelInput: String = ""
    @State var anyInput: String = ""
    @State var categoriaInput: String = ""
    let viewContext: NSManagedObjectContext

    private var anyValidat: Int32 {
        Int32(anyInput) ?? 0
    }

    private var formulariValid: Bool {
        !nomInput.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty &&
        !modelInput.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty &&
        anyValidat > 0
    }

    var body: some View {
        VStack(alignment: .leading) {
            Form {
                Text("Nou dispositiu")

                Section("Nom del dispositiu") {
                    TextField("Ex: MacBook Pro", text: $nomInput)
                }

                Section("Model") {
                    TextField("Ex: M3 Pro", text: $modelInput)
                }

                Section("Any") {
                    TextField("Ex: 2024", text: $anyInput)
                        .keyboardType(.numberPad)
                }

                Section("Categoria (opcional)") {
                    TextField("Ex: Portatil, Mobil, Tablet...", text: $categoriaInput)
                }
            }
            .navigationTitle("Afegir dispositiu")
            .navigationBarTitleDisplayMode(.inline)
        }
        .toolbar {
            ToolbarItem {
                Button("Guardar") {
                    let newGoal = GoalEntry(context: viewContext)
                    newGoal.nom = nomInput.trimmingCharacters(in: .whitespacesAndNewlines)
                    newGoal.model = modelInput.trimmingCharacters(in: .whitespacesAndNewlines)
                    newGoal.any = anyValidat
                    newGoal.categoria = categoriaInput.trimmingCharacters(in: .whitespacesAndNewlines)

                    try? viewContext.save()
                    dismiss()
                }
                .disabled(!formulariValid)
            }
        }
    }
}
