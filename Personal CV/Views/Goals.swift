//
//  Goals.swift
//  Personal CV
//
//  Created by Nikos Galinos on 13/5/23.
//

import SwiftUI

struct DevicesView: View {
    @Environment(\.managedObjectContext) private var viewContext
    @FetchRequest(sortDescriptors: [NSSortDescriptor(keyPath: \GoalEntry.nom, ascending: true)]) private var goalList: FetchedResults<GoalEntry>

    private var dispositius: [GoalEntry] {
        goalList.sorted { lhs, rhs in
            if lhs.any == rhs.any {
                return (lhs.nom ?? "") < (rhs.nom ?? "")
            }

            return lhs.any > rhs.any
        }
    }

    var body: some View {
        NavigationStack {
            VStack(alignment: .leading, spacing: 18) {
                Text("Dispositius")
                    .foregroundColor(.white)
                    .font(.system(size: 35, weight: .bold))

                Text("Afegeix els dispositius que formen part del teu perfil professional o del teu setup habitual.")
                    .foregroundColor(.white)
                    .font(.system(size: 18, weight: .regular))

                List {
                    if dispositius.isEmpty {
                        VStack(alignment: .leading, spacing: 10) {
                            Text("Encara no hi ha dispositius")
                                .font(.headline)
                            Text("Prem Afegir per crear una fitxa amb nom, model i any.")
                                .font(.subheadline)
                                .foregroundColor(.secondary)
                        }
                        .padding(.vertical, 12)
                    }

                    ForEach(dispositius) { dispositiu in
                        VStack(alignment: .leading, spacing: 8) {
                            Text(dispositiu.nom ?? "Sense nom")
                                .font(.headline)

                            Text(dispositiu.modelText)
                                .font(.subheadline)

                            Text(dispositiu.yearText)
                                .font(.subheadline)

                            if let categoria = dispositiu.categoria, !categoria.isEmpty {
                                Text("Categoria: \(categoria)")
                                    .font(.footnote)
                                    .foregroundColor(.secondary)
                            }
                        }
                        .padding(.vertical, 4)
                    }
                    .onDelete { indexSet in
                        let dispositiusEliminats = indexSet.map { dispositius[$0] }

                        dispositiusEliminats.forEach { dispositiu in
                            viewContext.delete(dispositiu)
                        }

                        do {
                            try viewContext.save()
                        } catch {
                            print("Error saving context: \(error)")
                        }
                    }
                    .listRowBackground(Color(white: 0.50))
                }
                .scrollContentBackground(.hidden)
            }
            .padding()
            .background(Color(white: 0.18).ignoresSafeArea())
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem {
                    NavigationLink {
                        CreateDeviceView(viewContext: viewContext)
                    } label: {
                        Text("Afegir")
                            .foregroundColor(.blue)
                    }
                }
            }
        }
    }
}

private extension GoalEntry {
    var modelText: String {
        let modelNet = model?.trimmingCharacters(in: .whitespacesAndNewlines) ?? ""
        return modelNet.isEmpty ? "Model: No indicat" : "Model: \(modelNet)"
    }

    var yearText: String {
        any > 0 ? "Any: \(any)" : "Any: No indicat"
    }
}
