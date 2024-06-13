//
//  swiftgen+localized.swift
//  EasyRider
//
//  Created by Ahmed Yamany on 14/06/2024.
//

import Foundation

func localized(forKey key: String, table: String, fallbackValue value: String) -> String {
    guard let path = Bundle.main.path(forResource: AppSettings.shared.language.rawValue, ofType: "lproj"),
          let bundle = Bundle(path: path) else {
        return value
    }
    return bundle.localizedString(forKey: key, value: value, table: table)
}
