//
//  UIApplication+.swift
//  SwiftyExts
//
//  Created by LDD on 2019/10/7.
//

#if canImport(UIKit)
import UIKit

public extension UIApplication {
    
    var topViewController: UIViewController? {
        guard var topViewController = UIApplication.shared.keyWindow?.rootViewController else { return nil }

        while let presentedViewController = topViewController.presentedViewController {
            topViewController = presentedViewController
        }
        return topViewController
    }


    var topNavigationController: UINavigationController? {
        return topViewController as? UINavigationController
    }
}
#endif