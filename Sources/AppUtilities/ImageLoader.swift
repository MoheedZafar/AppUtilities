//
//  ImageLoader.swift
//  AppUtilities
//
//  Created by Moheed Zafar on 24/09/2025.
//

import UIKit
import Kingfisher

public class ImageLoader {
    public static func loadImage(into imageView: UIImageView, url: String, placeholder: UIImage? = nil) {
        if let imageURL = URL(string: url) {
            imageView.kf.setImage(with: imageURL, placeholder: placeholder)
        } else {
            imageView.image = placeholder
        }
    }
}
