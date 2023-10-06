import SwiftUI




struct MainView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Image("Image3")
                    .resizable()
                    .scaledToFill()
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .edgesIgnoringSafeArea(.all)
                    .zIndex(-1)
                
                // Add a white rectangle at the top
                Rectangle()
                    
                    .fill(Color.white)
                    .frame(height: 90) // Adjust the height as needed
                    .position(x:200,y:-50)
                    .alignmentGuide(.top){_ in 0}
                    .zIndex(0) // Set the zIndex to 0 to place it behind other views
           
                VStack {
                    NavigationLink(destination: CountriesView()) {
                        Text("Go to Countries")
                            .padding()
                            .background(Color.red)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                    
                    NavigationLink(destination: OneView()) {
                        Text("Go to One View")
                            .padding()
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                }
                .navigationBarTitle("Fun with Countries", displayMode: .inline)
                
            }
        }
    }
}


struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
