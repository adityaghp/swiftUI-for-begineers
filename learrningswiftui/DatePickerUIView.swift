//
//  DatePickerUIView.swift
//  learrningswiftui
//
//  Created by Aditya Ghorpade on 10/11/23.
//

import SwiftUI

struct DatePickerUIView: View {
    
    @State var selectedDate: Date = Date()
    let startingDate: Date = Calendar.current.date(from: DateComponents(year: 2018)) ?? Date()
    let endingDate: Date = Date()
    
    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        //formatter.timeStyle = .medium
        return formatter
    }
    
    var body: some View {
        VStack {
            Text("SELECTED DATE IS")
            Text(dateFormatter.string(from: selectedDate))
                .font(.title)
            //DatePicker("Select a Date", selection: $selectedDate)
            //DatePicker("Select a Date", selection: $selectedDate, displayedComponents: [.date, .hourAndMinute])
            DatePicker("Select a Date", selection: $selectedDate, in: startingDate...endingDate)
                .datePickerStyle(
                    CompactDatePickerStyle()
                    //GraphicalDatePickerStyle()
                    //WheelDatePickerStyle()
                )
        }
        .padding()
    }
}

#Preview {
    DatePickerUIView()
}
