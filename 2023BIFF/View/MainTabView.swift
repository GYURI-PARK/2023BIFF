//
//  MainTabView.swift
//  2023BIFF
//
//  Created by GYURI PARK on 2023/09/18.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        
        
        TabView {
            MovieListView()
                .tabItem {
                    Image(systemName: "list.bullet")
                    Text("LIST")
                }
            
            MyTimeTableView()
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("MY")
                }
        }
    }
}

//struct MainTabView_Previews: PreviewProvider {
//    static var previews: some View {
//        MainTabView()
//    }
//}
