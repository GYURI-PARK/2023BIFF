//
//  SubListView.swift
//  2023BIFF
//
//  Created by GYURI PARK on 2023/09/18.
//

import SwiftUI

struct SubListView: View {
    
    let movie: Movie
    @ObservedObject private var vm = SubListViewModel()
    @State private var showModal = false
    
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            
            VStack(alignment: .leading, spacing: 30) {
                
                VStack(alignment: .center) {
                    Text(movie.name)
                        .foregroundColor(.red)
                        .font(.largeTitle)
                        .padding(10)
                    
                    Text(movie.description)
                        .foregroundColor(.gray)
                        .font(.caption2)
                }
                .frame(width: 350)
                
                ScrollView(showsIndicators: false) {
        
                    ForEach(0..<movie.title.count, id: \.self) { index in
                        Button{
                            self.showModal = true
                        } label: {
                            VStack(alignment: .leading, spacing: 30) {
                                
                                HStack(spacing: 30) {
                                    Image(systemName: "arrow.forward")
                                        .foregroundColor(.white)
                                    
                                    VStack(alignment: .leading) {
                                        Text(movie.title[index])
                                            .foregroundColor(.white)
                                        
                                        Text(movie.eng[index])
                                            .foregroundColor(.gray)
                                    }
                                    
                                    Spacer()
                                    
                                    VStack(alignment: .trailing) {
                                        Text(movie.directorNm[index])
                                            .foregroundColor(.white)
                                        
                                        Text(movie.directorEng[index])
                                            .foregroundColor(.gray)
                                    }
                                }
                                .frame(maxWidth: 350)
                                
                                Rectangle()
                                    .frame(width: 350, height: 1)
                                    .foregroundColor(.white)
                            }
                        }
                        .sheet(isPresented: self.$showModal) {
                            // MovieListView에서 넘어온 classification이랑 index를 받아서 modalview정보 변경하면 될듯...?
                            ModalView()
                                .presentationDetents([.medium])
                        }
                    }
                    Spacer()
                    
                }
            }
        }
    }
}



//struct SubListView_Previews: PreviewProvider {
//    static var previews: some View {
//        SubListView()
//    }
//}
