import SwiftUI

struct StartPage: View {
    @State private var isStarted = false

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

                    Button("Start") {
                        isStarted = true
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

struct StartPage_Previews: PreviewProvider {
    static var previews: some View {
        StartPage()
    }
}
