//
//  CollectionViewCell.swift
//  compositionalLayout
//
//  Created by mac on 25/03/23.
//

import UIKit
import SnapKit

class CollectionViewCell: UICollectionViewCell {
    let img = UIImageView()
    let title = UILabel()
    let label = UILabel()
    let button = UIButton()
    let info = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        contentView.addSubview(img)
        img.snp.makeConstraints { make in
            make.top.left.equalToSuperview().offset(10)
            make.bottom.equalToSuperview().offset(-10)
            make.height.width.equalTo(50)
        }
        img.clipsToBounds = true
        img.layer.cornerRadius = 10
        
        contentView.addSubview(title)
        title.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(10)
            make.left.equalTo(img.snp_rightMargin).offset(10)
        }
        title.font = .systemFont(ofSize: 20)
        title.numberOfLines = 0
        
        contentView.addSubview(label)
        label.snp.makeConstraints { make in
            make.left.equalTo(img.snp_rightMargin).offset(10)
            make.bottom.equalToSuperview().offset(-10)
        }
        label.font = .systemFont(ofSize: 15)
        label.textColor = .gray
        
        contentView.addSubview(button)
        button.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.right.equalToSuperview().offset(-10)
            make.height.equalTo(30)
            make.width.equalTo(50)
        }
        button.backgroundColor = .gray
        button.setTitle("GET", for: .normal)
        
        contentView.addSubview(info)
        info.snp.makeConstraints { make in
            make.top.equalTo(button.snp_bottomMargin).offset(7)
            make.centerX.equalTo(button)
        }
        info.font = .systemFont(ofSize: 13)
        info.textColor = .gray
        info.text = "in-App Purchases"
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
