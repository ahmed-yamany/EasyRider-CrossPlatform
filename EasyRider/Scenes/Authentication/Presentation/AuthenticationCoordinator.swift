//
//  AuthenticationCoordinator.swift
//  EasyRider
//
//  Created by Ahmed Yamany on 18/06/2024.
//

import SwiftUI
import Coordinator

protocol AuthenticationCoordinatorProtocol: UIHostingCoordinator {
    
}

struct AuthenticationCoordinator: AuthenticationCoordinatorProtocol {
    @StateObject private var viewModel: AuthenticationViewModel
    @ObservedObject var router: UIHostingRouter
    
    init(router: UIHostingRouter) {
        let useCase = AuthenticationUseCase()
        let viewModel = AuthenticationViewModel(useCase: useCase)
        self._viewModel = StateObject(wrappedValue: viewModel)
        self._router = ObservedObject(wrappedValue: router)
    }
    
    var body: some View {
        AuthenticationView(coordinator: self, viewModel: viewModel)
    }
    
    func start() {
        router.push(self)
    }
}

#Preview {
    AuthenticationCoordinator(router: .init())
}
