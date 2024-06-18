//
//  AuthenticationView.swift
//  EasyRider
//
//  Created by Ahmed Yamany on 18/06/2024.
//

import SwiftUI
import Settings

struct AuthenticationView<ViewModel: AuthenticationViewModelProtocol, Coordinator: AuthenticationCoordinatorProtocol>: View {
    let coordinator: Coordinator
    @ObservedObject var viewModel: ViewModel
    
    var body: some View {
        VStack {
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.erBackground)
    }
}

#Preview {
    AuthenticationCoordinator()
}
