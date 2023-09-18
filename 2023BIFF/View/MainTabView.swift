//
//  MainTabView.swift
//  2023BIFF
//
//  Created by GYURI PARK on 2023/09/18.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        
        NavigationStack{
            TabView {
                MovieListView()
                    .tabItem {
                        Image(systemName: "1.square.fill")
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
    
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
