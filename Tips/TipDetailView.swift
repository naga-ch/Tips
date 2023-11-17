//
//  TipsDetailView.swift
//  Tips
//
//  Created by nagarjuna chagarlamudi on 17/11/23.
//

import SwiftUI

struct TipDetailView: View {
    
    
    let tip: Tips
    
    var body: some View {
        
        ZStack(alignment: .top) {
            LinearGradient(gradient: tip.gradient, startPoint: .bottomLeading, endPoint: .topTrailing)
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing:20){
                tip.imageName
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 50, height: 50)
                    .foregroundColor(.white)
                
                Text(tip.name)
                    .font(.title)
                    .bold()
                    .foregroundColor(.white)
                
                Text(tip.description)
                    .font(.body)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
            }
            Spacer()
        }
    }
}









