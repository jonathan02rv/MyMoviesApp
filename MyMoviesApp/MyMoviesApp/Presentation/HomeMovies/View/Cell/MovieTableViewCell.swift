//
//  MovieTableViewCell.swift
//  MyMoviesApp
//
//  Created by Jhonatahan Orlando Rivera Vilcapoma on 10/09/21.
//

import UIKit

class MovieTableViewCell: UITableViewCell {
    static func nib() -> UINib{
        return UINib(nibName: "MovieTableViewCell", bundle: nil)
    }
    public static let identifier = "MovieTableViewCell"
    
    @IBOutlet weak var title: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
