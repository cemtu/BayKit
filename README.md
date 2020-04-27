# BayKit

## Table of Contents

- [Installation](#installation)
- [Usage](#usage)
- [License](#license)

---

## Installation


### CocoaPods

<a href="http://cocoapods.org/" target="_blank">CocoaPods</a> is a dependency manager for Cocoa projects. You can install it with the following command:
```shell
$ gem install cocoapods
```

To integrate BayKit into your Xcode project using CocoaPods, specify it in your `Podfile`:
```ruby
source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '10.0'
use_frameworks!

target '<Your Target Name>' do
    pod 'BayKit', '~> 1.0.1'
end
```

Then, run the following command:

```bash
$ pod install
```

---

## Usage

```swift
import BayKit

class MyViewController: UIViewController {
    lazy var box = UIView()
    let magicOffset = BayKit()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(box)
        box.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: magicOffset.offseter(scaleFactor: 1.0, 
        offset: 24, direction: .horizontal, currentDeviceBound: BayKit.DeviceList.iPhone5.screenWidth)).isActive = true
    }
}
```

---

## Contributing

### Step 1

- **Option 1**
    - Fork this repo.

- **Option 2**
    - Clone this repo to your local machine using `https://github.com/BayCem/BayKit.git`

### Step 2

- **HACK AWAY!** 🔨🔨🔨

### Step 3

- 🔃 Create a new pull request.

---

## License

- **[MIT license](http://opensource.org/licenses/mit-license.php)**
- Copyright 2020 © BayCem.
