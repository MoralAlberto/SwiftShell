# SwiftShell

Use the uncredibly power of command-line in your scripts with **Swift shell**

## Examples

```swift
let currentBranch = launch(command: "git", arguments: "describe", "--contains", "--all", "HEAD")
print("current branch:\(currentBranch)")

let newFolder = launch(command: "mkdir", arguments: "MyFolder")
print("Create branch \(newFolder)")

let interface = launch(command: "ifconfig", arguments: "")
print("Interface \(interface)")
```

## Installation

- Add `.Package(url: "https://github.com/MoralAlberto/SwiftShell.git", majorVersion: 1)` to your `Package.swift` file.
- `$ swift package update`.
