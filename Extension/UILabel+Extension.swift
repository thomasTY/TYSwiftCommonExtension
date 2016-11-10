
import UIKit
extension UILabel
{
    
    /// 快速创建Label
    ///
    /// - parameter text:      文字
    /// - parameter font:      字体大小
    /// - parameter textColor: 字体颜色
    ///
    /// - returns: UILabel
    convenience init(text:String, font:CGFloat, textColor:UIColor, maxWidth: CGFloat = 0)
    {
        self.init()
        self.text = text
        self.font = UIFont.systemFont(ofSize: font)
        self.textColor  = textColor
        if maxWidth > 0 {
            // 指定最大显示的宽度
            self.preferredMaxLayoutWidth = maxWidth
            // 换行
            self.numberOfLines = 0
            
        }
    }
}
