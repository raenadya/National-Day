import SwiftUI

struct ContentView: View {
    @State private var qnOne = ""
    @State private var qnTwo = ""
    @State private var qnThree = ""
    @State private var qnFour = ""
    @State private var score = 0

    let qnoneresponse = ["where's your tracetogether token", "right in front of u LA", "turn right turn left turn right turn left", "*ignores*"]
    let qntworesponse = ["you are a not nice person", "why u so kiasu", "cannot talk to your elders like this"]
    let qnthreeimage = "tissue_packet"
    let qnthreeoptions = ["tissue", "tissue packet", "tissue paper", "chope"]
    let qnfourimage = "auntie_behind_escalator"
    let qnfouroptions = ["MOVE LA", "take video", "excuse me sir i'm in a rush", "tsk and roll her eyes"]

    var body: some View {
        Form {
            Section(header: Text("\(score) 🧧").font(.headline)) {
                Image("woman")
                    .frame(maxWidth: .infinity, alignment: .center)
                Picker("If you asked her where the toilet is, what would her response be?", selection: $qnOne) {
                    ForEach(qnoneresponse, id: \.self) {
                        Text($0)
                    }
                }
                .disabled(!qnOne.isEmpty)
            }

            Section {
                Image("mrt uncle")
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: .infinity, alignment: .center)
                Picker("If you asked him to stop coughing and put on mask, what would his response be?", selection: $qnTwo) {
                    ForEach(qntworesponse, id: \.self) {
                        Text($0)
                    }
                }
                .disabled(!qnTwo.isEmpty)
            }

            Section {
                Image(qnthreeimage)
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: .infinity, alignment: .center)
                Picker("What is this?", selection: $qnThree) {
                    ForEach(qnthreeoptions, id: \.self) {
                        Text($0)
                    }
                }
                .disabled(!qnThree.isEmpty)
            }

            Section {
                Image(qnfourimage)
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: .infinity, alignment: .center)
                Picker("When a tourist stands on the right of the escalator and doesn't move for an auntie behind, what would she do?", selection: $qnFour) {
                    ForEach(qnfouroptions, id: \.self) {
                        Text($0)
                    }
                }
                .disabled(!qnFour.isEmpty)
            }
        }
        .onChange(of: qnOne) { newValue in
            if newValue == "where's your tracetogether token" {
                score += 10
            }
        }
        .onChange(of: qnTwo) { newValue in
            if newValue == "cannot talk to your elders like this" {
                score += 10
            }
        }
        .onChange(of: qnThree) { newValue in
            if newValue == "chope" {
                score += 10
            }
        }
        .onChange(of: qnFour) { newValue in
            if newValue == "take video" {
                score += 10
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
