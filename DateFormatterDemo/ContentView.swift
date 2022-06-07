//
//  ContentView.swift
//  dateFormatterDemo
//
//  Created by Matt C on 5/20/22.
//

import SwiftUI


struct ContentView: View {
    
    let date = Date();
    let dateFormatter = DateFormatter();
    let dateFormatter2 = DateFormatter();
    let dateFormatter3 = DateFormatter();
    
    var body: some View {
        
        dateFormatter.dateStyle = .full
        dateFormatter.timeStyle = .full
        
        dateFormatter2.dateFormat = "MMMM-dd-yyyy'T'h:mm:ss"
        
        dateFormatter3.locale = Locale(identifier: "nl")
        dateFormatter3.dateStyle = .long
        
        return VStack(alignment: .center) {
            Text("DateFormatter").bold()
            Text(dateFormatter.string(from: date))
                .padding(.bottom)
            Text("DateFormatter (w/ dateFormat)").bold()
            Text(dateFormatter2.string(from: date))
                .padding(.bottom)
            Text("DateFormatter (w/ Netherlands locale)").bold()
            Text(dateFormatter3.string(from: date))
                .padding(.bottom)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
