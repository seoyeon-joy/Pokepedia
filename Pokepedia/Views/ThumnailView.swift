import SwiftUI

struct ThumnailView: View {
    @State var pokemon: Pokemon

    var body: some View {
        VStack {
            if let image = pokemon.image {
                Image(uiImage: image)
                    .resizable()
                    .frame(width: 140, height: 140)
                    .padding()
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    .overlay {
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(Color.secondary, lineWidth: 2)
                    }
            }

            HStack {
                Text(pokemon.id)
                    .font(.system(size: 16))
                    .fontWeight(.semibold)

                Text(pokemon.name)
                    .font(.system(size: 17))
                    .fontWeight(.bold)
            }
            
            Text(pokemon.appearance)
                .font(.system(size: 14))
                .fontWeight(.semibold)
        }
    }
}

struct ThumnailView_Previews: PreviewProvider {
    static var previews: some View {
        ThumnailView(pokemon: Pokemon(id: "NO.124", name: "루주라", image: nil, appearance: "거다이맥스의 모습"))
            .previewLayout(.sizeThatFits)
    }
}
