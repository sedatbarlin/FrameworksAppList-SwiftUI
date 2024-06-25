//
//  FrameworkTitleView.swift
//  FrameworksApp
//
//  Created by Sedat on 25.06.2024.
//

import SwiftUI

struct FrameworkTitleView: View {
    var framework: Framework
    
    var body: some View {
        HStack{
            Image(framework.imageName)
                .resizable()
                .frame(width: 50, height: 50)
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
                .padding()
        }
    }
}


#Preview {
    FrameworkTitleView(framework: MockData.sampleFramework)
        .preferredColorScheme(.dark)
}
