//
//  FrameworkGridViewModel.swift
//  FrameworksApp
//
//  Created by Sedat on 25.06.2024.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject{
    var selectedFramework: Framework?{
        didSet{
            isShowingDetailView = true
        }
    }
    @Published var isShowingDetailView = false
    
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
}
