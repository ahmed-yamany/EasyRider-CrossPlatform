//
//  EasyRider_CrossPlatformApp.swift
//  EasyRider-CrossPlatform
//
//  Created by Ahmed Yamany on 12/06/2024.
//

import SwiftUI
import Settings

@main
struct EasyRider_CrossPlatformApp: App {
    @ObservedObject var settings = Settings.shared

    var body: some Scene {
        WindowGroup {
            ERCoordinator()
                .environmentSettings(settings)
        }
    }
}
