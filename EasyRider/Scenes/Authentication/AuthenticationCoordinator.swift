//
//  AuthenticationCoordinator.swift
//  EasyRider
//
//  Created by Ahmed Yamany on 18/06/2024.
//

import SwiftUI
import Coordinator

protocol AuthenticationCoordinatorProtocol: UIHostingCoordinator {
    func navigateToSignup()
    func navigateToSignIn()
}

struct AuthenticationCoordinator: AuthenticationCoordinatorProtocol {
    @ObservedObject var router: UIHostingRouter
    
    init(router: UIHostingRouter) {
        self._router = ObservedObject(wrappedValue: router)
    }
    
    var body: some View {
        SignupCoordinator(router: router)
    }
    
    func start() {
        navigateToSignup()
    }
    
    func navigateToSignup() {
        SignupCoordinator(router: router).start()
    }
    
    func navigateToSignIn() {
        
    }
}

#Preview {
    AuthenticationCoordinator(router: .init())
}
