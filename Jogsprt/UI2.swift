//
//  UI2.swift
//  Jogsprt
//
//  Created by Naoki Matsumoto on 2021/06/28.
//

import SwiftUI

struct UI2: View {
    @State private var selection: Tab = .list
    
    enum Tab {
        case ui1
        case ui3
        case list
    }
    
    var body: some View {
        TabView(selection: $selection) {
            UI1()
                .tag(Tab.ui1)
                .tabItem {
                    Label("warm-up", systemImage: "list.bullet")
                }
            
            UI3()
                .tag(Tab.ui3)
                .tabItem {
                    Label("StopWatch", systemImage: "timer")
                }
            
            JogsprtList()
                .tabItem {
                    Label("List", systemImage: "list.bullet")
                }
                .tag(Tab.list)
        }
    }
}

struct UI2_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            UI2()
                .environmentObject(UserData())
        }
    }
}
