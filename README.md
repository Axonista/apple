# Remoco SDK 

## Requirements 

Xcode 15.0 or higher

## Supported Platforms

Axonista provides active support for the latest iOS SDK on the latest public release of the following versions:

iOS 13.x and higher
tvOS 13.x and higher

## Installation

### Swift Package Manager

To add the RemocoKit SDK to your project with Swift Package Manager:

1. Select the "Package Dependencies" tab for your Project.
2. Click the "+" button.
3. In the "Search or Enter Package URL" field enter https://github.com/axonista/apple.git
4. When the UI updates click the "Add Package" button.
5. After Xcode processess the repo you'll be prompted to "Choose Package Products" ensure that your app target is selected and click the "Add Package" button.

## Quick Start

How to retrieve a collection from the Ediflo CMS using RemocoKit: 

```
  Remoco.environment.apiKey = "apiKey_here"
  Remoco.environment.appIdentifier = "appIdentifier_here"

  let parameters = RemocoParameters().expand(2).build()
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

or 

```
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

If you have questions, need help or want to provide feedback, please use the Support Portal or contact your Account Manager. 

