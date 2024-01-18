//
//  ContentView.swift
//  CheckYourPrivilege
//
//  Created by William Bateman on 1/16/24.
//

import SwiftUI
import Charts

struct BarChartView: View {
    
    var viewModel = BarChartViewModel()
    
    @State var chartData: [BarChartData]
    @State var cData2: [BarChartData]
    @GestureState private var currentScale: CGFloat = 1.0

    var body: some View {
        VStack {
            Chart {
                ForEach(chartData) { datum in
                    if datum.value < 0 {
                        BarMark(
                            x: .value("", datum.label),
                            y: .value("", datum.value)
                        )
                        .foregroundStyle(.red)
                    } else {
                        BarMark(
                            x: .value("", datum.label),
                            y: .value("", datum.value)
                        )
                        .foregroundStyle(.green)
                    }
                }
                RuleMark(
                    y: .value("Opression", 0)
                )
                .foregroundStyle(.red)
            }
            .chartXAxisLabel(position: .bottom, alignment: .center) {
                Text("Identities")
                    .font(.system(size: 50))
            }
            .chartYAxisLabel(position: .leading, alignment: .center) {
                Text("Privilege")
                    .font(.system(size: 50))
            }
        }
        .scaleEffect(currentScale)
        .gesture(
            MagnificationGesture()
                .updating($currentScale, body: { (value, state, _) in
                    state = value
                })
        )
        .navigationTitle("Check Your Privilege")
    }
}
