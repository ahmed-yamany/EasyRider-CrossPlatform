//
//  ERCoordinator.swift
//  EasyRider
//
//  Created by Ahmed Yamany on 18/06/2024.
//

import SwiftUI

struct ERCoordinator: View {
    
    var body: some View {
        NavigationStack {
            onboarding
        }
    }
    
    var onboarding: some View {
        OnboardingCoordinator()
    }
}

#Preview {
    ERCoordinator()
}
