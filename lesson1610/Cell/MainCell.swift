//
//  MainCell.swift
//  lesson1610
//
//  Created by Peter on 16.10.2023.
//

import UIKit

final class MainCell: UITableViewCell {
    
    static let identifier = "MainCell"
    
    private lazy var label: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)

        configureUI()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }


    override func prepareForReuse() {
        super.prepareForReuse()
        label.text = nil
    }
    
    func configure(title: String) {
        label.text = title
    }
    
    private func configureUI() {
        
        contentView.addSubview(label)
        
        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10.0),
            label.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16.0),
            label.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16.0),
            label.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10.0)
        ])
    }
    
}
