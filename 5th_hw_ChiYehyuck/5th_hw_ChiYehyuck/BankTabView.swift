/*
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
            
             ShoppingView()
                 .tabItem{
                     Image("bag")
                     Text("토스쇼핑")
                         .font(.system(size: 40))
                         .foregroundColor(.gray)
                         
             }
             .tag(2)
            /*
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
             */
            
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
*/
import SwiftUI

struct BankTabView: View {
    
    init() {
        UITabBar.appearance().scrollEdgeAppearance = .init()
    }

    @State private var Selection = 1 // Default selected is "토스쇼핑"
    
    var body: some View {
        TabView(selection: $Selection) {
            
            BankViewOne()
                .tabItem {
                    VStack {
                        Image("grayhome")
                            .renderingMode(.template)
                            .foregroundColor(Selection == 1 ? .black : .gray)
                        Text("홈")
                            .foregroundColor(Selection == 1 ? .black : .gray)
                    }
                }
                .tag(1)
            
            ZStack {
                Color.yellow.ignoresSafeArea()
            }
            .tabItem {
                VStack {
                    Image("diamond")
                        .renderingMode(.template)
                        .foregroundColor(Selection == 0 ? .black : .gray)
                    Text("혜택")
                        .foregroundColor(Selection == 0 ? .black : .gray)
                }
            }
            .tag(0)
            
            ShoppingView()
                .tabItem {
                    VStack {
                        Image("bag")
                            .renderingMode(.template)
                            .foregroundColor(Selection == 2 ? .black : .gray)
                        Text("토스쇼핑")
                            .foregroundColor(Selection == 2 ? .black : .gray)
                    }
                }
                .tag(2)
            
            ZStack {
                Color.blue.ignoresSafeArea()
            }
            .tabItem {
                VStack {
                    Image("graph")
                        .renderingMode(.template)
                        .foregroundColor(Selection == 3 ? .black : .gray)
                    Text("증권")
                        .foregroundColor(Selection == 3 ? .black : .gray)
                }
            }
            .tag(3)
            
            ZStack {
                Color.red.ignoresSafeArea()
            }
            .tabItem {
                VStack {
                    Image("tab")
                        .renderingMode(.template)
                        .foregroundColor(Selection == 4 ? .black : .gray)
                    Text("전체")
                        .foregroundColor(Selection == 4 ? .black : .gray)
                }
            }
            .tag(4)
        }
    }
}

#Preview {
    BankTabView()
        .environmentObject(NumberViewModel())
}
