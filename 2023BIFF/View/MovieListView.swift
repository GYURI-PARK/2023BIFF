//
//  MovieListView.swift
//  2023BIFF
//
//  Created by GYURI PARK on 2023/09/18.
//

import SwiftUI

struct MovieListView: View {
    
    @ObservedObject private var vm = MovieListViewModel()
    
    var body: some View {
        NavigationStack {
            
            ZStack {
                Color.black
                    .ignoresSafeArea()
                
                List {
                    ForEach(vm.classifications) { classification in
                        NavigationLink(destination: SubListView(movieTitle: classification.movieTitle, movieEng: classification.movieEng, directorNm: classification.directorNm, directorEng: classification.directorNm, runningTime: classification.runningTime))
                        {
                            VStack (alignment: .leading, spacing: 15){
                                Text(classification.title)
                                    .font(.title2)

                                Text(classification.description)
                                    .font(.caption)
                            }
                        }
                        
                    }
                    .frame(maxHeight: 80)
                }
                .listStyle(.automatic)
            }
        }
    }
}

//struct MovieListView_Previews: PreviewProvider {
//    static var previews: some View {
//        MovieListView()
//    }
//}
