# <center>InsideMobileiOS</center>
<br/>
## Summary

The InsideMobileiOS Reference Guide provides the necessary information for building INSIDE chat into a third party iOS Mobile App.

An INSIDE "Server URL" and "Account Key" are required in order to integrate with INSIDE. Please ask your INSIDE Account Manager or email <a href="mailto:support@powerfront.com" target="_blank" rel="external">support@powerfront.com</a> to obtain these details.

For more information about INSIDE please refer to the website at <a href="http://www.powerfront.com" target="_blank" rel="external">www.powerfront.com.</a>

Please refer to the <a href="https://docs.google.com/presentation/d/1VAs2YaZpwdlGIV7IOH48yBhmx7p-jNmGsG4P-EKe5-k/edit?usp=sharing" target="_blank" rel="external">Implementation Guide</a> for step by step instructions on how to utilise the framework.

Please check <a href="versionHistory.html">Framework Version History.</a>

### Installation

#### CocoaPods

CocoaPods is a dependency manager for Swift and Objective-C, which automates and simplifies the process of using 3rd-party libraries like InsideMobileiOS in your projects. You can install it with the following command:

```
$ gem install cocoapods
```
To integrate InsideMobileiOS into your Xcode project using CocoaPods, specify it in your Podfile:
```
pod 'InsideMobileiOS', '1.3.2'
```

Then, run the following command:
```
$ pod install
```

#### Carthage

Carthage is a decentralized dependency manager that builds your dependencies and provides you with binary frameworks.

You can install Carthage with Homebrew using the following command:
```
$ brew update
$ brew install carthage
```
To integrate InsideMobileiOS into your Xcode project using Carthage, specify it in your Cartfile:

```
git "https://bitbucket.org/insideteam/insidemobileios.git" "1.3.2"
```

Run ```carthage update``` to get the framework and drag the InsideMobileiOS.framework into your Xcode project.



#### Manually
<a href="https://drive.google.com/drive/folders/1GE8FnCGfdhvAx0glGoW0gOog0nf_6NqM?usp=sharing" target="_blank" rel="external">Download </a>the latest framework and include it as Embedded Framework in project.

### Usage

##### Swift
To use in Swift just import InsideMobileiOS module

##### Objective-C
To use in Obj-C #import < InsideMobileiOS/InsideMobileiOS-Swift.h >

### Setting up the client object

##### Swift
```
//Initialize the InsideClient class
let client = InsideClient(domainURL: "<Server URL>",
                         accountKey: "<Account Key>",
                      mobileSiteURL: "<Mobile Website URL>",
                            appName: "<Application Name>",
                          subsiteId: "<Subsite ID>")
```

##### Objective-C
```
//Initialize the InsideClient class
InsideClient *client = [[InsideClient alloc] initWithDomainURL:@"<Server URL>"
                                                    accountKey:@"<Account Key>"
                                                 mobileSiteURL:@"<Mobile Website URL>"
                                                       appName:@"<Application Name>"
                                                     subsiteId:@"<Subsite ID>"];
```


### Tracking the User's Activity

##### Swift
```
//Set the User's current view, this sets the client.view object
client.setView(type: insideViewType.Home, name: "Home")

//Push the updated context to Inside
client.push()
```

##### Objective-C
```
//Set the User's current view, this sets the client.view object
[client setViewWithType:InsideViewTypeHome name:@"Home"];

//Push the updated context to Inside
[client push];
```


This will put visitor on the floor and start connection with chat.
