import SwiftUI

struct ContentView: View {
    
    
    @State private var qnOne = ""
    let qnoneresponse = ["where's your tracetogether token", "right in front of u LA", "turn right turn left turn right turn left", "*ignores*"]
    @State private var qnTwo = ""
    let qntworesponse = ["you are a not nice person", "why u so kiasu", "cannot talk to your elders like this"]
    @State private var qnThree = ""
    
    var body: some View {
        Form {
            
            Section("Question 1") {
                Image("woman")
                    .frame(maxWidth: .infinity, alignment: .center)
                Picker("If you asked her where the toilet is, what would her response be?", selection: $qnOne) {
                    ForEach(qnoneresponse, id:\.self) {
                        Text($0)
                    }
                }
            }
            
            Section("Question 2") {
                Image("mrt uncle")
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: .infinity, alignment: .center)
                Picker("If you asked him to stop coughing and put on mask, what would his response be?", selection: $qnTwo) {
                    ForEach(qntworesponse, id:\.self) {
                        Text($0)
                    }
                }
            }
    
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

