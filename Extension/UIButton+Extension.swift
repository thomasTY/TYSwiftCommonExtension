
import UIKit

extension UIButton
{
    
    /// 快速创建按钮(按钮图&背景图&事件)
    ///
    /// - parameter setImgName:        按钮图片
    /// - parameter backgroundImgName: 按钮背景图片
    /// - parameter target:            点击事件的监听者
    /// - parameter action:            响应事件的函数
    ///
    /// - returns: 按钮
    convenience init(setImgName:String, backgroundImgName:String, target:Any?, action:Selector)
    {
        self.init()
        //设置图片
        self.setImage(UIImage(named:setImgName), for: UIControlState.normal)
        self.setImage(UIImage(named:"\(setImgName)_highlighted"), for: UIControlState.highlighted)
        //设置背景图片
        self.setBackgroundImage(UIImage(named:backgroundImgName), for: UIControlState.normal)
        self.setBackgroundImage(UIImage(named:"\(backgroundImgName)_highlighted"), for: UIControlState.highlighted)
        self.sizeToFit()
        //添加点击事件
        self.addTarget(target, action: action, for: UIControlEvents.touchUpInside)
    }
    
    /// 快速创建按钮（按钮图&文字&事件）
    ///
    /// - parameter setImgName: 按钮图片,允许不不传值
    /// - parameter title:      按钮标题,允许不不传值
    /// - parameter target:     事件监听者
    /// - parameter action:     事件响应函数
    ///
    /// - returns: 按钮
    convenience init(setImgName:String? = nil, hasHighlightImg:Bool? = true, title:String? = nil, target:Any?, action:Selector)
    {
        self.init()
        //设置图片
        if let img = setImgName
        {
            self.setImage(UIImage(named:img), for: UIControlState.normal)
            if hasHighlightImg!
            {
                self.setImage(UIImage(named:"\(img)_highlighted"), for: UIControlState.highlighted)
            }
        }
        //设置标题
        if let til = title
        {
            self.setTitle(til, for: UIControlState.normal)
            self.setTitleColor(UIColor.darkGray, for: UIControlState.normal)
            self.setTitleColor(themeColor, for: UIControlState.highlighted)
            self.titleLabel?.font = UIFont.systemFont(ofSize: 14)
        }
        self.sizeToFit()
        //添加点击事件
        self.addTarget(target, action: action, for: UIControlEvents.touchUpInside)
    }
    
    /// 快速创建按钮（背景图&文字&文字大小&文字颜色&事件）
    ///
    /// - parameter setBackgroundImgName: 背景图
    /// - parameter title:      按钮标题
    /// - parameter fontSize:   字体大小
    /// - parameter fontColor:   字体颜色
    /// - parameter target:     事件监听者
    /// - parameter action:     事件响应函数
    ///
    /// - returns: 按钮
    convenience init(setBackgroundImgName:String, title:String, fontSize:CGFloat, fontColor:UIColor, target:Any?, action:Selector)
    {
        self.init()
        //设置背景图
        self.setBackgroundImage(UIImage(named:setBackgroundImgName), for: UIControlState.normal)
        //设置标题
        self.setTitle(title, for: UIControlState.normal)
        //文字大小
        self.titleLabel?.font = UIFont.systemFont(ofSize: fontSize)
        //颜色
        self.setTitleColor(fontColor, for: UIControlState.normal)
        self.sizeToFit()
        //添加点击事件
        self.addTarget(target, action: action, for: UIControlEvents.touchUpInside)
    }
}
