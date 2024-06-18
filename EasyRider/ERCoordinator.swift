//
//  ERCoordinator.swift
//  EasyRider
//
//  Created by Ahmed Yamany on 18/06/2024.
//

import SwiftUI
import Routing

struct ERCoordinator: View {
    @EnvironmentObject private var router: Router<Routers>
    
    var body: some View {
        Routers.onBoarding
    }
}

enum Routers: Routable {
    case onBoarding
    case authentication
    
    var body: some View {
        switch self {
            case .onBoarding:
                OnboardingCoordinator()
            case .authentication:
                AuthenticationCoordinator()
        }
    }
}

#Preview {
    ERCoordinator()
}
