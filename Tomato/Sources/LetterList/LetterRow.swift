//
//  LetterRow.swift
//  Tomato
//
//  Created by Daye on 1/3/25.
//

import SwiftUI

struct LetterRow: View {
    var letter: Letter

    var body: some View {
        HStack {
            Text("To.").fontWeight(.bold)
            Text("\(letter.recipient)")
        }
    }
}
