//
//  ERCoordinator.swift
//  EasyRider
//
//  Created by Ahmed Yamany on 18/06/2024.
//

import SwiftUI
import Coordinator

struct ERCoordinator: UIHostingCoordinator {
    @StateObject var router: UIHostingRouter = .init()
    
    var body: some View {
        NavigationControllerView(router: router)
            .onAppear {
                start()
            }
    }
    
    func start() {
        OnboardingCoordinator(router: router).start()
    }
}

#Preview {
    ERCoordinator()
}
