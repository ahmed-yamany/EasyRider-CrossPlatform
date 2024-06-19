//
//  OnboardingCoordinator.swift
//  EasyRider
//
//  Created by Ahmed Yamany on 18/06/2024.
//

import SwiftUI
import Coordinator

protocol OnboardingCoordinatorProtocol: UIHostingCoordinator {
    func navigateToAuthentication()
}

struct OnboardingCoordinator: OnboardingCoordinatorProtocol {
    @StateObject private var viewModel: OnboardingViewModel
    @ObservedObject var router: UIHostingRouter
    
    init(router: UIHostingRouter) {
        let useCase = OnboardingUseCase()
        let viewModel = OnboardingViewModel(useCase: useCase)
        self._viewModel = StateObject(wrappedValue: viewModel)
        self._router = ObservedObject(wrappedValue: router)
    }
    
    var body: some View {
        OnboardingView(coordinator: self, viewModel: viewModel)
    }
    
    func start() {
        router.setView(self)
    }
    
    func navigateToAuthentication() {
        AuthenticationCoordinator(router: router).start()
    }
}
