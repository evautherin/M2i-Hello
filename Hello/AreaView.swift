//
//  AreaView.swift
//  Hello
//
//  Created by Etienne Vautherin on 20/02/2024.
//

import SwiftUI

struct AreaView: View {
    @Bindable var model = AreaModel()
    
    var body: some View {
        VStack {
            LengthView(label: "Width", value: $model.width)
            LengthView(label: "Height", value: $model.height)
            Text("Area: \(model.areaString)")
        }
    }
}

#Preview {
    AreaView()
}
