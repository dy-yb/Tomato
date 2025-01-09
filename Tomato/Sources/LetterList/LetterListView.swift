//
//  LetterListView.swift
//  Tomato
//
//  Created by Daye on 1/3/25.
//

import SwiftUI
import CoreData

struct LetterListView: View {
    @Environment(\.managedObjectContext) var managedObjectContext
    @FetchRequest(sortDescriptors: [SortDescriptor(\LetterEntity.creationDate, order: .forward)]) var letters: FetchedResults<LetterEntity>

    var body: some View {
        NavigationView {
            List(letters) { item in
                LetterRow(
                    letter: Letter(
                        recipient: item.recipient ?? "Someone",
                        content: item.content ?? ""
                    )
                )
            }
            .listStyle(.grouped)
            .padding(.top, 20)
            .navigationTitle("📮")
        }
    }
}

#Preview("하나") {
    LetterListView()
}
