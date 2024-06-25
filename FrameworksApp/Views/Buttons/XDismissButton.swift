//
//  XDismissButton.swift
//  FrameworksApp
//
//  Created by Sedat on 25.06.2024.
//

import SwiftUI

struct XDismissButton: View {
    @Binding var isShowingDetailView: Bool
    var body: some View {
        HStack{
            Spacer()
            Button{
                isShowingDetailView = false
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(Color(.label))
                    .imageScale(.large)
            }
        }
        .padding()
    }
}

#Preview {
    XDismissButton(isShowingDetailView: .constant(false))
}
