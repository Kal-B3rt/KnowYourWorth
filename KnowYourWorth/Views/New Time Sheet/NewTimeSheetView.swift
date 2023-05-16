//
//  NewTimeSheetView.swift
//  KnowYourWorth
//
//  Created by Kenny Albert on 5/15/23.
//

import SwiftUI

struct NewTimeSheetView: View {
    @Binding var FullScreenPresented: Bool
    
    var body: some View {
        NavigationView {
            VStack {
                TopNewTimerView()
                    .padding()
            }
            .navigationBarTitle("New Time Sheet")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button("Cancel") {
                        FullScreenPresented = false
                    }
                }
            }
        }
    }
}




struct NewTimeSheetView_Previews: PreviewProvider {
    static var previews: some View {
        NewTimeSheetView(FullScreenPresented: .constant(true))
    }
}
