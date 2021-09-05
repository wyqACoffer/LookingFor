////
////  DragGesture_test.swift
////  寻觅
////
////  Created by 王岩琦 on 2020/11/14.
////
//
//import SwiftUI
//
//struct DragGesture_test: View {
//    @State var Offset: CGSize = .zero
//    @State var po: CGPoint = CGPoint(x: 0, y: 0)
//    var body: some View {
//        let dragGesture = DragGesture()
//            .onChanged { value in
//                self.po = value.location
//            }
//            .onEnded { value in
////                self.Offset = value.translation
//                self.po = value.location
//            }
//
//        return Rectangle()
//            .fill(Color.purple)
//            .frame(width: 100, height: 100)
//            .cornerRadius(8)
//            .shadow(radius: 8)
//            .padding()
//            .position(po)
//            .gesture(dragGesture)
//
//    }
//}
//
//struct DragGesture_test_Previews: PreviewProvider {
//    static var previews: some View {
//        DragGesture_test()
//    }
//}
