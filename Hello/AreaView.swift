//
//  AreaView.swift
//  Hello
//
//  Created by Etienne Vautherin on 20/02/2024.
//

import SwiftUI

struct AreaView: View {
    @State var width = 50.0
    @State var height = 50.0
    
    var body: some View {
        let area = width*height
        let areaString = String(format: "Angle: %.2f", area)
        
        VStack {
            LengthView(label: "Width", value: $width)
            LengthView(label: "Height", value: $height)
            Text("Area: \(areaString)")
        }
    }
}

#Preview {
    AreaView()
}
