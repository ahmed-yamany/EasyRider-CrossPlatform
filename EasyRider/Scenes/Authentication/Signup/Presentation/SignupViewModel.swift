//
//  SignupViewModel.swift
//  EasyRider
//
//  Created by Ahmed Yamany on 21/06/2024.
//

import SwiftUI

@MainActor
protocol SignupViewModelProtocol: ObservableObject {
    var name: String { get set }
    var email: String { get set }
    var gender: Gender { get set }
}

@MainActor
final class SignupViewModel: SignupViewModelProtocol {
    @Published var name: String = ""
    @Published var email: String = ""
    @Published var gender: Gender = .male
    
    private let useCase: SignupUseCaseProtocol
    init(useCase: SignupUseCaseProtocol) {
        self.useCase = useCase
    }
}
