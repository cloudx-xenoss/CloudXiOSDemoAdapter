# CloudX Demo Adapter
Demo adapter for CloudX Core iOS SDK

## Prerequisites

- Use Xcode 15.3 or higher
- Target iOS 13.0 or higher

## 🛠️ Installation

### 📦 CocoaPods

CloudX SDK demo adapter is available though [CocoaPods](https://guides.cocoapods.org/using/getting-started.html).

Open your project's `Podfile` and add this line to your app's target
```ruby
pod 'CloudXDemoAdapter'
```

Install the pod from command line using:
```bash
pod install --repo-update
```
- Installing via Cocoapods should handle the project configuration, but if you run into any issues building, running, or seeing ads, check the Project Configuration / Troubleshooting steps below

### 📦 Swift Package Manager

Import the Swift Packaged into your XCode project via the following url
```bash
https://github.com/cloudx-xenoss/CloudXiOSDemoAdapter
```
- If you run into any issues during installation, check the Project Configuration / Troubleshooting steps below

### 📦 Manual  
1. Navigate to the releases and open the latest release (or whichever release you would like): [Releases](https://github.com/cloudx-xenoss/CloudXiOSDemoAdapter/releases)  
2. 📥 Download the `CloudXDemoAdapter.xcframework.zip` file from the release  
3. 🗂️ Unzip the download then drag and drop `CloudXDemoAdapter.xcframework` into your XCode project
4. Follow the Project Configuration / Troubleshooting steps in the section below for additional setup setups

## 🧰 Project Configuration / Troubleshooting

**1. Linker Flags**  
Add the following to your project’s Other Linker Flags in Build Settings:  
`-ObjC`

**2. Enable Objective-C Exceptions (Recommended)**
- Some older versions of Demo SDKs expect Obj-C exceptions to be enabled.
- Go to Build Settings
- Set Enable Objective-C Exceptions (GCC_ENABLE_OBJC_EXCEPTIONS) to YES


**3. App Transport Security (ATS)**  
If your app communicates with non-HTTPS servers for ads (less common), update your Info.plist to allow exceptions:  
```
<key>NSAppTransportSecurity</key>
<dict>
    <key>NSAllowsArbitraryLoads</key>
    <true/>
</dict>
```
⚠️ *Note: Only do this if absolutely necessary.*


**4. NSUserTrackingUsageDescription (iOS 14+)**  
If your app targets iOS 14+, and you want access to the IDFA, you must add a usage description in your Info.plist:
```
<key>NSUserTrackingUsageDescription</key>
<string>This identifier will be used to deliver personalized ads to you.</string>
```

**5. Minimum Deployment Target**  
📱 As of recent versions, Demo SDK requires iOS 11.0+. Set this in your project’s deployment target.


**6. Bitcode (Optional)**  
🚫 Demo SDK does not support Bitcode. If you're running into issues during archive or validation, disable Bitcode:  

Go to your target → Build Settings → Set **Enable Bitcode** to `NO`.

