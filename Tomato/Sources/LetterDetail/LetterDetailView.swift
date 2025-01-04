//
//  LetterDetailView.swift
//  Tomato
//
//  Created by Daye on 1/4/25.
//

import SwiftUI

struct LetterDetailView: View {
    let recipient: String
    let message: String

    var body: some View {
        NavigationView {
            VStack(alignment: .leading, spacing: 20) {
                Text("To. \(recipient)")
                    .font(.title2)
                    .bold()
                    .padding(.horizontal)

                Text(message)
                    .frame(
                        maxWidth: .infinity,
                        maxHeight: .infinity,
                        alignment: .topLeading
                    )
                    .padding()
                    .background(Color(UIColor.systemGray6))
                    .cornerRadius(2)
                    .padding(.horizontal)

                Spacer()
            }
            .padding(.top, 20)
            .navigationTitle("💌")
        }
    }
}

#Preview {
    LetterDetailView(recipient: "Daye", message: "안녕~")
}
