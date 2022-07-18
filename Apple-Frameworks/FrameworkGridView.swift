//
//  FrameworkGridView.swift
//  Apple-Frameworks
//
//  Created by Nkosi Yafeu on 7/17/22.
//

import SwiftUI

struct FrameworkGridView: View {
    var body: some View {
        
        let column: [GridItem] = [GridItem(.flexible()),
                                  GridItem(.flexible()),
                                  GridItem(.flexible()),
        ]
        
        LazyVGrid(columns: column) {
            FrameworkTitleView(name: "App Clips", imageName: "app-clip")
            FrameworkTitleView(name: "App Clips", imageName: "app-clip")
            FrameworkTitleView(name: "App Clips", imageName: "app-clip")
            FrameworkTitleView(name: "App Clips", imageName: "app-clip")
            FrameworkTitleView(name: "App Clips", imageName: "app-clip")
            FrameworkTitleView(name: "App Clips", imageName: "app-clip")
        }
       
    }
}

struct FrameworkGridView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridView()
    }
}

struct FrameworkTitleView: View {
    let name: String
    let imageName: String
    
    var body: some View  {
        VStack {
            Image(imageName)
                .resizable()
                .frame(width: 90, height: 90)
            Text(name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
            
        }
        
    }
    
    
}
