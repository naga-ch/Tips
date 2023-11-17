//
//  ContentView.swift
//  Tips
//
//  Created by nagarjuna chagarlamudi on 17/11/23.
//

import SwiftUI

struct TipsListView: View {
    @ObservedObject var viewModel = TipsViewModel()
    @State private var searchText = ""
    @Environment(\.colorScheme) var colorScheme
    
    
    var body: some View {
            NavigationView {
                VStack(spacing:0.1) {
                    SearchBar(text: $searchText)
        
                    CardView()
                    
                    List {
                        Section(header: Text("Get Started")
                            .font(.title3)
                            .bold()
                            .textCase(nil)
                            .foregroundStyle(colorScheme == .dark ? Color.white : Color.black)
                        ) {
                            ForEach(viewModel.tips.filter({ searchText.isEmpty ? true : $0.name.contains(searchText) })) { tip in
                                NavigationLink(destination: TipDetailView(tip: tip)) {
                                    HStack {
                                        LinearGradient(gradient: tip.gradient, startPoint: .topLeading, endPoint: .bottomTrailing)
                                            .mask(tip.imageName.resizable())
                                            .frame(width: 22, height: 22)
                                        
                                        Text(tip.name)
                                    }
                                }
                            }
                        }
                        
                        Section(header: Text("Next Steps")
                            .font(.title3)
                            .bold()
                            .textCase(nil)
                            .listRowBackground(Color(UIColor.systemBackground))
                            .foregroundStyle(colorScheme == .dark ? Color.white : Color.black)
                        ) {
                            ForEach(viewModel.otherTips.filter({ searchText.isEmpty ? true : $0.name.contains(searchText) })) { tip in
                                NavigationLink(destination: TipDetailView(tip: tip)) {
                                    HStack {
                                        LinearGradient(gradient: tip.gradient, startPoint: .topLeading, endPoint: .bottomTrailing)
                                            .mask(tip.imageName.resizable())
                                            .frame(width: 22, height: 22)
                                        
                                        
                                        Text(tip.name)
                                    }
                                }
                            }
                        }
                        
                        Section(header: Text("Discover More")
                            .font(.title3)
                            .bold()
                            .textCase(nil)
                            .foregroundStyle(colorScheme == .dark ? Color.white : Color.black)
                        ) {
                            ForEach(viewModel.otherTips2.filter({ searchText.isEmpty ? true : $0.name.contains(searchText) })) { tip in
                                NavigationLink(destination: TipDetailView(tip: tip)) {
                                    HStack {
                                        LinearGradient(gradient: tip.gradient, startPoint: .topLeading, endPoint: .bottomTrailing)
                                            .mask(tip.imageName.resizable())
                                            .frame(width: 22, height: 22)
                                        
                                        
                                        Text(tip.name)
                                    }
                                }
                            }
                        }
                        
                        Section(header: Text("Photos & Camera")
                            .font(.title3)
                            .bold()
                            .textCase(nil)
                            .foregroundStyle(colorScheme == .dark ? Color.white : Color.black)
                        ) {
                            ForEach(viewModel.otherTips3.filter({ searchText.isEmpty ? true : $0.name.contains(searchText) })) { tip in
                                NavigationLink(destination: TipDetailView(tip: tip)) {
                                    HStack {
                                        LinearGradient(gradient: tip.gradient, startPoint: .topLeading, endPoint: .bottomTrailing)
                                            .mask(tip.imageName.resizable())
                                            .frame(width: 22, height: 22)
                                        
                                        Text(tip.name)
                                    }
                                }
                            }
                        }
                        
                        Section(header: Text("User Guides")
                            .font(.title3)
                            .bold()
                            .textCase(nil)
                            .foregroundStyle(colorScheme == .dark ? Color.white : Color.black)
                        ) {
                            ForEach(viewModel.otherTips4.filter({ searchText.isEmpty ? true : $0.name.contains(searchText) })) { tip in
                                NavigationLink(destination: TipDetailView(tip: tip)) {
                                    HStack {
                                        LinearGradient(gradient: tip.gradient, startPoint: .topLeading, endPoint: .bottomTrailing)
                                            .mask(tip.imageName.resizable())
                                            .frame(width: 20, height: 24)
                                        
                                        Text(tip.name)
                                    }
                                }
                            }
                        }
                    }
                    .listStyle(.automatic)
                    .navigationBarTitle("Tips")
                }
                .background(Color(colorScheme == .dark ? Color.black : Color(.systemGray6)))
            }
        }
    }
    
    struct TipsListView_Previews: PreviewProvider {
        static var previews: some View {
            TipsListView()
        }
    }
    
    struct SearchBar: View {
        @Binding var text: String
        
        var body: some View {
            HStack {
                Image(systemName: "magnifyingglass")
                    .foregroundColor(Color(.systemGray))
                TextField("Search", text: $text)
                Image(systemName: "mic.fill")
                    .foregroundColor(Color(.systemGray))
            }
            .padding(7)
            .background(Color(.systemGray5))
            .cornerRadius(10)
            .padding()
        }
    }
    
    struct CardView: View {
        @State private var isAnimated = false
        
        var body: some View {
            Image("setup")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .foregroundColor(Color(UIColor.systemBackground))
                .cornerRadius(10)
                .padding()
        }
    }
















