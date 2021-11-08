//
//  UI1.swift
//  Jogsprt
//
//  Created by Naoki Matsumoto on 2021/06/28.
//

import SwiftUI

struct UI1: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: true){
            Spacer(minLength: 25)
            Text("ランニング初心者におすすめの準備運動")
                .font(.title)
                .padding()
            Spacer(minLength: 25)
            
            VStack (alignment: .leading){
                
                Text("○屈伸運動")
                    .font(.title)
                Spacer()
                Text("①手を膝に当てて支えながら、4～5秒かけてゆっくりと膝を曲げる\n②膝の裏を意識しながら、4～5秒かけてゆっくりと膝を伸ばす\n①～②を10回繰り返しましょう。")
                    .font(.body)
                
                Spacer(minLength: 25)
            
                Text("○アキレス腱伸ばし")
                    .font(.title)
                Spacer()
                Text("①両足のつま先をまっすぐ正面に向けて、足を前後に開く\n②重心をゆっくりと落として、後ろ足のアキレス腱からふくらはぎ全体を4～5秒間伸ばす\n前後の足を入れ替えて、両アキレス腱を5回ずつ伸ばしましょう。")
                    .font(.body)
                Spacer(minLength: 25)
            }
            .frame(width: UIScreen.main.bounds.size.width*0.9,alignment: .leading)
            
            VStack (alignment: .leading){
                Text("○腰を回転させる")
                    .font(.title)
                Spacer()
                Text("①足を肩幅よりも少し大き目に広げて、両手を腰に添える\n②上半身を動かさないで、円を描くように腰を時計回りでゆっくりと回転させる\n20回まわしたら、反対回りでも回転させましょう。")
                    .font(.body)
                Spacer(minLength: 25)

                Text("○肩回しをする")
                    .font(.title)
                Spacer()
                Text("①右手を右肩、左手を左肩に軽く乗せる\n②背筋を伸ばして、肩を前から後ろに円を描きながら回す\n10回まわしたら反対回りの、後ろから前にも回しましょう")
                    .font(.body)
                Spacer(minLength: 25)
            }
            .frame(width: UIScreen.main.bounds.size.width*0.9,alignment: .leading)
                VStack (alignment: .leading){
                Text("○手首や足首をほぐす")
                    .font(.title)
                Spacer()
                Text("①つま先を立てて、足首を1周5秒かけてゆっくりと回す\n②同時に両手を組んで、手首を1周5秒かけてゆっくりと回す\n片足首を5回ずつ、手首も回転方向を変えて5回ずつ回しましよう。")
                    .font(.body)
                Spacer(minLength: 25)

                
                
            
                
                
            }
            .frame(width: UIScreen.main.bounds.size.width*0.9,alignment: .leading)
        }
    }
}

struct UI1_Previews: PreviewProvider {
    static var previews: some View {
        UI1()
    }
}
