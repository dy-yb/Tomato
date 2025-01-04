//
//  LetterWriteView.swift
//  Tomato
//
//  Created by Daye on 1/4/25.
//

import SwiftUI

struct LetterWriteView: View {
    @State private var recipient: String = ""
    @State private var message: String = ""

    var body: some View {
        NavigationView {
            VStack(alignment: .leading, spacing: 20) {
                TextField("누구에게 마음을 담을까요?", text: $recipient)
                    .textFieldStyle(.plain)
                    .padding(.horizontal)
                    .tint(.black)

                TextEditor(text: $message)
                    .padding(3)
                    .background(Color(UIColor.systemGray6))
                    .cornerRadius(2)
                    .padding(.horizontal)
                    .tint(.black)

                Button(action: {
                    // 작성 완료 버튼 클릭 시 실행할 동작
                    print("Recipient: \(recipient)")
                    print("Message: \(message)")
                }) {
                    Text("작성 완료")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(.black)
                        .foregroundColor(.white)
                        .cornerRadius(2)
                        .padding(.horizontal)
                }
            }
            .padding(.vertical)
            .navigationTitle("📝")
        }
    }
}

#Preview {
    LetterWriteView()
}
