//
//  FrameworkGridView.swift
//  FrameworksApp
//
//  Created by Sedat on 12.06.2024.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var viewModel = FrameworkGridViewModel()
    
    var body: some View {
        NavigationView{
            
            List{
                ForEach(MockData.frameworks){ framework in
                    NavigationLink(destination: FrameworkDetailView(framework: framework, isShowingDetailView: $viewModel.isShowingDetailView)){
                        FrameworkTitleView(framework: framework)
                    }
                }
            }
            .listStyle(PlainListStyle())
            .navigationTitle("Apple Frameworks")
        }
        .accentColor(Color(.label))
    }
}

#Preview {
    FrameworkGridView()
}
