//
//  AreaModel.swift
//  Hello
//
//  Created by Etienne Vautherin on 20/02/2024.
//

import SwiftUI

@Observable
class AreaModel {
    var width = 50.0
    var height = 50.0
    
    var area: Double { width*height }
    var areaString: String { String(format: "%.2f", area) }
}
