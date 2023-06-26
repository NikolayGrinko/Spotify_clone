//
//  SearchResultsSubtitleTableViewCell.swift
//  Spotify
//
//  Created by Николай Гринько on 22.06.2023.
//

import UIKit
import SDWebImage



class SearchResultsSubtitleTableViewCell: UITableViewCell {

 static let identifier = "SearchResultsSubtitleTableViewCell"

    private let label: UILabel = {
        
        let label = UILabel()
        label.numberOfLines = 1
        return label
    }()
    
    private let subtitlelabel: UILabel = {
        let label = UILabel()
        label.textColor = .secondaryLabel
        label.numberOfLines = 1
        return label
    }()
    
    
    private let iconImageViews: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(label)
        contentView.addSubview(subtitlelabel)
        contentView.addSubview(iconImageViews)
        contentView.clipsToBounds = true
        accessoryType = .disclosureIndicator
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        let imageSize: CGFloat = contentView.height-10
        iconImageViews.frame = CGRect(x: 10, y: 5, width: imageSize, height: imageSize
        )
        let labelHeight = contentView.height/2
        label.frame = CGRect(
            x: iconImageViews.right+10,
            y: 0,
            width: contentView.width-iconImageViews.right-15,
            height: labelHeight
        )
        
        subtitlelabel.frame = CGRect(
            x: iconImageViews.right+10,
            y: label.bottom,
            width: contentView.width-iconImageViews.right-15,
            height: labelHeight
        )
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        iconImageViews.image = nil
        label.text = nil
        subtitlelabel.text = nil
    }
    
    func configure(with viewModel: SearchResultSubtitleTableViewCellViewModel) {
        label.text = viewModel.title
        subtitlelabel.text = viewModel.title
        iconImageViews.sd_setImage(with: viewModel.imageURL, placeholderImage: UIImage(systemName: "photo"), completed: nil)
    }
    
}
