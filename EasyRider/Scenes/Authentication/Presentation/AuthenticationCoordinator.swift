//
//  AuthenticationCoordinator.swift
//  EasyRider
//
//  Created by Ahmed Yamany on 18/06/2024.
//

import SwiftUI

protocol AuthenticationCoordinatorProtocol {
    
}

struct AuthenticationCoordinator: View, AuthenticationCoordinatorProtocol {
    @StateObject var viewModel: AuthenticationViewModel
    
    init() {
        let useCase = AuthenticationUseCase()
        let viewModel = AuthenticationViewModel(useCase: useCase)
        self._viewModel = StateObject(wrappedValue: viewModel)
    }
    
    var body: some View {
        AuthenticationView(coordinator: self, viewModel: viewModel)
            .presentationDetents([.height(100)])
    }
}

#Preview {
    AuthenticationCoordinator()
}
