//
//  EasyRider_CrossPlatformApp.swift
//  EasyRider-CrossPlatform
//
//  Created by Ahmed Yamany on 12/06/2024.
//

import SwiftUI

@main
struct EasyRider_CrossPlatformApp: App {
    @ObservedObject var app = AppSettings.shared
    
    var body: some Scene {
        WindowGroup {
            VStack {
                Button("Change Language") {
                    if app.language == .en {
                        app.language = .ar
                    } else {
                        app.language = .en
                    }
                }
                
                ContentView()
                    .environment(\.locale, app.language.local)
                    .environment(\.layoutDirection, app.language.layoutDirection)
                    .environment(\.language, app.language)
                    .id(app.language)
            }
        }
    }
}
