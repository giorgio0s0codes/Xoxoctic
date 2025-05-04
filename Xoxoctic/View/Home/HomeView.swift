//
//  HomeView.swift
//  Xoxoctic
//
//  Created by Giorgio Oso on 04/05/25.
//

import SwiftUI

struct HomeView: View {
    
    @State var isSubscription: Bool = true
    
    var body: some View {
        ScrollView {
            
            ZStack(alignment: .center) {
                
                Rectangle()
                    .foregroundColor(.gray70.opacity(0.5))
                    .frame(width: .screenWidth, height: .widthPer(per: 1.1) )
                    .cornerRadius(25)
                
                
                Image("home_bg")
                    .resizable()
                    .scaledToFit()
                
                VStack(spacing: .widthPer(per: 0.07)){
                    Image("app_logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: .widthPer(per: 0.25) )
                    
                    Text("$1,234")
                        .font(.customfont(.bold, fontSize: 40))
                        .foregroundColor(.white)
                    
                    Text("This month bills")
                        .font(.customfont(.semibold, fontSize: 12))
                        .foregroundColor(.gray40)
                    
                    Button {
                       
                    } label: {
                        Text("See your budget")
                            .font(.customfont(.semibold, fontSize: 12))
                    }
                    .foregroundColor( .white )
                    
                    .padding(10)
                    .background(Color.gray60.opacity(  0.2 ))
                    .overlay {
                        RoundedRectangle(cornerRadius:  16)
                            .stroke( Color.gray70, lineWidth: 1)
                    }
                    .cornerRadius(16)
                }
                
                .padding()
                
            }
            .frame(width: .screenWidth, height: .widthPer(per: 1.1) )
            
            HStack{
                
                SegmentButton(title: "Your Subscription", isActive: isSubscription) {
                    isSubscription.toggle()
                }
                
                SegmentButton(title: "Upcomming bills", isActive: !isSubscription) {
                    isSubscription.toggle()
                }
                
            }
            .padding(8)
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 50, maxHeight: 50)
            .background(Color.black)
            .cornerRadius(15)
            .padding()
            
        }
        .background(Color.grayC)
        .ignoresSafeArea()
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
