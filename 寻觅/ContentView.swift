import SwiftUI
import CodeScanner

struct ContentView: View {
    //卷轴‘展开’或‘闭合’
    @State var flag: Bool = true
    @State var flag1: Bool = true
    //卷轴动效
    @State var anima: Bool = true
    @State var anima1: Bool = true
    @State var animaA1: Bool = true
    @State var animaC1: Bool = true
    
    @State var page: Int = 1
    //卷轴缩紧
    @State var back: Int = 0
    //制作工艺
    @State var one: Int = 0
    //艺术价值
    @State var count: Int = 0
    
    //社区动效
    @State var anima_sq: Bool = true
    //商城动效
    @State var anima_sc: Bool = true
    //日历卷轴动效
    @State var anima_rl: Bool = true
    //拓展卷轴动效
    @State var anima_tz: Bool = true
    @State var po1: CGPoint = CGPoint(x: 60, y: 85)
    @State var po2: CGPoint = CGPoint(x: 135, y: 90)
    @State var po3: CGPoint = CGPoint(x: 210, y: 95)
    @State var po4: CGPoint = CGPoint(x: 280, y: 95)
    @State var po5: CGPoint = CGPoint(x: 350, y: 90)
    @State var po6: CGPoint = CGPoint(x: 60, y: 195)
    @State var po7: CGPoint = CGPoint(x: 135, y: 195)
    @State var po8: CGPoint = CGPoint(x: 210, y: 195)
    @State var po9: CGPoint = CGPoint(x: 280, y: 195)
    @State var isPresentingScanner = false
    @State var scannedCode: String?
    
    var scannerSheet : some View {
        CodeScannerView(
            codeTypes: [.qr],
            completion: { result in
                if case let .success(code) = result {
                    self.scannedCode = code
                    self.isPresentingScanner = false
                }
            }
        )
    }
    
