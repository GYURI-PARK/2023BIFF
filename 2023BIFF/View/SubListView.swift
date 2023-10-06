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
    @State var num: Int? = nil
    
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            
            VStack(alignment: .center, spacing: 30) {
                
                VStack(alignment: .center) {
                    Text(movie.name)
                        .foregroundColor(.red)
                        .font(.title3)
                        .fontWeight(.bold)
                        .padding(10)
                    
                    Text(movie.description)
                        .foregroundColor(.gray)
                        .font(.footnote)
                        .padding(10)
                }
                .frame(width: 350)
                
                ScrollView(showsIndicators: false) {
        
                    ForEach(0..<movie.title.count, id: \.self) { index in
                        Button{
                            self.showModal = true
                            self.num = index
                        } label: {
                            VStack(alignment: .leading, spacing: 15) {
                                
                                HStack(spacing: 30) {
                            
                                    Image(systemName: "arrow.forward")
                                        .foregroundColor(.white)
                                    
                                    VStack(alignment: .leading) {
                                        Text(movie.title[index])
                                            .foregroundColor(.white)
                                            .multilineTextAlignment(.leading)
                                        
                                        Text(movie.eng[index])
                                            .foregroundColor(.gray)
                                            .lineLimit(1)
                                    }
                                    
                                    Spacer()
                                    
                                    VStack(alignment: .trailing) {
                                        Text(movie.directorNm[index])
                                            .multilineTextAlignment(.leading)
                                            .foregroundColor(.white)
                                            .lineLimit(2)
                                        
                                        Text(movie.directorEng[index])
                                            .foregroundColor(.gray)
                                            .lineLimit(1)
                                    }
                                }
                                .padding(10)
                                
                                Rectangle()
                                    .frame(width: UIScreen.main.bounds.width, height: 1)
                                    .foregroundColor(.white)
                            }
                            .padding(3)
                        }
                        .sheet(isPresented: self.$showModal) {
                            if num != nil {
                                ModalView(index: num!)
                                    .presentationDetents([.medium])
                            } else {
                                // Loading page 필요
                            }
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
