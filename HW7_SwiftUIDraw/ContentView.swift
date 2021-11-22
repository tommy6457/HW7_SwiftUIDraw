//
//  ContentView.swift
//  HW7_SwiftUIDraw
//
//  Created by 蔡尚諺 on 2021/11/18.
//
import SwiftUI
struct DrawView: UIViewRepresentable {
    func makeUIView(context: Context) -> UIView {
        let view = UIView()
        /*-------------繪圖程式碼start-------------*/
        //豹頭
        //帽子
        let hatPath = UIBezierPath()
        hatPath.move(to: CGPoint(x: 106, y: 28))
        hatPath.addLine(to: CGPoint(x: 164, y: 59))
        hatPath.addLine(to: CGPoint(x: 52, y: 59))

        hatPath.close()
        
        let hatLayer = CAShapeLayer()
        hatLayer.path = hatPath.cgPath
        hatLayer.strokeColor = UIColor.black.cgColor
        hatLayer.fillColor = UIColor(red: 244/255, green: 16/255, blue: 31/255, alpha: 1).cgColor
        view.layer.addSublayer(hatLayer)
        
        //衣服
        let clothPath = UIBezierPath()
        clothPath.move(to: CGPoint(x: 24, y: 127))
        clothPath.addLine(to: CGPoint(x: 150, y: 127))
        clothPath.addLine(to: CGPoint(x: 150, y: 225))
        clothPath.addLine(to: CGPoint(x: 24, y: 225))
        clothPath.close()
        
        let clothlayer = CAShapeLayer()
        clothlayer.path = clothPath.cgPath
        clothlayer.strokeColor = UIColor.black.cgColor
        clothlayer.fillColor = UIColor(red: 57/255, green: 65/255, blue: 212/255, alpha: 1).cgColor
        view.layer.addSublayer(clothlayer)
        
        //鬍子
        let beardPath = UIBezierPath()
        beardPath.move(to: CGPoint(x: 65, y: 59))
        beardPath.addLine(to: CGPoint(x: 145, y: 59))
        beardPath.addLine(to: CGPoint(x: 145, y: 160))
        beardPath.addLine(to: CGPoint(x: 65, y: 160))
        beardPath.close()
        
        let beardLayer = CAShapeLayer()
        beardLayer.path = beardPath.cgPath
        beardLayer.strokeColor = UIColor.black.cgColor
        beardLayer.fillColor = UIColor(red: 244/255, green: 244/255, blue: 245/255, alpha: 1).cgColor
        view.layer.addSublayer(beardLayer)
        
        //臉
        let facePath = UIBezierPath()
        facePath.move(to: CGPoint(x: 87, y: 59))
        facePath.addLine(to: CGPoint(x: 135, y: 59))
        facePath.addLine(to: CGPoint(x: 135, y: 126))
        facePath.addLine(to: CGPoint(x: 87, y: 126))
        facePath.close()
        
        let faceLayer = CAShapeLayer()
        faceLayer.path = facePath.cgPath
        faceLayer.strokeColor = UIColor.black.cgColor
        faceLayer.fillColor = UIColor(red: 218/255, green: 207/255, blue: 149/255, alpha: 1).cgColor
        view.layer.addSublayer(faceLayer)
        
        //包龍星
        //帽子
        let oneDegree = CGFloat.pi / 180 //一度
        let hatPath2 = UIBezierPath()
        hatPath2.addArc(withCenter: CGPoint(x: 198, y: 75), radius: 24, startAngle: 0, endAngle: 180 * oneDegree, clockwise: false)
        let hatLayer2 = CAShapeLayer()
        hatLayer2.path = hatPath2.cgPath
        hatLayer2.strokeColor = UIColor.black.cgColor
        hatLayer2.fillColor = UIColor.black.cgColor
        view.layer.addSublayer(hatLayer2)
        
        //臉
        let facePath2 = UIBezierPath()
        facePath2.move(to: CGPoint(x: 177, y: 75))
        facePath2.addLine(to: CGPoint(x: 218, y: 75))
        facePath2.addLine(to: CGPoint(x: 218, y: 119))
        facePath2.addLine(to: CGPoint(x: 177, y: 119))
        facePath2.close()
        
        let faceLayer2 = CAShapeLayer()
        faceLayer2.path = facePath2.cgPath
        faceLayer2.strokeColor = UIColor.black.cgColor
        faceLayer2.fillColor = UIColor(red: 218/255, green: 207/255, blue: 149/255, alpha: 1).cgColor
        view.layer.addSublayer(faceLayer2)
        
        //衣服
        let clothPath2 = UIBezierPath()
        clothPath2.move(to: CGPoint(x: 165, y: 119))
        clothPath2.addLine(to: CGPoint(x: 261, y: 119))
        clothPath2.addLine(to: CGPoint(x: 261, y: 227))
        clothPath2.addLine(to: CGPoint(x: 165, y: 227))
        clothPath2.close()
        
        let clothLayer2 = CAShapeLayer()
        clothLayer2.path = clothPath2.cgPath
        clothLayer2.strokeColor = UIColor.black.cgColor
        clothLayer2.fillColor = UIColor(red: 175/255, green: 175/255, blue: 175/255, alpha: 1).cgColor
        view.layer.addSublayer(clothLayer2)
        /*-------------繪圖程式碼end-------------*/
        return view
    }
    
    func updateUIView(_ uiView: UIView, context: Context) {
    }
    
}
struct ContentView: View {
    var body: some View {
        DrawView()
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
