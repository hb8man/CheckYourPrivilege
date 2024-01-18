//
//  GetDataView.swift
//  CheckYourPrivilege
//
//  Created by William Bateman on 1/17/24.
//

import SwiftUI

struct GetDataView: View {
    @StateObject var viewModel = GetDataViewModel()
    
    @State var genderConformingVal = 0.0
    @State var maleVal = 0.0
    @State var whiteVal = 0.0
    @State var europeanVal = 0.0
    @State var heteroVal = 0.0
    @State var wealthAndFinStabilityVal = 0.0
    @State var abledAndGoodMentalHealthVal = 0.0
    @State var credentialedVal = 0.0
    @State var youngVal = 0.0
    @State var attractiveVal = 0.0
    @State var upperMiddleClassVal = 0.0
    @State var anglophoneVal = 0.0
    @State var paleSkinLightVal = 0.0
    @State var gentileNonJewVal = 0.0
    @State var fertileVal = 0.0
    
    var body: some View {
        NavigationStack {
            VStack {
                List {
                    VStack {
                        HStack {
                            Text("Gender Deviance")
                            Spacer()
                            Text("Gender Conforming")
                        }
                        Slider(value: $genderConformingVal, in: -10...10)
                    }
                    .listRowBackground(Color(.clear))
                    .padding(.vertical, 15)
                    
                    VStack {
                        HStack {
                            Text("Female")
                            Spacer()
                            Text("Male")
                        }
                        Slider(value: $maleVal, in: -10...10)
                    }
                    .listRowBackground(Color(.clear))
                    .padding(.vertical, 15)
                    
                    VStack {
                        HStack {
                            Text("Non White")
                            Spacer()
                            Text("White")
                        }
                        Slider(value: $whiteVal, in: -10...10)
                    }
                    .listRowBackground(Color(.clear))
                    .padding(.vertical, 15)
                    
                    VStack {
                        HStack {
                            Text("Non European")
                            Spacer()
                            Text("European")
                        }
                        Slider(value: $europeanVal, in: -10...10)
                    }
                    .listRowBackground(Color(.clear))
                    .padding(.vertical, 15)
                    
                    VStack {
                        HStack {
                            Text("LGBTQ+")
                            Spacer()
                            Text("Heterosexual")
                        }
                        Slider(value: $heteroVal, in: -10...10)
                    }
                    .listRowBackground(Color(.clear))
                    .padding(.vertical, 15)
                    
                    VStack {
                        HStack {
                            Text("Poverty / Financial Insecurity")
                            Spacer()
                            Text("Wealth / Financial Stability")
                        }
                        Slider(value: $wealthAndFinStabilityVal, in: -10...10)
                    }
                    .listRowBackground(Color(.clear))
                    .padding(.vertical, 15)
                    
                    VStack {
                        HStack {
                            Text("Handicapped / Mental Illness")
                            Spacer()
                            Text("Able Bodied / Mental Health")
                        }
                        Slider(value: $abledAndGoodMentalHealthVal, in: -10...10)
                    }
                    .listRowBackground(Color(.clear))
                    .padding(.vertical, 15)
                    
                    VStack {
                        HStack {
                            Text("Non Literate")
                            Spacer()
                            Text("Credentialed")
                        }
                        Slider(value: $credentialedVal, in: -10...10)
                    }
                    .listRowBackground(Color(.clear))
                    .padding(.vertical, 15)
                    
                    VStack {
                        HStack {
                            Text("Old")
                            Spacer()
                            Text("Young")
                        }
                        Slider(value: $youngVal, in: -10...10)
                    }
                    .listRowBackground(Color(.clear))
                    .padding(.vertical, 15)
                    
                    VStack {
                        HStack {
                            Text("Unattractive")
                            Spacer()
                            Text("Attractive")
                        }
                        Slider(value: $attractiveVal, in: -10...10)
                    }
                    .padding(.vertical, 15)

                    VStack {
                        HStack {
                            Text("Working Class")
                            Spacer()
                            Text("Upper Middle Class+")
                        }
                        Slider(value: $upperMiddleClassVal, in: -10...10)
                    }
                    .padding(.vertical, 15)

                    VStack {
                        HStack {
                            Text("Non English Speaking")
                            Spacer()
                            Text("English Speaking")
                        }
                        Slider(value: $anglophoneVal, in: -10...10)
                    }
                    .padding(.vertical, 15)

                    VStack {
                        HStack {
                            Text("Dark Skinned")
                            Spacer()
                            Text("Pale / Light Skin")
                        }
                        Slider(value: $paleSkinLightVal, in: -10...10)
                    }
                    .padding(.vertical, 15)

                    VStack {
                        HStack {
                            Text("Jewish")
                            Spacer()
                            Text("Non Jewish")
                        }
                        Slider(value: $gentileNonJewVal, in: -10...10)
                    }
                    .padding(.vertical, 15)

                    VStack {
                        HStack {
                            Text("Infertile")
                            Spacer()
                            Text("Fertile")
                        }
                        Slider(value: $fertileVal, in: -10...10)
                    }
                    .padding(.vertical, 15)

                }
                .listStyle(.inset)
                .edgesIgnoringSafeArea([])
                
                
                /*
                 
                 @State var genderConformingVal = 0.0
                 @State var maleVal = 0.0
                 @State var whiteVal = 0.0
                 @State var europeanVal = 0.0
                 @State var heteroVal = 0.0
                 @State var wealthAndFinStabilityVal = 0.0
                 @State var abledAndGoodMentalHealthVal = 0.0
                 @State var credentialedVal = 0.0
                 @State var youngVal = 0.0
                 @State var attractiveVal = 0.0
                 @State var upperMiddleClassVal = 0.0
                 @State var anglophoneVal = 0.0
                 @State var paleSkinLightVal = 0.0
                 @State var gentileNonJewVal = 0.0
                 @State var fertileVal = 0.0
                 */
                NavigationLink("Graph Data") {
                    var newArray = [
                        BarChartData(label: "Gender Conforming", value: genderConformingVal),
                        BarChartData(label: "Male", value: maleVal),
                        BarChartData(label: "White", value: whiteVal),
                        BarChartData(label: "European", value: europeanVal),
                        BarChartData(label: "Heterosexual", value: heteroVal),
                        BarChartData(label: "Wealth / Fin. Stability", value: wealthAndFinStabilityVal),
                        BarChartData(label: "Abled", value: abledAndGoodMentalHealthVal),
                        BarChartData(label: "Credentialed", value: credentialedVal),
                        BarChartData(label: "Young", value: youngVal),
                        BarChartData(label: "Attractive", value: attractiveVal),
                        BarChartData(label: "Upper Middle Class+", value: upperMiddleClassVal),
                        BarChartData(label: "English Speaking", value: anglophoneVal),
                        BarChartData(label: "Light Skin", value: paleSkinLightVal),
                        BarChartData(label: "Non Jew", value: gentileNonJewVal),
                        BarChartData(label: "Fertile", value: fertileVal)
                    ]
                    var newArray2 = [
                        BarChartData(label: "Gender Conforming", value: genderConformingVal),
                        BarChartData(label: "Male", value: maleVal),
                        BarChartData(label: "White", value: whiteVal),
                        BarChartData(label: "European", value: europeanVal),
                        BarChartData(label: "Heterosexual", value: heteroVal),
                        BarChartData(label: "Wealth / Fin. Stability", value: wealthAndFinStabilityVal),
                        BarChartData(label: "Abled", value: abledAndGoodMentalHealthVal),
                        BarChartData(label: "Credentialed", value: credentialedVal),
                        BarChartData(label: "Young", value: youngVal),
                        BarChartData(label: "Attractive", value: attractiveVal),
                        BarChartData(label: "Upper Middle Class+", value: upperMiddleClassVal),
                        BarChartData(label: "English Speaking", value: anglophoneVal),
                        BarChartData(label: "Light Skin", value: paleSkinLightVal),
                        BarChartData(label: "Non Jew", value: gentileNonJewVal),
                        BarChartData(label: "Fertile", value: fertileVal)
                    ]
                    BarChartView(chartData: newArray, cData2: newArray2)
                }
                .buttonStyle(.borderedProminent)
                .padding()
            }
            .background(LinearGradient(gradient: Gradient(colors: [.red, .orange, .yellow, .green, .blue, .indigo, .purple]), startPoint: .topLeading, endPoint: .bottomTrailing))
            .edgesIgnoringSafeArea([])
            .edgesIgnoringSafeArea([])
            .navigationTitle("Check Your Privilege")
        }
    }
}

