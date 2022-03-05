//
//  PlatesApp.swift
//  Plates
//
//  Created by Anson Wan on 2022-02-24.
//

import SwiftUI

@main
struct PlatesApp: App {
    var body: some Scene {
        WindowGroup {
            TabView {
                MyWeightsView()
                    .tabItem {
                        Image(systemName: "scalemass.fill")
                        Text("My Weights")
                    }
                
                AddWeightsView(viewModel: AddWeightsViewModel())
                    .tabItem {
                        Image(systemName: "scalemass.fill")
                        Text("Add Weights")
                    }
                
                MyMovementsView()
                    .tabItem {
                        Image(systemName: "scalemass.fill")
                        Text("My Movements")
                    }
                
                
                MovementListView(movementList: MovementListViewModel().movementList)
                    .tabItem {
                        Image(systemName: "figure.walk")
                        Text("Movements")
                    }
                
                // History View
                
                
                
                // Workout View
            }
        }
    }
}
