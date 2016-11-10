

import UIKit

/// 对UIView的扩展
extension UIView
{
    //  扩展计算属性
    //  x坐标
    var x: CGFloat
        {
        get
        {
            return self.frame.origin.x
        } set
        {
            self.frame.origin.x = newValue
        }
    }
    
    //  y坐标
    var y: CGFloat
        {
        get
        {
            return self.frame.origin.y
        }
        set
        {
            self.frame.origin.y = newValue
        }
    }
    
    //  width宽度
    var width: CGFloat
        {
        get
        {
            return self.frame.size.width
        }
        set
        {
            self.frame.size.width = newValue
        }
    }
    //  height 高度
    var height: CGFloat
        {
        get
        {
            return self.frame.size.height
        }
        set
        {
            self.frame.size.height = newValue
        }
    }
    
    //  size 尺寸
    var size: CGSize
        {
        get
        {
            return self.frame.size
        }
        set
        {
            self.frame.size = newValue
        }
    }

    //  size 位置
    var point: CGPoint
        {
        get
        {
            return self.frame.origin
        }
        set
        {
            self.frame.origin = newValue
        }
    }
    
    //  获取中心 x
    var centerX: CGFloat
        {
        get
        {
            return self.center.x
        }
        set
        {
            self.center.x = newValue
        }
    }
    
    //  获取中心 y
    var centerY: CGFloat
        {
        get
        {
            return self.center.y
        }
        set
        {
            self.center.y = newValue
        }
    }

}
