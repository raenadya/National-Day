import SwiftUI

struct ContentView: View {
    @State private var qnOne = ""
    @State private var qnTwo = ""
    @State private var qnThree = ""
    @State private var qnFour = ""
    @State private var score = 0

    @State private var qnOneCorrect = false
    @State private var qnTwoCorrect = false
    @State private var qnThreeCorrect = false
    @State private var qnFourCorrect = false

    let qnoneresponse = ["where's your tracetogether token", "right in front of u LA", "turn right turn left turn right turn left", "*ignores*"]
    let qntworesponse = ["you are a not nice person", "why u so kiasu", "cannot talk to your elders like this"]
    let qnthreeimage = "tissue_packet"
    let qnthreeoptions = ["tissue", "tissue packet", "tissue paper", "chope"]
    let qnfourimage = "auntie_behind_escalator"
    let qnfouroptions = ["MOVE LA", "take video", "excuse me sir i'm in a rush", "tsk and roll her eyes"]

    var body: some View {
        ZStack {
            Form {
                Section(header: Text("Question 1").font(.headline)) {
                    Image("woman")
                        .frame(maxWidth: .infinity, alignment: .center)
                    Picker("If you asked her where the toilet is, what would her response be?", selection: $qnOne) {
                        ForEach(qnoneresponse, id: \.self) {
                            Text($0)
                        }
                    }
                    .disabled(!qnOne.isEmpty)

                    // Show feedback based on correctness if an option is chosen
                    if !qnOne.isEmpty {
                        Text(qnOneCorrect ? "✅ ur a real one" : "❌ eh how come u liddat one sia")
                            .foregroundColor(qnOneCorrect ? .green : .red)
                    }
                }

                Section(header: Text("Question 2").font(.headline)) {
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

                    // Show feedback based on correctness if an option is chosen
                    if !qnTwo.isEmpty {
                        Text(qnTwoCorrect ? "✅ ur a real one" : " ❌ eh how come u liddat one sia")
                            .foregroundColor(qnTwoCorrect ? .green : .red)
                    }
                }

                Section(header: Text("Question 3").font(.headline)) {
                    Image("tissue packet")
                        .resizable()
                        .scaledToFit()
                        .frame(maxWidth: .infinity, alignment: .center)
                    Picker("What is this?", selection: $qnThree) {
                        ForEach(qnthreeoptions, id: \.self) {
                            Text($0)
                        }
                    }
                    .disabled(!qnThree.isEmpty)

                    // Show feedback based on correctness if an option is chosen
                    if !qnThree.isEmpty {
                        Text(qnThreeCorrect ? "✅ ur a real one" : "❌ eh how come u liddat one sia")
                            .foregroundColor(qnThreeCorrect ? .green : .red)
                    }
                }

                Section(header: Text("Question 4").font(.headline)) {
                    Image("escalator ppl")
                        .resizable()
                        .scaledToFit()
                        .frame(maxWidth: .infinity, alignment: .center)
                    Picker("When a tourist stands on the right of the escalator and doesn't move for an auntie behind, what would she do?", selection: $qnFour) {
                        ForEach(qnfouroptions, id: \.self) {
                            Text($0)
                        }
                    }
                    .disabled(!qnFour.isEmpty)

                    // Show feedback based on correctness if an option is chosen
                    if !qnFour.isEmpty {
                        Text(qnFourCorrect ? "✅ ur a real one" : "❌ eh how come u liddat one sia")
                            .foregroundColor(qnFourCorrect ? .green : .red)
                    }
                }
            }

            VStack {
                HStack {
                    Spacer()
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color.white)
                            .frame(width: 60, height: 40)
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.red, lineWidth: 2)
                            )
                        Text("\(score) 🧧")
                            .font(.headline)
                            .padding()
                    }
                }
                Spacer()
            }
        }
        .navigationTitle("Are You a True Singaporean?")
        .onChange(of: qnOne) { newValue in
            qnOneCorrect = newValue == "where's your tracetogether token"
            if qnOneCorrect {
                score += 10
            }
        }
        .onChange(of: qnTwo) { newValue in
            qnTwoCorrect = newValue == "cannot talk to your elders like this"
            if qnTwoCorrect {
                score += 10
            }
        }
        .onChange(of: qnThree) { newValue in
            qnThreeCorrect = newValue == "chope"
            if qnThreeCorrect {
                score += 10
            }
        }
        .onChange(of: qnFour) { newValue in
            qnFourCorrect = newValue == "take video"
            if qnFourCorrect {
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
