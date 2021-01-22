//
//  InfoView.swift
//  LakshayCard
//
//  Created by Lakshay Bhatia on 20/12/20.
//

import SwiftUI


struct InfoView: View {
    let text: String
    let ImageName: String
    let destination: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 50)
            .fill(Color.white)
            .frame(height: 40)
            .overlay(HStack {
                Image(systemName: ImageName).foregroundColor(.green)
                Link(text, destination: URL(string: destination)!).foregroundColor(Color(red: 0.09, green: 0.63, blue: 0.52))
            })
            .padding(.all)
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "Hello", ImageName: "phone.fill", destination: "abc")
            .previewLayout(.sizeThatFits)
    }
}
