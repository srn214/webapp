//
//  UIImageView+.swift
//  SwiftyExts
//
//  Created by LDD on 2018/3/7.
//

#if canImport(UIKit)
#if os(iOS) || os(tvOS)
import UIKit
import ImageIO

public extension UIImageView {

    func loadGif(data: Data) {
        DispatchQueue.global().async {
            let image = UIImage.gif(data: data)
            DispatchQueue.main.async {
                self.image = image
            }
        }
    }

    func loadGif(url: String) {
        DispatchQueue.global().async {
            let image = UIImage.gif(url: url)
            DispatchQueue.main.async {
                self.image = image
            }
        }
    }

    func loadGif(name: String) {
        DispatchQueue.global().async {
            let image = UIImage.gif(name: name)
            DispatchQueue.main.async {
                self.image = image
            }
        }
    }
}
#endif
#endif
