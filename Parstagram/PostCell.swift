//
//  PostCell.swift
//  Parstagram
//
//  Created by Rohith Kasar on 4/8/19.
//  Copyright © 2019 rohith.kasar. All rights reserved.
//

import UIKit

class PostCell: UITableViewCell {

    
    @IBOutlet weak var favButton: UIButton!
    @IBOutlet weak var photoView: UIImageView!
    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var captionLabel: UILabel!
    @IBOutlet weak var usernameLabel2: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    var favorited:Bool = false
    //var retweeted:Bool = false
    func setFavorite(_ isFavorited:Bool) {
        favorited = isFavorited
        if (favorited) {
            favButton.setImage(UIImage(named:"fullHeart"), for: UIControl.State.normal)
            
        } else {
            favButton.setImage(UIImage(named:"emptyHeart"), for: UIControl.State.normal)
        }
        
    }
    
    
    @IBAction func onFavorite(_ sender: UIButton) {
        let toBeFavorited = !favorited
        
        if (toBeFavorited) {
            self.setFavorite(true)
        } else {
            self.setFavorite(false)
        }
    }
}
