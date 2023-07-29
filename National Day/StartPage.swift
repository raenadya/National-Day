import SwiftUI

struct StartPage: View {
    @State private var isStarted = false
    @State private var readyToTest = false

    var body: some View {
        NavigationView {
            if isStarted {
                ContentView()
            } else {
                VStack {
                    Text("Are You A True Singaporean?")
                        .font(.title)
                        .bold()
                        .foregroundColor(.red)
                        .padding()

                    Toggle("ready to test your singaporeanness?", isOn: $readyToTest)
                        .padding()
                        .foregroundColor(.red)

                    if readyToTest {
                        Button("lesgo") {
                            withAnimation {
                                isStarted = true
                            }
                        }
                        .padding()
                        .background(Color.red)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                    }
                }
            }
        }
    }
}

struct StartPage_Previews: PreviewProvider {
    static var previews: some View {
        StartPage()
    }
}
