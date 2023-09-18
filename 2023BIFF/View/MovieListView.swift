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
        
        ZStack {
            Color.black
                .ignoresSafeArea()
            
            List {
                    ForEach(vm.classifications) { classification in
                        if classification.movieTitle.count > 0,
                           classification.movieTitle.count == classification.movieEng.count,
                           classification.movieTitle.count == classification.directorNm.count,
                           classification.movieTitle.count == classification.directorEng.count,
                           classification.movieTitle.count == classification.runningTime.count {
                            
                            let id = classification.id
                            let name = classification.title
                            let description = classification.description
                            let title = classification.movieTitle
                            let eng = classification.movieEng
                            let directorNm = classification.directorNm
                            let directorEng = classification.directorEng
                            let runningTime = classification.runningTime
                            
                            let movieSet = Movie(id: id,
                                                 name: name,
                                                 description: description,
                                                 title: title,
                                                 eng: eng,
                                                 directorNm: directorNm,
                                                 directorEng: directorEng,
                                                 runningTime: runningTime)
                            
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
//                .frame(maxHeight: 80)
            }
            .background(.black)
            .scrollContentBackground(.hidden)
            .listStyle(.sidebar)
        }
        
    }
}

//struct MovieListView_Previews: PreviewProvider {
//    static var previews: some View {
//        MovieListView()
//    }
//}
