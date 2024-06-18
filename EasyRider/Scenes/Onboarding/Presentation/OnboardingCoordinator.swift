//
//  OnboardingCoordinator.swift
//  EasyRider
//
//  Created by Ahmed Yamany on 18/06/2024.
//

import SwiftUI
import Routing

protocol OnboardingCoordinatorProtocol {
    func navigateToAuthentication()
}

struct OnboardingCoordinator: View, OnboardingCoordinatorProtocol {
    @StateObject var viewModel: OnboardingViewModel
    @EnvironmentObject private var router: Router<Routers>
    
    init() {
        let useCase = OnboardingUseCase()
        let viewModel = OnboardingViewModel(useCase: useCase)
        self._viewModel = StateObject(wrappedValue: viewModel)
    }
    
    var body: some View {
        OnboardingView(coordinator: self, viewModel: viewModel)
    }
    
    func navigateToAuthentication() {
        router.navigate(to: .authentication)
    }
}
