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
        ScrollView {
            VStack {
                ForEach(0..<1000, id: \.self) { index in
                    Text("\(index) test")
                        .frame(height: 20)
                        .background(.blue)
                        .onTapGesture {
//                            coordinator.router.selectedDetent(.medium)
                            coordinator.router.sheetCornerRadius(50, animated: true)
                            
                        }
                }
            }
            .background(.erBackground)
        }
        .padding(.top, 60)
        .background(.red)
    }
}

#Preview {
    AuthenticationCoordinator(router: .init())
}
