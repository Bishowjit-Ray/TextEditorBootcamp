//
//  ContentView.swift
//  TextEditorBootcamp
//
//  Created by Bishowjit Ray on 17/9/22.
//

import SwiftUI

struct ContentView: View {
    @State var textEditorText: String = "This is the starting tex"
    @State var savedText: String = ""
    var body: some View {
        NavigationView{
            VStack{
                TextEditor(text: $textEditorText)
                    .frame( height: 250)
                    .colorMultiply(.gray.opacity(0.5))
                    .cornerRadius(10)
                Button(action: {
                    savedText = textEditorText
                }, label: {
                    Text("Save".uppercased())
                        .font(.headline)
                        .foregroundColor(Color.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .cornerRadius(10)
                })
                Text(savedText)
                    .foregroundColor(Color.purple)
             Spacer()
            }
            .padding()
            //.background(Color.green)
            .navigationTitle("TextEditor Bootcamp!!!")
         
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
