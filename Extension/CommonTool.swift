

import UIKit


// MARK: - 全局常用属性
//导航条高度
public let NavigationH: CGFloat = 64
//屏幕宽度
public let ScreenWidth: CGFloat = UIScreen.main.bounds.size.width
//屏幕高度
public let ScreenHeight: CGFloat = UIScreen.main.bounds.size.height
//屏幕Bounds
public let ScreenBounds: CGRect = UIScreen.main.bounds



//MARK: - 沙盒
//Cache路径
public let cachePath: String = NSSearchPathForDirectoriesInDomains(NSSearchPathDirectory.cachesDirectory, NSSearchPathDomainMask.UserDomainMask, true).last!
//Document路径
public let documentPath: String = NSSearchPathForDirectoriesInDomains(NSSearchPathDirectory.documentDirectory, NSSearchPathDomainMask.UserDomainMask, true).last!


//MARK: - 颜色
//主题颜色
public let themeColor = UIColor.orange
//暗灰
public let darkGrayColor = UIColor.darkGray
//浅灰
public let lightGrayColor = UIColor.lightGray
//淡白色
public let littleWhite = UIColor(white: 237/255.0, alpha: 1)
//随机色
public func randomColor() -> UIColor
{
    let r = CGFloat(arc4random()%256)
    let g = CGFloat(arc4random()%256)
    let b = CGFloat(arc4random()%256)
    return UIColor(red: r/255, green: g/255, blue: b/255, alpha: 1)
}

//MARK: - 字体
//大号
public let fontBigSize:CGFloat = 18
//常号
public let fontNormalSize:CGFloat = 14
//小号
public let fontSmallSize:CGFloat = 10


