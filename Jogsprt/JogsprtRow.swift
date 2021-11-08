//
//  JogsprtRow.swift
//  Jogsprt
//
//  Created by Naoki Matsumoto on 2021/06/28.
//

import SwiftUI

struct JogsprtRow: View {
    var landmark: Jogsprt
    
    var body: some View {
        HStack{
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)
            Spacer()
            
            if landmark.isFavorite {
                            Image(systemName: "star.fill")
                                .imageScale(.medium)
                                .foregroundColor(.yellow)
            }
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            JogsprtRow(landmark: jogsprtData[0])
            JogsprtRow(landmark: jogsprtData[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
