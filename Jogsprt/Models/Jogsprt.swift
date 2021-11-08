//
//  Data.swift
//  Landmarks
//
//  Created by Naoki Matsumoto on 2021/06/27.
//

import SwiftUI
import UIKit
import MapKit

struct Jogsprt: Hashable, Codable, Identifiable{
    
    var id: Int
    var name: String
    fileprivate var imageName: String
    fileprivate var coordinates: Coordinates
    var distance: Int
    var elevation: Int
    var calorie: Int
    var station: String
    var isFavorite: Bool
    
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }
}
 
extension Jogsprt {
    var image: Image {
        ImageStore.shared.image(name: imageName)
    }
}
 
struct Coordinates: Hashable, Codable {
    var latitude: Double
    var longitude: Double
}
