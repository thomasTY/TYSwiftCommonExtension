
import UIKit
extension UIBarButtonItem
{
    
    /// 快速创建UIBarButtonItem
    ///
    /// - parameter setImgName:            图片,允许不不传值
    /// - parameter title:                 标题,允许不不传值
    /// - parameter target:                事件监听者
    /// - parameter selector:              响应事件函数
    ///
    /// - returns: UIBarButtonItem
    convenience init(setImgName:String? = nil, title:String? = nil, target:Any?, action:Selector)
    {
        self.init()
        //调用封装函数创建按钮
        let button = UIButton(setImgName: setImgName, title: title, target: target, action: action)
        self.customView = button
    }
}
