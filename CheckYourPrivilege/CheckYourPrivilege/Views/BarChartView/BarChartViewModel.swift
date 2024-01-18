//
//  BarChartViewModel.swift
//  CheckYourPrivilege
//
//  Created by William Bateman on 1/17/24.
//

import Foundation

class BarChartViewModel: ObservableObject {
    let sampleData = [
        BarChartData(label: "Jan", value: 200),
        BarChartData(label: "Feb", value: 300),
        BarChartData(label: "Mar", value: 250),
        // Add more data as needed
    ]
}
