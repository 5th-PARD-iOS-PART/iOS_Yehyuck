
import SwiftUI


struct BankTabView: View {
    
    init(){
        UITabBar.appearance().scrollEdgeAppearance = .init()
    }

    @State private var Selection = 1
    
    var body: some View{

        TabView(selection: $Selection){
    
            BankViewOne()
                .tabItem{
                    Image("home")
                    Text("홈")
                        .font(.system(size: 40))
                        .foregroundColor(.gray)
                        
            }
            .tag(1)
            ZStack{
                Color.yellow.ignoresSafeArea()
                
            }
            .tabItem{
                Image("diamond")
                Text("혜택")
                    .font(.body)
                    .foregroundColor(.gray)
            }
            .tag(0)
            ZStack{
                Color.gray.ignoresSafeArea()
                
            }
            .tabItem{
                Image("bag")
                    .frame(width: 22, height: 23)
                Text("토스쇼핑")
                    .font(.body)
                    .foregroundColor(.gray)
            }
            .tag(2)
            ZStack{
                Color.blue.ignoresSafeArea()
                
            }
            .tabItem{
                Image("graph")
                    .frame(width: 22, height: 23)
                Text("증권")
                    .font(.body)
                    .foregroundColor(.gray)
                
            }
            .tag(3)
            
            
            ZStack{
                Color.red.ignoresSafeArea()
               
            }
            .tabItem{
                Image("tab")
                    .frame(width: 22, height: 23)
                Text("전체")
                    .font(.body)
                    .foregroundColor(.gray)
            }
            .tag(4)
        }
    }
}


#Preview {
    BankTabView()
        .environmentObject(NumberViewModel())
}
