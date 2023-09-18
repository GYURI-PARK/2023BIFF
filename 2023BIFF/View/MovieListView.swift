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
                        if let firstTitle = classification.movieTitle.first,
                           let firstEng = classification.movieEng.first,
                           let firstDirectorNm = classification.directorNm.first,
                           let firstDirectorEng = classification.directorEng.first,
                           let firstRunningTime = classification.runningTime.first {
                            
                            let movieSet = Movie(id: classification.id,
                                                 title: [firstTitle],
                                                 eng: [firstEng],
                                                 directorNm: [firstDirectorNm],
                                                 directorEng: [firstDirectorEng],
                                                 runningTime: [firstRunningTime])
                            
                            
                            NavigationLink(destination: SubListView(movie: movieSet))
                            {
                                VStack (alignment: .leading, spacing: 15){
                                    Text(classification.title)
                                        .font(.title2)
                                    
                                    Text(classification.description)
                                        .font(.caption)
                                }
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
