
import SwiftUI
 class NumberViewModel: ObservableObject {
 @Published var TossMoney: Int = 38841
}



struct ContentView: View {

    @StateObject var viewModel = NumberViewModel()
    var body: some View {
        NavigationView{
            VStack{
                BankTabView()
            }
            .environmentObject(viewModel)
            
        }
       
        .navigationBarBackButtonHidden(true)
        
        
    }
}

#Preview {
    ContentView()
}
