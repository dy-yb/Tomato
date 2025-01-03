//
//  LetterListView.swift
//  Tomato
//
//  Created by Daye on 1/3/25.
//

import SwiftUI

struct LetterListView: View {
    let list: [Letter]

    init(list: [Letter]) {
        self.list = list
    }

    var body: some View {
        return List(list) { item in
            LetterRow(letter: item)
        }
    }
}

#Preview("하나") {
    LetterListView(list: [Letter(recipient: "daye")])
}

#Preview("여러개") {
    LetterListView(
        list: [
            Letter(recipient: "Daye"),
            Letter(recipient: "Quokka"),
            Letter(recipient: "Milkey"),
        ]
    )
}
