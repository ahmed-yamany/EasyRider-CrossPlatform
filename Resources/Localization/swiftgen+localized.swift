//
//  swiftgen+localized.swift
//  EasyRider
//
//  Created by Ahmed Yamany on 14/06/2024.
//

import Foundation
import Settings

func localized(forKey key: String, table: String, fallbackValue value: String) -> String {
    swiftgen_localized(forKey: key, table: table, fallbackValue: value)
}
