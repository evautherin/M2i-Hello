//
//  LengthView.swift
//  Hello
//
//  Created by Etienne Vautherin on 20/02/2024.
//

import SwiftUI

struct LengthView: View {
    let label: String
    @Binding var value: Double
    
    var body: some View {
        VStack {
            Text("\(label): \(value)")
            Slider(value: $value, in: 0...100.0)
        }
        .padding()
    }
}

#Preview {
    LengthView(label: "Preview", value: .constant(50.0))
}
