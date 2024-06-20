//
//  OnboardingTabviewModel.swift
//  EasyRider
//
//  Created by Ahmed Yamany on 20/06/2024.
//

import SwiftUI

struct OnboardingTabviewModel: Identifiable, Hashable {
    var id = UUID()
    
    let title: String
    let description: String
    let imageUrl: String
    
    init(title: String, description: String, imageUrl: String) {
        self.title = title
        self.description = description
        self.imageUrl = imageUrl
        self.image = UIImage(imageLiteralResourceName: imageUrl)
    }
    
    var image: UIImage = UIImage()
    
    mutating func updateImage(with image: UIImage) {
        self.image = image
    }
}
