# AppUtilities

A reusable Swift Package with **Networking**, **Image Caching**, and **Logging** utilities.  
Easily integrate into any iOS or macOS project via Swift Package Manager.

---

## 📦 Installation

### Swift Package Manager (SPM)

In Xcode:
1. Go to **File > Add Packages…**
2. Enter the URL of this repo:

https://github.com/YOUR_USERNAME/AppUtilities.git


3. Select the **main** branch or a tagged version (e.g., `1.0.0`).

---

## 🚀 Features

- 📡 **Networking** with [Alamofire](https://github.com/Alamofire/Alamofire)  
- 🖼️ **Image Caching & Loading** with [Kingfisher](https://github.com/onevcat/Kingfisher)  
- 📝 **Logger Utility** for structured debug logging  

---

## 🛠 Usage

### 1. Networking

```swift
import AppUtilities

struct Post: Codable {
    let id: Int
    let title: String
    let body: String
}

NetworkManager.shared.request(
    "https://jsonplaceholder.typicode.com/posts/1",
    method: .get
) { (result: Result<Post, Error>) in
    switch result {
    case .success(let post):
        Logger.log("Fetched Post Title: \(post.title)")
    case .failure(let error):
        Logger.log("Error: \(error.localizedDescription)", level: .error)
    }
}


### 2. Image Loading & Caching
import AppUtilities
import UIKit

let imageView = UIImageView(frame: .init(x: 0, y: 0, width: 200, height: 200))
ImageLoader.loadImage(
    into: imageView,
    url: "https://picsum.photos/200",
    placeholder: UIImage(systemName: "photo")
)

3. Logger Utility
import AppUtilities

Logger.log("App Started") // Default INFO level
Logger.log("Something might be wrong", level: .warning)
Logger.log("An error occurred", level: .error)

Example output:
[ℹ️ INFO] ViewController.swift:12 - App Started
[⚠️ WARNING] DataManager.swift:45 - Something might be wrong
[❌ ERROR] APIClient.swift:78 - An error occurred

🧩 Requirements
iOS 15+ / macOS 12+

Swift 5.9+

License
This project is licensed under the MIT License.

---

👉 When you push this `README.md` to your GitHub repo, GitHub will automatically display the usage guide.  

Do you want me to also show you how to **tag a release (v1.0.0)** in Git so developers can install it with a stable version instead of `main`?
