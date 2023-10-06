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
            ScrollView {
                
                Header
                
                LazyVStack {
                    ForEach(vm.classifications) { classification in
                        if classification.movieTitle.count > 0 {
                            
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
                            
                            NavigationLink {
                                SubListView(movie: movieSet)
                            } label: {
                                VStack {
                                    
                                    Divider()
                                    
                                    HStack {
                                        VStack(alignment: .leading, spacing: 7)  {
                                            Text(classification.title)
                                                .font(.title3)
                                                .fontWeight(.bold)
                                                .multilineTextAlignment(.leading)
                                                .foregroundColor(.black)
                                            
                                            Text(classification.description)
                                                .font(.caption)
                                                .multilineTextAlignment(.leading)
                                                .foregroundColor(.black)
                                        }
                                        .padding(.vertical, 15)
                                        Spacer()
                                        Image(systemName: "chevron.right")
                                            .font(Font.system(size: 30, weight: .light))
                                            .foregroundColor(.black)
                                    }
                                    .padding(.horizontal, 20)
                                }
                            }
                        }
                    }
                }
                .scrollContentBackground(.hidden)
                .navigationTitle("BIFF 공식 상영작")
            }
        }
    }
}
    
private extension MovieListView {
    var Header: some View {
        HStack  {
            Text("부산국제영화제 홈페이지 바로가기")
                .font(.subheadline)
            Spacer()
            
        }
        .padding(.horizontal, 16)
        .padding(.vertical, 30)
    }
}


//struct MovieListView_Previews: PreviewProvider {
//    static var previews: some View {
//        MovieListView()
//    }
//}
