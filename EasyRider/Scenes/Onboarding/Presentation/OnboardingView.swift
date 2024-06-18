//
//  OnboardingView.swift
//  EasyRider
//
//  Created by Ahmed Yamany on 18/06/2024.
//

import SwiftUI

struct OnboardingView<ViewModel: OnboardingViewModelProtocol>: View {
    let coordinator: OnboardingCoordinator
    @ObservedObject var viewModel: ViewModel
    
    var body: some View {
        VStack {
            Text(viewModel.text)
        }
    }
}
