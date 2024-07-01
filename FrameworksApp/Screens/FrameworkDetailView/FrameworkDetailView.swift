//
//  FrameworkDetailView.swift
//  FrameworksApp
//
//  Created by Sedat on 15.06.2024.
//

import SwiftUI

struct FrameworkDetailView: View {
    var framework: Framework
    @Binding var isShowingDetailView: Bool
    @State private var isShowingSafariView = true
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.black, .gray]),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                VStack {
                    Image(framework.imageName)
                        .resizable()
                        .frame(width: 100, height: 100)
                        .padding(.top, 16)
                    
                    Text(framework.name)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding([.leading, .trailing], 20)
                }
                
                ScrollView {
                    Text(framework.description)
                        .font(.body)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.black.opacity(0.6))
                        .cornerRadius(10)
                        
                }
                
                Spacer()
                
                Button(action: {
                                    isShowingSafariView = true
                                }) {
                                    Text("Learn More")
                                        .font(.headline)
                                        .foregroundColor(.white)
                                        .frame(width: 280, height: 44)
                                        .background(
                                            LinearGradient(
                                                gradient: Gradient(colors: [Color.blue, Color.green]),
                                                startPoint: .leading,
                                                endPoint: .trailing
                                            )
                                        )
                                        .cornerRadius(10)
                                        .shadow(radius: 10)
                                }
            }
            .padding()
        }
        .fullScreenCover(isPresented: $isShowingSafariView, content: {
            SafariView(url: URL(string: framework.urlString) ?? URL(string: "https://www.apple.com")!)
        })
    }
}

#Preview {
    FrameworkDetailView(framework: MockData.sampleFramework, isShowingDetailView: .constant(false))
}
