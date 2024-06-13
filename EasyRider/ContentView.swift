//
//  ContentView.swift
//  EasyRider-CrossPlatform
//
//  Created by Ahmed Yamany on 12/06/2024.
//

import SwiftUI

struct ContentView: View {
//    @Environment(\.locale) var local
    var body: some View {
        VStack(alignment: .leading) {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            
            Text(L10n.Login.title)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .font(FontFamily.Poppins.medium.swiftUIFont(size: 20))
    }
}

#Preview {
    ContentView()
}
