//
//  ContentView.swift
//  CelsiusToFahrenheit
//
//  Created by Shakira Reid-Thomas on 12/19/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var celsius = 0.0
    @State private var fahrenheit = 0.0
    
    var fahrenheitConversion: Double {
        let fahtocel = (fahrenheit - 32) / 1.8
        return fahtocel
    }
    
    var celsiusConversion: Double {
        let celtofah = celsius * 1.8 + 32
        return celtofah
    }
    
    var body: some View {
       
        NavigationView{
            Form{
                Section{
                    TextField("Enter Celsius", value: $celsius, format: .number)
                } // End of Section
            header:{
                Text("Enter number here to convert Celsius to Fahrenheit")
            }
                Section{
                    Text(celsiusConversion, format: .number)
                } // End of Section Two
            header: {
                Text("Celsius to fahrenheit result")
                }
                
                Section{
                    TextField("Enter Fahrenheit", value: $fahrenheit, format: .number)
                } // End of Fahrenheit Section
            header:{
                Text("Enter number here to convert Fahrenheit to Celsius")
                }
                Section{
                    Text(fahrenheitConversion, format: .number)
                }
            header:{
                Text("Fahrenheit to Celsius result")
                }
            } // End of Form
            .navigationTitle("Temperature Converter`")
        } // End of NavigationView
        
        
    } // End of Body
} // End of ContentView

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
