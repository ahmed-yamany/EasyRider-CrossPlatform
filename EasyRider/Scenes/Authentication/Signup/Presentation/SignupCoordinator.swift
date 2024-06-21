//
//  SignupCoordinator.swift
//  EasyRider
//
//  Created by Ahmed Yamany on 21/06/2024.
//

import SwiftUI
import Coordinator

protocol SignupCoordinatorProtocol: UIHostingCoordinator {
    func navigateToSignIn()
    func navigateToPrivacy()
    func navigateToTerms()
}

struct SignupCoordinator: SignupCoordinatorProtocol {
    @ObservedObject var router: UIHostingRouter
    @StateObject private var viewModel: SignupViewModel
    
    init(router: UIHostingRouter) {
        let useCase = SignupUseCase()
        let viewModel = SignupViewModel(useCase: useCase)
        self._viewModel = StateObject(wrappedValue: viewModel)
        self._router = ObservedObject(wrappedValue: router)
    }
    
    var body: some View {
        SignupView(viewModel: viewModel, coordinator: self)
    }
    
    func start() {
        router.setView(self)
    }
    
    func navigateToSignIn() {
        AuthenticationCoordinator(router: router).navigateToSignIn()
    }
    
    func navigateToPrivacy() {
        
    }
    
    func navigateToTerms() {
        
    }
}
