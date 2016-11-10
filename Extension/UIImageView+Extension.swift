
import UIKit
import SDWebImage


extension UIImageView
{
    
    /// 快速创建ImageView
    ///
    /// - parameter imageName: UIImage名
    ///
    /// - returns: UIImageView
    convenience init(imageName:String)
    {
        self.init(image:UIImage(named: imageName))
    }
    
    /// 封装SDWebImage
    ///
    /// - parameter withURLString:    图片
    /// - parameter placeholderImage: 占位图
    func extSetImage(withURLString:String?, placeholderImage:String?)
    {
        let url = URL(string: withURLString ?? "")
        guard let u = url else {
            return
        }
        self.sd_setImage(with: u, placeholderImage: UIImage(named: placeholderImage ?? ""))
    }
}
