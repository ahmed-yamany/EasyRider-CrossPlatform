//
//  OnboardingCoordinator.swift
//  EasyRider
//
//  Created by Ahmed Yamany on 18/06/2024.
//

import SwiftUI

struct OnboardingCoordinator: View {
    @StateObject var viewModel: OnboardingViewModel
    
    init() {
        let useCase = OnboardingUseCase()
        let viewModel = OnboardingViewModel(useCase: useCase)
        self._viewModel = StateObject(wrappedValue: viewModel)
    }
    
    var body: some View {
        OnboardingView(coordinator: self, viewModel: viewModel)
    }
}
