//
//  ViewController.swift
//  UIKit_Marathon_1
//
//  Created by Eugene on 1/11/24.
//

import UIKit

final class GradientSquareView: UIView {
    
    private let gradientLayer = CAGradientLayer()
    
    private let colors: [CGColor]
    private let endPoint: CGPoint
    private let startPoint: CGPoint
    private let cornerRadius: CGFloat
    
    init(startPoint: CGPoint, endPoint: CGPoint, colors: [CGColor], cornerRadius: CGFloat) {
        self.colors = colors
        self.endPoint = endPoint
        self.startPoint = startPoint
        self.cornerRadius = cornerRadius
        super.init(frame: .zero)
        setupGradientLayer()
    }
    
    @available(*, deprecated)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupGradientLayer() {
        gradientLayer.colors = colors
        gradientLayer.startPoint = startPoint
        gradientLayer.endPoint = endPoint
        gradientLayer.frame = bounds
        gradientLayer.cornerRadius = cornerRadius
        layer.insertSublayer(gradientLayer, at: 0)
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        gradientLayer.frame = bounds
    }
}
