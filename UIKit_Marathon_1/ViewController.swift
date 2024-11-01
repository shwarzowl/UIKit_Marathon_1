//
//  ViewController.swift
//  UIKit_Marathon_1
//
//  Created by Eugene on 1/11/24.
//

import UIKit

class ViewController: UIViewController {

    private let gradientSquareView: GradientSquareView = {
        let gradientColors: [CGColor] = [
            UIColor.blue.withAlphaComponent(0.8).cgColor,
            UIColor.red.withAlphaComponent(0.5).cgColor
        ]
        let gradientSquareView = GradientSquareView(
            startPoint: .zero,
            endPoint: CGPoint(x: 1, y: 1),
            colors: gradientColors,
            cornerRadius: 10
        )
        gradientSquareView.layer.shadowColor = UIColor.black.cgColor
        gradientSquareView.layer.masksToBounds = false
        gradientSquareView.layer.shadowOffset = .zero
        gradientSquareView.layer.shadowRadius = 10
        gradientSquareView.layer.shadowOpacity = 0.8
        return gradientSquareView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
}

private extension ViewController {

    func setup() {
        setupViews()
    }

    func setupViews() {
        view.backgroundColor = .white
        view.addSubview(gradientSquareView)
        
        NSLayoutConstraint.activate([
            gradientSquareView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 100),
            gradientSquareView.widthAnchor.constraint(equalToConstant: 100),
            gradientSquareView.heightAnchor.constraint(equalToConstant: 100),
            gradientSquareView.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
}
