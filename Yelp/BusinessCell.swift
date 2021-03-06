//
//  BusinessCell.swift
//  Yelp
//
//  Created by Sean Nam on 12/14/17.
//  Copyright © 2017 Timothy Lee. All rights reserved.
//

import UIKit

class BusinessCell: UITableViewCell {

    @IBOutlet weak var thumbImageView: UIImageView!
    @IBOutlet weak var ratingImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var distanceLabel: UILabel!
    @IBOutlet weak var reviewsCountLabel: UILabel!
    @IBOutlet weak var categoriesLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!

    var business: Business! {
        didSet {
            nameLabel.text = business.name
            distanceLabel.text = business.distance
            reviewsCountLabel.text = "\(business.reviewCount!) Reviews"
            categoriesLabel.text = business.categories
            addressLabel.text = business.address
            
            if business.imageURL != nil {
                thumbImageView.setImageWith(business.imageURL!)
            }
            if business.ratingImageURL != nil {
                ratingImageView.setImageWith(business.ratingImageURL!)
            }
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        thumbImageView.layer.cornerRadius = 3
        thumbImageView.clipsToBounds = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
