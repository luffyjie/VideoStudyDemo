//
//  ViewController.swift
//  VideoStudyDemo
//
//  Created by ios on 2025/10/26.
//
import UIKit
import SnapKit

class ViewController: UIViewController {
    
    // MARK: - UI Elements

    let topContainerView = UIView()
    
    let buttonOne = UIButton(type: .system)
    let buttonTwo = UIButton(type: .system)
    
    let leftView = UIView()
    let rightView = UIView()

    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        setupViews()
        setupConstraints()
    }

    // MARK: - Setup

    private func setupViews() {
        buttonOne.setTitle("开始捕获", for: .normal)
        buttonOne.backgroundColor = .red
        buttonOne.setTitleColor(.white, for: .normal)
        buttonOne.layer.cornerRadius = 5
        
        buttonTwo.setTitle("结束捕获", for: .normal)
        buttonTwo.backgroundColor = .red
        buttonTwo.setTitleColor(.white, for: .normal)
        buttonTwo.layer.cornerRadius = 5

        view.addSubview(topContainerView)
        topContainerView.backgroundColor = .systemBackground
        
        topContainerView.addSubview(buttonOne)
        topContainerView.addSubview(buttonTwo)

        view.addSubview(leftView)
        view.addSubview(rightView)
        
        leftView.backgroundColor = .systemBlue
        rightView.backgroundColor = .systemPink
    }

    private func setupConstraints() {
        topContainerView.snp.makeConstraints { (make) in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top)
            make.leading.trailing.equalToSuperview()
            make.height.equalTo(60)
        }
        
        buttonOne.snp.makeConstraints { (make) in
            make.height.equalTo(44)
            make.centerY.equalToSuperview()
            make.leading.equalToSuperview().offset(10)
            
            make.width.equalTo(buttonTwo.snp.width)
            make.trailing.equalTo(buttonTwo.snp.leading).offset(-10)
        }

        buttonTwo.snp.makeConstraints { (make) in
            make.height.equalTo(44)
            make.centerY.equalToSuperview()
            make.trailing.equalToSuperview().offset(-10)
        }

        leftView.snp.makeConstraints { (make) in
            make.top.equalTo(topContainerView.snp.bottom)
            make.bottom.equalTo(view.safeAreaLayoutGuide.snp.bottom)
            make.leading.equalToSuperview()
            make.width.equalTo(rightView.snp.width)
            make.trailing.equalTo(rightView.snp.leading)
        }
        
        rightView.snp.makeConstraints { (make) in
            make.top.equalTo(leftView.snp.top)
            make.bottom.equalTo(leftView.snp.bottom)
            make.trailing.equalToSuperview()
        }
    }
}
