//
//  ContentView.swift
//  Jogsprt
//
//  Created by Naoki Matsumoto on 2021/06/28.
//

import SwiftUI

struct JogsprtDetail: View {
    @EnvironmentObject var userData: UserData
    var jogsprt: Jogsprt

    var jogsprtIndex: Int {
        userData.Jogsprts.firstIndex(where: { $0.id == jogsprt.id })!
    }
    
    var body: some View {
        VStack {
//            MapView(coordinate: jogsprt.locationCoordinate)
//                .edgesIgnoringSafeArea(.top)
//                .frame(height: UIScreen.main.bounds.size.width/4)
            ScrollView(.vertical, showsIndicators: true){
                VStack(alignment: .center) {
                    HStack {
                        Spacer()
                        Text(jogsprt.name)
                            .font(.largeTitle)
                            .padding()
                            .edgesIgnoringSafeArea(.top)
                        
                        Button(action: {
                            // isFavoriteを切り替える
                            self.userData.Jogsprts[self.jogsprtIndex].isFavorite.toggle()
                        }) {
                            // もしお気に入りならば
                            if self.userData.Jogsprts[self.jogsprtIndex].isFavorite {
                                // 塗り潰しされたスター
                                Image(systemName: "star.fill")
                                    .foregroundColor(Color.yellow)
                                    .padding()
                            } else {
                                // そうでなければ白抜きスター
                                Image(systemName: "star")
                                    .foregroundColor(Color.gray)
                                    .padding()
                            }
                        }
                    }
                    Spacer(minLength: 25)
                    VStack (alignment: .leading){
                        Text("距離\(jogsprt.distance)M")
                            .font(.title)
                        
                        Spacer()
                        
                        Text("標高\(jogsprt.elevation)M")
                            .font(.title)
                        
                        Spacer()
                        
                        Text("消費カロリー\(jogsprt.calorie)kcal")
                            .font(.title)
                        
                        Spacer()
                        
                        Text("最寄り駅：\(jogsprt.station)")
                            .font(.title)
                        
                        Spacer()

                    }
                    .frame(width: UIScreen.main.bounds.size.width*0.9,alignment: .leading)
                    Spacer(minLength: 25)
                    
                    Text("詳細画像")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    CircleImage(image: jogsprt.image)
                    
                    Spacer(minLength: 25)
                    
                    Text("マップ")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    
                    MapView(coordinate: jogsprt.locationCoordinate)
                        .edgesIgnoringSafeArea(.top)
                        .frame(height: UIScreen.main.bounds.size.width)
                   
                }
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        JogsprtDetail(jogsprt: jogsprtData[0])
            .environmentObject(UserData())
    }
}
