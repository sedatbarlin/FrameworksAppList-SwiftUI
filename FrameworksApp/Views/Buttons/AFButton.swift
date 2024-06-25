//
//  AFButton.swift
//  FrameworksApp
//
//  Created by Sedat on 25.06.2024.
//

import SwiftUI

struct AFButton: View {
    var title: String
    var body: some View {
        Text(title)
           .font(.title2)
           .fontWeight(.semibold)
           .frame(width: 300, height: 50)
           .background(Color.gray)
           .foregroundColor(.white)
           .cornerRadius(15)
    }
}

#Preview {
    AFButton(title: "Test Button")
}
