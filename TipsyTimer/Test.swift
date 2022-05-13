import SwiftUI

struct TestView: View {
    var body: some View {

        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color("Nina-dark"),
                                                       Color("Nina-sky")]),
                           startPoint: .leading,
                           endPoint: .trailing)
                .frame(width: 400, height: 400)
            Image("tipsytimerlogo")
    //            .renderingMode(.template)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(.all)
                .frame(width: 380, height: 380)

                        

        }


    }
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}
