//
//  UseData.swift
//  Landmarks
//
//  Created by Naoki Matsumoto on 2021/06/27.
//

import SwiftUI
import Combine
 
final class UserData: ObservableObject  {
    @Published var showFavoritesOnly = false
    @Published var Jogsprts = jogsprtData
}
