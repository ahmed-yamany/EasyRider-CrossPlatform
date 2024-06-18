//
//  EasyRider_CrossPlatformApp.swift
//  EasyRider-CrossPlatform
//
//  Created by Ahmed Yamany on 12/06/2024.
//

import SwiftUI
import Settings
import Routing

@main
struct EasyRider_CrossPlatformApp: App {
    @ObservedObject var settings = Settings.shared
    @StateObject var router: Router<Routers> = Router()

    var body: some Scene {
        WindowGroup {
            RoutingView(stack: $router.stack) {
                ERCoordinator()
            }
            .foregroundStyle(.erContentPrimary)
            .environmentSettings(settings)
            .environmentObject(router)
        }
    }
}