    var body: some View {
        
        
        
        let dragGesture1 = DragGesture()
            .onChanged { value in
                self.po1 = value.location
            }
            .onEnded { value in
                self.po1 = value.location
            }
        let dragGesture2 = DragGesture()
            .onChanged { value in
                self.po2 = value.location
            }
            .onEnded { value in
                self.po2 = value.location
            }
        let dragGesture3 = DragGesture()
            .onChanged { value in
                self.po3 = value.location
            }
            .onEnded { value in
                self.po3 = value.location
            }
        let dragGesture4 = DragGesture()
            .onChanged { value in
                self.po4 = value.location
            }
            .onEnded { value in
                self.po4 = value.location
            }
        let dragGesture5 = DragGesture()
            .onChanged { value in
                self.po5 = value.location
            }
            .onEnded { value in
                self.po5 = value.location
            }
        let dragGesture6 = DragGesture()
            .onChanged { value in
                self.po6 = value.location
            }
            .onEnded { value in
                self.po6 = value.location
            }
        let dragGesture7 = DragGesture()
            .onChanged { value in
                self.po7 = value.location
            }
            .onEnded { value in
                self.po7 = value.location
            }
        let dragGesture8 = DragGesture()
            .onChanged { value in
                self.po8 = value.location
            }
            .onEnded { value in
                self.po8 = value.location
            }
        let dragGesture9 = DragGesture()
            .onChanged { value in
                self.po9 = value.location
            }
            .onEnded { value in
                self.po9 = value.location
            }
        VStack {
            //初始页面
            if page == 1 {
                Image("闭合卷轴")
                    .position(x: 247, y: 380)
                    .scaleEffect(0.4)
                    .shadow(radius: 6, x: 11, y: 6)
                    .rotationEffect(.init(degrees: -0.4))
                    .onTapGesture {
                        page = 2
                    }
            }
            //中华皮影，可点击 ‘展示’ 或 ‘主页’
            else if page == 2 {
                ScrollView(.horizontal, showsIndicators: false) {
                    ZStack {
                        Image("中华皮影")
                            .frame(width: 1500)
                            .onAppear() {
                                self.anima.toggle()
//                                playSound(sound: "中华皮影", type: "mp3")
                            }
                            .scaleEffect(0.36)
                            .position(x: anima ? 1200 :900, y: 400).animation(Animation.spring().speed(1.2))
                        VStack {
                            Spacer()
                            Image("展示")
                                .onTapGesture {
                                    page = 3
                                    
                                    
                                    playSound(sound: "下拉2", type: "mp3")
//                                    playSound(sound: "中华皮影", type: "mp3")
                                }
                            Spacer()
                            Image("主页")
                                .onTapGesture {
                                    page = 4
                                    playSound(sound: "下拉2", type: "mp3")
                                }
                            Spacer()
                        }
                        .position(x: 1571.0, y: 400.0)
                        .scaleEffect(0.7)
                    }
                }
            }
            //‘展示’ --制、艺、起、探
            else if page == 3 {
                ZStack {
                    if back == 0 {
                        HStack {
                            Image("闭合卷轴")
                                .onAppear() {
                                    self.flag.toggle()
                                    playSound(sound: "首页", type: "mp3")
                                }
                                .shadow(radius: 10, x: 20, y: 10)
                                .rotationEffect(.degrees(flag ? -0.4 : -90), anchor: .center).animation(.easeInOut(duration: 0.5))
                                .scaleEffect(flag ? 0.4 : 0.15).animation(.easeInOut(duration: 0.5))
                                .position(x: (flag ? 220 : -20), y: (flag ? 380 : 30)).animation(Animation.easeInOut(duration: 0.5).delay(0.3))
                                .onTapGesture {
                                    page = 5
                                }
                            Image("提示灯")
                                .scaleEffect(1.1)
                                .opacity(0.6)
                                .position(x: -6.5, y: 0)
                        }
                    }
                    else if back == 1 {
                        HStack {
                            Image("闭合卷轴")
                                .onAppear() {
                                    self.flag1.toggle()
                                    //                                    playSound(sound: "首页", type: "mp3")
                                }
                                .shadow(radius: 10, x: 20, y: 10)
                                .rotationEffect(.degrees(-90))
                                .scaleEffect(0.15)
                                .position(x: (flag1 ? -20 : -70), y: 30).animation(Animation.easeInOut(duration: 0.5))
                                .onTapGesture {
                                    page = 5
                                }
                            Image("提示灯")
                                .scaleEffect(1.1)
                                .opacity(0.6)
                                .position(x: -6.5, y: 0)
                        }
                    }
                    TabView() {
                        ForEach(6...9, id: \.self) { i in
                            VStack {
                                Image("a\(i)")
                                    .scaleEffect(0.5)
                                    .frame(width: UIScreen.main.bounds.width, height: (UIScreen.main.bounds.height - 300))
                                    .onTapGesture {
                                        page = i
                                        self.anima1 = true
                                    }
                            }
                        }
                    }
                    .padding(.top, 70.0)
                    .opacity(flag ? 0.1 : 1).animation(.easeIn(duration: 0.5))
                    .scaleEffect(flag ? 0.1 : 1).animation(Animation.spring(response: 0.6, dampingFraction: 1, blendDuration: 0.8))
                    .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
                }
                
            }
            //用于跳转回初识页面
            else if page == 5 {
                Image("闭合卷轴")
                    .onAppear() {
                        self.flag.toggle()
                        //                        playSound(sound: "首页", type: "mp3")
                    }
                    .shadow(radius: 10, x: 20, y: 10)
                    .rotationEffect(.degrees(flag ? -0.4 : -90), anchor: .center).animation(.easeInOut(duration: 0.5))
                    .scaleEffect(flag ? 0.4 : 0.15).animation(.easeInOut(duration: 0.5))
                    .position(x: (flag ? 220 : -20), y: (flag ? 380 : 30)).animation(Animation.easeInOut(duration: 0.5).delay(0.3))
                    .onTapGesture {
                        page = 2
                        self.flag = true
                        self.anima = true
                        self.anima1 = true
                        self.animaA1 = true
                        self.animaC1 = true
                        self.flag1 = true
                        self.back = 0
                    }
                
            }
            //制作工艺
            else if page == 6 {
                ZStack {
                    HStack {
                        Image("闭合卷轴")
                            .onAppear() {
                                self.flag1.toggle()
                                //                                playSound(sound: "首页", type: "mp3")
                            }
                            .shadow(radius: 10, x: 20, y: 10)
                            .rotationEffect(.degrees(flag ? -0.4 : -90), anchor: .center).animation(.easeInOut(duration: 0.5))
                            .scaleEffect(flag ? 0.4 : 0.15).animation(.easeInOut(duration: 0.5))
                            .position(x: (flag1 ? -20 : -70), y: 30).animation(Animation.easeInOut(duration: 0.5).delay(0.3))
                            .onTapGesture {
                                page = 5
                            }
                        Image("提示灯")
                            .scaleEffect(1.1)
                            .opacity(0.6)
                            .position(x: 64, y: 0)
                        Image("返回")
                            .scaleEffect(0.5)
                            .position(x: 70, y: 35)
                            .onTapGesture {
                                page = 3
                                back = 1
                                self.animaC1 = true
                            }
                    }
                    TabView() {
                        ForEach(1...6, id: \.self) { i in
                            VStack {
                                if i == 1 {
                                    Image("B\(i)")
                                        .onAppear() {
                                            self.one = i
                                        }
                                        .scaleEffect(0.14)
                                        .frame(width: UIScreen.main.bounds.width, height: (UIScreen.main.bounds.height - 300))
                                        .offset(y: 200)
                                }
                                else if i == 2 {
                                    Image("B\(i)")
                                        .onAppear() {
                                            self.one = i
                                        }
                                        .scaleEffect(0.13)
                                        .frame(width: UIScreen.main.bounds.width, height: (UIScreen.main.bounds.height - 300))
                                        .offset(y: 230)
                                }
                                else if i == 3 {
                                    Image("B\(i)")
                                        .onAppear() {
                                            self.one = i
                                        }
                                        .scaleEffect(0.15)
                                        .frame(width: UIScreen.main.bounds.width, height: (UIScreen.main.bounds.height - 300))
                                        .offset(y: 210)
                                }
                                else if i == 4 {
                                    Image("B\(i)")
                                        .onAppear() {
                                            self.one = i
                                        }
                                        .scaleEffect(0.13)
                                        .frame(width: UIScreen.main.bounds.width, height: (UIScreen.main.bounds.height - 300))
                                        .offset(y: 230)
                                }
                                else if i == 5 {
                                    Image("B\(i)")
                                        .onAppear() {
                                            self.one = i
                                        }
                                        .scaleEffect(0.13)
                                        .frame(width: UIScreen.main.bounds.width, height: (UIScreen.main.bounds.height - 300))
                                        .offset(y: 220)
                                }
                                else if i == 6 {
                                    Image("B\(i)")
                                        .onAppear() {
                                            self.one = i
                                        }
                                        .scaleEffect(0.18)
                                        .frame(width: UIScreen.main.bounds.width, height: (UIScreen.main.bounds.height - 300))
                                        .offset(y: 250)
                                }
                            }
                        }
                    }
                    .padding(.top, 70)
                    .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
                    if one == 1 {
                        ScrollView(.horizontal, showsIndicators: false) {
                            Image("C1")
                                .onAppear() {
                                    self.animaC1 = false
                                }
                                .frame(width: 900)
                                .scaleEffect(0.23)
                                .position(x: (animaC1 ? 780 : 568), y: 240).animation(Animation.spring().speed(1))
                        }
                        .padding(.top, 70.0)
                        .padding(.bottom, 270.0)
                    }
                    else if one == 2 {
                        ScrollView(.horizontal, showsIndicators: false) {
                            Image("C2")
                                .frame(width: 1000)
                                .scaleEffect(0.23)
                                .position(x: 568, y: 240).animation(Animation.spring().speed(1))
                        }
                        .padding(.top, 70.0)
                        .padding(.bottom, 270.0)
                    }
                    else if one == 3 {
                        ScrollView(.horizontal, showsIndicators: false) {
                            Image("C3")
                                .frame(width: 960)
                                .scaleEffect(0.23)
                                .position(x: 568, y: 240).animation(Animation.spring().speed(1))
                        }
                        .padding(.top, 70.0)
                        .padding(.bottom, 270.0)
                    }
                    else if one == 4 {
                        ScrollView(.horizontal, showsIndicators: false) {
                            Image("C4")
                                .frame(width: 820)
                                .scaleEffect(0.23)
                                .position(x: 500, y: 240).animation(Animation.spring().speed(1))
                        }
                        .padding(.top, 70.0)
                        .padding(.bottom, 270.0)
                    }
                    else if one == 5 {
                        ScrollView(.horizontal, showsIndicators: false) {
                            Image("C5")
                                .frame(width: 900)
                                .scaleEffect(0.23)
                                .position(x: 500, y: 240).animation(Animation.spring().speed(1))
                        }
                        .padding(.top, 70.0)
                        .padding(.bottom, 270.0)
                    }
                    else if one == 6 {
                        ScrollView(.horizontal, showsIndicators: false) {
                            Image("C6")
                                .frame(width: 990)
                                .scaleEffect(0.23)
                                .position(x: 500, y: 240).animation(Animation.spring().speed(1))
                        }
                        .padding(.top, 70.0)
                        .padding(.bottom, 270.0)
                    }
                }
            }
            //艺术价值
            else if page == 7 {
                ZStack {
                    HStack {
                        Image("闭合卷轴")
                            .onAppear() {
                                self.flag1.toggle()
                            }
                            .shadow(radius: 10, x: 20, y: 10)
                            .rotationEffect(.degrees(flag ? -0.4 : -90), anchor: .center).animation(.easeInOut(duration: 0.5))
                            .scaleEffect(flag ? 0.4 : 0.15).animation(.easeInOut(duration: 0.5))
                            .position(x: (flag1 ? -20 : -70), y: 30).animation(Animation.easeInOut(duration: 0.5).delay(0.3))
                            .onTapGesture {
                                page = 5
                            }
                        Image("提示灯")
                            .scaleEffect(1.1)
                            .opacity(0.6)
                            .position(x: 64, y: 0)
                        Image("返回")
                            .scaleEffect(0.5)
                            .position(x: 70, y: 35)
                            .onTapGesture {
                                page = 3
                                back = 1
                                self.animaA1 = true
                            }
                    }
                    Image("上")
                        .scaleEffect(0.2)
                        .position(x: 212, y: 120)
                    TabView() {
                        ForEach(16...20, id: \.self) { i in
                            VStack {
                                Image("c\(i)")
                                    .onAppear() {
                                        self.count = i
                                    }
                                    .scaleEffect(1)
                                    .frame(width: UIScreen.main.bounds.width, height: (UIScreen.main.bounds.height - 300))
                                    .onTapGesture {
                                        self.anima1 = true
                                    }
                                    .offset(y: -190)
                            }
                        }
                    }
                    .padding(.top, 70)
                    .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
                    Image("下")
                        .scaleEffect(0.2)
                        .position(x: 212, y: 370)
                    if count == 16 {
                        ScrollView(.horizontal, showsIndicators: false) {
                            Image("A1")
                                .onAppear() {
                                    self.animaA1 = false
                                }
                                .frame(width: 750)
                                .scaleEffect(0.22)
                                .position(x: (animaA1 ? 680 : 400), y: 200).animation(Animation.spring().speed(1))
                        }
                        .padding(.top, 380.0)
                    }
                    else if count == 17 {
                        ScrollView(.horizontal, showsIndicators: false) {
                            Image("A2")
                                .frame(width: 770)
                                .scaleEffect(0.22)
                                .position(x: 400, y: 200).animation(Animation.spring().speed(1))
                        }
                        .padding(.top, 380.0)
                    }
                    else if count == 18 {
                        ScrollView(.horizontal, showsIndicators: false) {
                            Image("A3")
                                .frame(width: 580)
                                .scaleEffect(0.22)
                                .position(x: 322, y: 200).animation(Animation.spring().speed(1))
                        }
                        .padding(.top, 380.0)
                    }
                    else if count == 19 {
                        ScrollView(.horizontal, showsIndicators: false) {
                            Image("A4")
                                .frame(width: 580)
                                .scaleEffect(0.22)
                                .position(x: 322, y: 200).animation(Animation.spring().speed(1))
                        }
                        .padding(.top, 380.0)
                    }
                    else if count == 20 {
                        ScrollView(.horizontal, showsIndicators: false) {
                            Image("A5")
                                .frame(width: 610)
                                .scaleEffect(0.22)
                                .position(x: 322, y: 200).animation(Animation.spring().speed(1))
                        }
                        .padding(.top, 380.0)
                    }
                }
            }
            //起源传承
            else if page == 8 {
                ZStack {
                    HStack {
                        Image("闭合卷轴")
                            .onAppear() {
                                self.flag1.toggle()
                            }
                            .shadow(radius: 10, x: 20, y: 10)
                            .rotationEffect(.degrees(flag ? -0.4 : -90), anchor: .center).animation(.easeInOut(duration: 0.5))
                            .scaleEffect(flag ? 0.4 : 0.15).animation(.easeInOut(duration: 0.5))
                            .position(x: (flag1 ? -20 : -70), y: 30).animation(Animation.easeInOut(duration: 0.5).delay(0.3))
                            .onTapGesture {
                                page = 5
                            }
                        Image("提示灯")
                            .scaleEffect(1.1)
                            .opacity(0.6)
                            .position(x: 64, y: 0)
                        Image("返回")
                            .scaleEffect(0.5)
                            .position(x: 70, y: 35)
                            .onTapGesture {
                                page = 3
                                back = 1
                            }
                    }
                    ScrollView(.horizontal, showsIndicators: false) {
                        Image("长卷")
                            .onAppear() {
                                self.anima1.toggle()
                            }
                            .frame(width: 4200)
                            .scaleEffect(0.35)
                            .position(x: (anima1 ? 2900 : 2150), y: 350.0).animation(Animation.spring().speed(0.7))
                    }
                    .padding(.top, 70.0)
                }
            }
            //探索更多
            else if page == 9 {
                ZStack {
                    HStack {
                        Image("闭合卷轴")
                            .onAppear() {
                                self.flag1.toggle()
                            }
                            .shadow(radius: 10, x: 20, y: 10)
                            .rotationEffect(.degrees(flag ? -0.4 : -90), anchor: .center).animation(.easeInOut(duration: 0.5))
                            .scaleEffect(flag ? 0.4 : 0.15).animation(.easeInOut(duration: 0.5))
                            .position(x: (flag1 ? -20 : -70), y: 30).animation(Animation.easeInOut(duration: 0.5).delay(0.3))
                            .onTapGesture {
                                page = 5
                            }
                        Image("提示灯")
                            .scaleEffect(1.1)
                            .opacity(0.6)
                            .position(x: 64, y: 0)
                        Image("返回")
                            .scaleEffect(0.5)
                            .position(x: 70, y: 35)
                            .onTapGesture {
                                page = 3
                                back = 1
                            }
                    }
                    ScrollView(.vertical) {
                        VStack {
                            Image("b10")
                                .scaleEffect(0.24)
                                .frame(width: UIScreen.main.bounds.width, height: 190)
                                .offset(y: flag1 ? 600 : 0).animation(Animation.spring().speed(1))
                                .onTapGesture {
//                                    self.isPresentingScanner = true
                                    page = 10
                                }
//                                .sheet(isPresented: $isPresentingScanner) {
//                                    self.scannerSheet
//                                }
                            Image("b11")
                                .scaleEffect(0.24)
                                .frame(width: UIScreen.main.bounds.width, height: 190)
                                .offset(y: flag1 ? 600 : 0).animation(Animation.spring().speed(0.85))
                                .onTapGesture {
                                    page = 11
                                }
                            Image("b12")
                                .scaleEffect(0.24)
                                .frame(width: UIScreen.main.bounds.width, height: 190)
                                .offset(y: flag1 ? 600 : 0).animation(Animation.spring().speed(0.65))
                                .onTapGesture {
                                    page = 12
                                }
                                
                            Image("b13")
                                .scaleEffect(0.24)
                                .frame(width: UIScreen.main.bounds.width, height: 190)
                                .offset(y: flag1 ? 600 : 0).animation(Animation.spring().speed(0.45))
                                .onTapGesture {
                                    page = 13
                                }
                            Image("b14")
                                .scaleEffect(0.24)
                                .frame(width: UIScreen.main.bounds.width, height: 190)
                                .offset(y: flag1 ? 600 : 0).animation(Animation.spring().speed(0.45))
                            Image("b15")
                                .scaleEffect(0.24)
                                .frame(width: UIScreen.main.bounds.width, height: 190)
                                .offset(y: flag1 ? 600 : 0).animation(Animation.spring().speed(0.45))
                        }
                    }
                    .padding(.top, 80)
                }
            }
            else if page == 4 {
                ZStack {
                    TabView {
                        View1()
                            .tabItem() {
                                Image(systemName: "house.fill")
                                Text("社区")
                            }
                            .onAppear() {
                                self.anima_sq = false
                                self.anima_sc = true
                            }
                        
                        View2()
                            .tabItem {
                                Image(systemName: "cart.fill")
                                Text("商城")
                            }
                        
                        View3()
                            .tabItem {
                                Image(systemName: "text.bubble.fill")
                                Text("私信")
                            }
                        
                        View4()
                            .tabItem {
                                Image(systemName: "person.crop.circle.fill")
                                Text("我的")
                            }
                    }
                    .padding(.top, 80)
                    
                    HStack {
                        Image("闭合卷轴")
                            .onAppear() {
                                self.flag.toggle()
                            }
                            .shadow(radius: 10, x: 20, y: 10)
                            .rotationEffect(.degrees(flag ? -0.4 : -90), anchor: .center).animation(.easeInOut(duration: 0.5))
                            .scaleEffect(flag ? 0.4 : 0.15).animation(.easeInOut(duration: 0.5))
                            .position(x: (flag ? 220 : -20), y: (flag ? 380 : 30)).animation(Animation.easeInOut(duration: 0.5).delay(0.3))
                            .onTapGesture {
                                page = 5
                                self.anima_sq = true
                                self.anima_sc = true
                            }
                        Image("提示灯")
                            .scaleEffect(1.1)
                            .opacity(0.6)
                            .position(x: -6.5, y: 0)
                    }
                    
                }
            }
            else if page == 10 {
                ZStack {
                    HStack {
                        Image("闭合卷轴")
                            .onAppear() {
                                self.flag1.toggle()
                            }
                            .shadow(radius: 10, x: 20, y: 10)
                            .rotationEffect(.degrees(flag ? -0.4 : -90), anchor: .center).animation(.easeInOut(duration: 0.5))
                            .scaleEffect(flag ? 0.4 : 0.15).animation(.easeInOut(duration: 0.5))
                            .position(x: (flag1 ? -20 : -70), y: 30).animation(Animation.easeInOut(duration: 0.5).delay(0.3))
                            .onTapGesture {
                                page = 5
                            }
                        Image("提示灯")
                            .scaleEffect(1.1)
                            .opacity(0.6)
                            .position(x: 64, y: 0)
                        Image("返回")
                            .scaleEffect(0.5)
                            .position(x: 70, y: 35)
                            .onTapGesture {
                                page = 9
                                back = 1
                                self.anima_tz = true
                            }
                    }
                }
            }

            else if page == 11 {
                ZStack {
                    HStack {
                        Image("闭合卷轴")
                            .onAppear() {
                                self.flag1.toggle()
                            }
                            .shadow(radius: 10, x: 20, y: 10)
                            .rotationEffect(.degrees(flag ? -0.4 : -90), anchor: .center).animation(.easeInOut(duration: 0.5))
                            .scaleEffect(flag ? 0.4 : 0.15).animation(.easeInOut(duration: 0.5))
                            .position(x: (flag1 ? -20 : -70), y: 30).animation(Animation.easeInOut(duration: 0.5).delay(0.3))
                            .onTapGesture {
                                page = 5
                            }
                        Image("提示灯")
                            .scaleEffect(1.1)
                            .opacity(0.6)
                            .position(x: 64, y: 0)
                        Image("返回")
                            .scaleEffect(0.5)
                            .position(x: 70, y: 35)
                            .onTapGesture {
                                page = 9
                                back = 1
                                self.anima_tz = true
                            }
                    }
                }
            }
//            else if page == 11 {
//                ZStack {
//                    HStack {
//                        Image("闭合卷轴")
//                            .onAppear() {
//                                self.flag1.toggle()
//                            }
//                            .shadow(radius: 10, x: 20, y: 10)
//                            .rotationEffect(.degrees(flag ? -0.4 : -90), anchor: .center).animation(.easeInOut(duration: 0.5))
//                            .scaleEffect(flag ? 0.4 : 0.15).animation(.easeInOut(duration: 0.5))
//                            .position(x: (flag1 ? -20 : -70), y: 30).animation(Animation.easeInOut(duration: 0.5).delay(0.3))
//                            .onTapGesture {
//                                page = 5
//                            }
//                        Image("提示灯")
//                            .scaleEffect(1.1)
//                            .opacity(0.6)
//                            .position(x: 64, y: 0)
//                        Image("返回")
//                            .scaleEffect(0.5)
//                            .position(x: 70, y: 35)
//                            .onTapGesture {
//                                page = 9
//                                back = 1
//                                self.anima_tz = true
//                            }
//                    }
//                }
//                
//                VStack(spacing: 10) {
//                    if self.scannedCode != nil {
//                        Text("scanner")
//                    }
//                    Button("Scan Code") {
//                        self.isPresentingScanner = true
//                    }
//                    .sheet(isPresented: $isPresentingScanner) {
//                        self.scannerSheet
//                    }
//                }
//                
//            }
            else if page == 12 {
                
                ZStack {
                    HStack {
                        Image("闭合卷轴")
                            .onAppear() {
                                self.flag1.toggle()
                            }
                            .shadow(radius: 10, x: 20, y: 10)
                            .rotationEffect(.degrees(flag ? -0.4 : -90), anchor: .center).animation(.easeInOut(duration: 0.5))
                            .scaleEffect(flag ? 0.4 : 0.15).animation(.easeInOut(duration: 0.5))
                            .position(x: (flag1 ? -20 : -70), y: 30).animation(Animation.easeInOut(duration: 0.5).delay(0.3))
                            .onTapGesture {
                                page = 5
                            }
                        Image("提示灯")
                            .scaleEffect(1.1)
                            .opacity(0.6)
                            .position(x: 64, y: 0)
                        Image("返回")
                            .scaleEffect(0.5)
                            .position(x: 70, y: 35)
                            .onTapGesture {
                                page = 9
                                back = 1
                                self.anima_tz = true
                            }
                    }
                    ZStack {
                        Image("拓展长卷")
                            .onAppear() {
                                self.anima_tz.toggle()
                            }
                            .scaleEffect(0.23)
                            .position(x: 205, y: 282.0)
                            .offset(y: (anima_tz ? 500 : 0)).animation(Animation.spring().speed(1))
                            .rotationEffect(.degrees(-0.3))
                            .frame(height: 150)
                        Image("小东西")
                            .scaleEffect(0.22)
                            .position(x: 205, y: 205.0)
                            .offset(x: (anima_tz ? 1000 : 0)).animation(Animation.spring().speed(1))
                            .rotationEffect(.degrees(-0.3))
                    }
                    ZStack {
                        Image("1")
                            .scaleEffect(0.23)
                            .position(po1)
                            .gesture(dragGesture1)
                        Image("2")
                            .scaleEffect(0.23)
                            .position(po2)
                            .gesture(dragGesture2)
                        Image("3")
                            .scaleEffect(0.23)
                            .position(po3)
                            .gesture(dragGesture3)
                        Image("4")
                            .scaleEffect(0.23)
                            .position(po4)
                            .gesture(dragGesture4)
                        Image("5")
                            .scaleEffect(0.23)
                            .position(po5)
                            .gesture(dragGesture5)
                        Image("6")
                            .scaleEffect(0.23)
                            .position(po6)
                            .gesture(dragGesture6)
                        Image("7")
                            .scaleEffect(0.23)
                            .position(po7)
                            .gesture(dragGesture7)
                        Image("8")
                            .scaleEffect(0.23)
                            .position(po8)
                            .gesture(dragGesture8)
                        Image("9")
                            .scaleEffect(0.23)
                            .position(po9)
                            .gesture(dragGesture9)
                    }
                    .padding(.top, 70)
                }
            }
            else if page == 13 {
                ZStack {
                    HStack {
                        Image("闭合卷轴")
                            .onAppear() {
                                self.flag1.toggle()
                            }
                            .shadow(radius: 10, x: 20, y: 10)
                            .rotationEffect(.degrees(flag ? -0.4 : -90), anchor: .center).animation(.easeInOut(duration: 0.5))
                            .scaleEffect(flag ? 0.4 : 0.15).animation(.easeInOut(duration: 0.5))
                            .position(x: (flag1 ? -20 : -70), y: 30).animation(Animation.easeInOut(duration: 0.5).delay(0.3))
                            .onTapGesture {
                                page = 5
                            }
                        Image("提示灯")
                            .scaleEffect(1.1)
                            .opacity(0.6)
                            .position(x: 64, y: 0)
                        Image("返回")
                            .scaleEffect(0.5)
                            .position(x: 70, y: 35)
                            .onTapGesture {
                                page = 9
                                back = 1
                                self.anima_rl = true
                            }
                    }
                    ScrollView(.vertical) {
                        Image("日历长卷")
                            .onAppear() {
                                self.anima_rl.toggle()
                            }
                            .scaleEffect(0.23)
                            .position(x: 215, y: 450.0)
                            .offset(y: (anima_rl ? 500 : 0)).animation(Animation.spring().speed(1))
                            .rotationEffect(.degrees(-0.3))
                            .frame(height: 150)
                    }
                    .padding(.top, 70)
                }
            }
        }
        .background(Image("背景").frame(width: nil).edgesIgnoringSafeArea(.all).scaleEffect(1.1))
        
    }
}

