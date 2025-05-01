
import SwiftUI

struct DemoShopping: View {
    let item: ShoppingItem

    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            // Image with timer and badge
            ZStack(alignment: .topLeading) {
                Image(item.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(maxWidth: .infinity)
                    .frame(height: 150) // Adjust height as needed
                    .clipped()

                HStack(spacing: 6) {
                    if let timer = item.timer {
                        Text(timer)
                            .font(.caption2)
                            .foregroundColor(.white)
                            .padding(.horizontal, 8)
                            .padding(.vertical, 4)
                            .background(Color.black.opacity(0.7))
                            .clipShape(Capsule())
                    }

                    if let badge = item.badge {
                        Text(badge)
                            .font(.caption2)
                            .bold()
                            .foregroundColor(.white)
                            .padding(.horizontal, 8)
                            .padding(.vertical, 4)
                            .background(Color(red: 1.0, green: 0.22, blue: 0.69)) // Pink badge
                            .clipShape(Capsule())
                    }
                }
                .padding(8)
            }

            // Title
            Text(item.title)
                .font(.subheadline)
                .lineLimit(1)

            // Price section
            HStack(spacing: 6) {
                Text(item.price)
                    .font(.headline)
                    .foregroundColor(.black)

                Text(item.originalPrice)
                    .font(.subheadline)
                    .strikethrough()
                    .foregroundColor(.gray)
            }

            // Buyers info (and free shipping)
            Text(item.buyersInfo)
                .font(.caption)
                .foregroundColor(.gray)
        }
        //.background(Color(.systemBackground))
        //.cornerRadius(16)
        //.shadow(radius: 2)
    }
}

#Preview {
    DemoShopping(item: ShoppingMockData.items.first!)
}

