//
//  LockSplashView.swift
//  PasscodeLock
//
//  Created by Chris Ziogas on 19/12/15.
//  Copyright © 2015 Yanko Dimitrov. All rights reserved.
//

import UIKit

public class LockSplashView: UIView {
    
    private lazy var logo: UIImageView = {
        
        let image = UIImage(named: "fake-logo")
        let view = UIImageView(image: image)
        view.contentMode = UIViewContentMode.Center
        view.translatesAutoresizingMaskIntoConstraints = false
        
        return view
    }()
    
    ///////////////////////////////////////////////////////
    // MARK: - Initializers
    ///////////////////////////////////////////////////////
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = UIColor.whiteColor()
        
        addSubview(logo)
        setupLayout()
    }
    
    convenience init() {
        self.init(frame: UIScreen.mainScreen().bounds)
    }
    
    public required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    ///////////////////////////////////////////////////////
    // MARK: - Layout
    ///////////////////////////////////////////////////////
    
    private func setupLayout() {
        
        let views = ["logo": logo]
        
        addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("H:|[logo]|", options: [], metrics: nil, views: views))
        addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:|[logo]", options: [], metrics: nil, views: views))
        
        addConstraint(NSLayoutConstraint(item: logo, attribute: .CenterX, relatedBy: .Equal, toItem: self, attribute: .CenterX, multiplier: 1, constant: 0))
        addConstraint(NSLayoutConstraint(item: self, attribute: .CenterY, relatedBy: .Equal, toItem: logo, attribute: .CenterY, multiplier: 1, constant: 0))
    }
}