struct View1: View {
    @State var anima_sq = true
    var body: some View {
        VStack {
            Image("搜索框 2")
                .offset(y: 10)
            ScrollView(.vertical, showsIndicators: false) {
                Image("社区")
                    .offset(y: (anima_sq ? 100 : 10)).animation(Animation.spring().speed(0.6).delay(0.1))
            }
        }
        .background(Image("背景").frame(width: nil).edgesIgnoringSafeArea(.all).scaleEffect(1.1).opacity(0.5))
        .onAppear() {
            self.anima_sq = false
        }
        .onDisappear() {
            self.anima_sq = true
        }
    }
}
struct View2: View {
    @State var anima_sc = true
    var body: some View {
        VStack {
            Image("搜索框 2")
                .offset(y: 10)
            ScrollView(.vertical, showsIndicators: false) {
                HStack{
                    VStack {
                        Image("内容栏 6")
                            .offset(y: (anima_sc ? 300 : 0)).animation(Animation.spring().speed(0.6).delay(0.1))
                        Image("内容栏 5")
                            .offset(y: (anima_sc ? 300 : 0)).animation(Animation.spring().speed(0.6).delay(0.2))
                        Image("内容栏 4")
                            .offset(y: (anima_sc ? 300 : 0)).animation(Animation.spring().speed(0.6).delay(0.3))
                    }
                    VStack {
                        Image("内容栏")
                            .offset(y: (anima_sc ? 300 : 15)).animation(Animation.spring().speed(0.6).delay(0.2))
                        Image("内容栏 3")
                            .offset(y: (anima_sc ? 300 : 15)).animation(Animation.spring().speed(0.6).delay(0.3))
                        Image("内容栏 2")
                            .offset(y: (anima_sc ? 300 : 15)).animation(Animation.spring().speed(0.6).delay(0.4))
                    }
                }
            }
            .onDisappear() {
                self.anima_sc = true
            }
            .onAppear() {
                self.anima_sc = false
            }
        }
        .background(Image("背景").frame(width: nil).edgesIgnoringSafeArea(.all).scaleEffect(1.1).opacity(0.5))
    }
}

struct View3: View {
    var body: some View {
        VStack {
            ScrollView(.vertical, showsIndicators: false) {
                Image("私信")
            }
        }
        .background(Image("背景").frame(width: nil).edgesIgnoringSafeArea(.all).scaleEffect(1.1).opacity(0.3))
    }
}

struct View4: View {
    var body: some View {
        VStack {
            ScrollView(.vertical, showsIndicators: false) {
                Image("我的")
            }
        }
        .background(Image("背景").frame(width: nil).edgesIgnoringSafeArea(.all).scaleEffect(1.1).opacity(0.3))
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}
