
/*import SwiftUI

struct ShoppingView: View {
    @State private var selectedTab = 0
    let categories = ["모두", "특가", "식품", "의류", "전자제품", "뷰티"]

    var body: some View {
        NavigationStack {
            VStack(spacing: 0) {
                // Header
                HStack {
                    Text("토스쇼핑")
                        .font(.system(size: 32, weight: .bold))
                        .padding(.leading, 16)
                    Spacer()
                    HStack(spacing: 24) {
                        Image("magnify")
                        Image("human")
                        Image("cart")
                    }
                    .font(.system(size: 28))
                    .foregroundColor(.gray)
                    .padding(.trailing, 20)
                }
                .padding(.vertical, 16)
                .background(Color.white)
                
                // Category Tab Bar
                HStack {
                    ForEach(categories.indices, id: \.self) { idx in
                        VStack(spacing: 4) {
                            Button(action: {
                                selectedTab = idx
                            }) {
                                Text(categories[idx])
                                    .font(.system(size: 15, weight: selectedTab == idx ? .bold : .regular))
                                    .foregroundColor(selectedTab == idx ? Color(.label) : Color(.systemGray))
                            }
                            Rectangle()
                                .frame(height: 2)
                                .foregroundColor(selectedTab == idx ? Color(.label) : .clear)
                                .cornerRadius(1)
                        }
                        .frame(maxWidth: .infinity)
                    }
                }
                .padding(.horizontal, 16)
                .padding(.vertical, 4)
                .background(Color.white)
            
                

                // Content for selected tab
                Group {
                    switch selectedTab {
                    case 0:
                        ShoppingAll()
                    case 1:
                        ShoppingSpecial()
                    case 2:
                        ShoppingFood()
                    case 3:
                        ShoppingCloth()
                    case 4:
                        ShoppingElectric()
                    case 5:
                        ShoppingBeauty()
                    
                    default:
                        ShoppingAll()
                    }
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color(.systemGroupedBackground))
                
            }
            .background(Color.white)
            
        }
        
        
    }
}


#Preview {
    ShoppingView()
}
*/

import SwiftUI

struct ShoppingView: View {
    @StateObject private var viewModel = ShoppingViewModel()
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 0) {
                // Header
                HStack {
                    Text("토스쇼핑")
                        .font(.system(size: 32, weight: .bold))
                        .padding(.leading, 16)
                    Spacer()
                    HStack(spacing: 24) {
                        Image("magnify")
                        Image("human")
                        Image("cart")
                    }
                    .font(.system(size: 28))
                    .foregroundColor(.gray)
                    .padding(.trailing, 20)
                }
                .padding(.vertical, 16)
                .background(Color.white)
                
                // Category Tab Bar
                HStack {
                    ForEach(viewModel.categories.indices, id: \.self) { idx in
                        VStack(spacing: 4) {
                            Button(action: {
                                viewModel.selectedCategoryIndex = idx
                            }) {
                                Text(viewModel.categories[idx])
                                    .font(.system(size: 15, weight: viewModel.selectedCategoryIndex == idx ? .bold : .regular))
                                    .foregroundColor(viewModel.selectedCategoryIndex == idx ? Color(.label) : Color(.systemGray))
                            }
                            Rectangle()
                                .frame(height: 2)
                                .foregroundColor(viewModel.selectedCategoryIndex == idx ? Color(.label) : .clear)
                                .cornerRadius(1)
                        }
                        .frame(maxWidth: .infinity)
                    }
                }
                .padding(.horizontal, 16)
                .padding(.vertical, 4)
                .background(Color.white)
                
                
                ScrollView {
                    VStack(spacing: 16) {
                        let selected = viewModel.categories[viewModel.selectedCategoryIndex]

                        // Category Title (hide for "모두")
                        if selected != "모두" {
                            HStack {
                                Text(selected)
                                    .font(.system(size: 24, weight: .bold))
                                Spacer()
                            }
                        }

                        // Show Ads only in "모두"
                        if selected == "모두" {
                            AdsView()
                            HStack {
                            Text("하루특가")
                                .font(.title)
                                .bold()
                            Spacer()
                            Text("전체보기")
                                .font(.system(size: 20))
                                .foregroundColor(.gray)
                            
                            Image("arrow")
                                .padding(.leading, 4)
                            
                           }
                            
                        }

                        // Show Daily in "모두" and "특가"
                        if selected == "모두" || selected == "특가" {
                            DailyView()
                        }

                        // Items
                        ForEach(viewModel.filteredItems) { item in
                            DemoShopping(item: item)
                        }
                    }
                    .padding()
                }
                .background(Color(.white))

                        
                        
                        
            }
        }
    }
}
