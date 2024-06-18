//
//  AuthenticationViewModel.swift
//  EasyRider
//
//  Created by Ahmed Yamany on 18/06/2024.
//

import SwiftUI

@MainActor
protocol AuthenticationViewModelProtocol: ObservableObject {
}

@MainActor
final class AuthenticationViewModel: AuthenticationViewModelProtocol {
    
    let useCase: AuthenticationUseCaseProtocol
    init(useCase: AuthenticationUseCaseProtocol) {
        self.useCase = useCase
    }
}
