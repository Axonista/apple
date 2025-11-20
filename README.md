# RemocoKit

## Requirements

  * Xcode 15.0 or higher
  * Swift 5.7 or higher

## Supported Platforms

Based on the package definition, RemocoKit supports the following minimum platform versions:

  * **iOS:** 12.0 and higher
  * **tvOS:** 12.0 and higher
  * **macOS:** 10.15 (Catalina) and higher

## Installation

### Swift Package Manager

To add the RemocoKit SDK to your project with Swift Package Manager:

1.  Select the **Package Dependencies** tab for your Project.
2.  Click the **+** button.
3.  In the "Search or Enter Package URL" field, enter:
    `https://github.com/axonista/apple.git`
4.  When the UI updates, click the **Add Package** button.
5.  After Xcode processes the repo, you will be prompted to "Choose Package Products". Ensure that **RemocoKit** is selected and added to your specific app target.

## Quick Start

How to retrieve a collection from the Ediflo CMS using RemocoKit.

### 1\. Import the framework

First, ensure you import the module in your file:

```swift
import RemocoKit
```

### 2\. Implementation

**Using Closures:**

```swift
// Configure environment
Remoco.environment.apiKey = "apiKey_here"
Remoco.environment.appIdentifier = "appIdentifier_here"

// Create parameters
let parameters = RemocoParameters().expand(2).build()

// Fetch Collection
Remoco.getCollection(identifier: "my_collection_name", parameters: parameters) { result in
    switch result {
    case .success(let collection):
        // do something with collection
        print(collection)
    case .failure(let error):
        // handle the error here
        print(error)
    }
}
```

**Using Async/Await:**

```swift
// Configure environment
Remoco.environment.apiKey = "apiKey_here"
Remoco.environment.appIdentifier = "appIdentifier_here"

Task {
    do {
        let parameters = RemocoParameters().expand(2).build()
        let collection = try await Remoco.getCollection(identifier: "my_collection_name", parameters: parameters)
        
        // do something with collection
        print(collection)
    } catch {
        // handle the error here
        print(error)
    }
}
```

## Support

If you have questions, need help, or want to provide feedback, please use the Support Portal or contact your Account Manager.