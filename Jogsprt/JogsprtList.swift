//
//  JogsprtList.swift
//  Jogsprt
//
//  Created by Naoki Matsumoto on 2021/06/28.
//

import SwiftUI

struct JogsprtList: View {
    @EnvironmentObject var userDate: UserData
    
    var body: some View {
        NavigationView{
            List {
                Toggle(isOn: $userDate.showFavoritesOnly) {
                    Text("お気に入り")
                }
                
                ForEach(userDate.Jogsprts) { landmark in
                    if !self.userDate.showFavoritesOnly || landmark.isFavorite {
                        NavigationLink(destination: JogsprtDetail(jogsprt: landmark)) {
                            JogsprtRow(landmark: landmark)
                        }
                    }
                }
            }
            .navigationBarTitle(Text("ジョギングコース"))
        }
    }
}
 
struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE"], id: \.self) { deviceName in
            JogsprtList()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
                .environmentObject(UserData())
        }
    }
}
