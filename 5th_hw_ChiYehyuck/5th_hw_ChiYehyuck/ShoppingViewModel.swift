import Foundation
import Combine

class ShoppingViewModel: ObservableObject {
    @Published var selectedCategoryIndex: Int = 0
    
    let categories = ["모두", "특가", "식품", "의류", "전자제품", "뷰티"]
    
    var filteredItems: [ShoppingItem] {
        let selectedCategory = categories[selectedCategoryIndex]
        if selectedCategory == "모두" {
            return ShoppingMockData.items
        } else {
            return ShoppingMockData.items.filter { $0.category == selectedCategory }
        }
    }
}
