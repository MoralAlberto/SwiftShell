/**
 *  SwiftShell
 *  Copyright (c) 2017 Alberto Moral
 *  Licensed under the MIT license, see LICENSE file
 */

import Foundation

extension Process {
    public func shell(command: String) -> String {
        launchPath = "/bin/bash"
        arguments = ["-c", command]
        
        let outputPipe = Pipe()
        standardOutput = outputPipe
        launch()
        
        let data = outputPipe.fileHandleForReading.readDataToEndOfFile()
        guard let outputData = String(data: data, encoding: String.Encoding.utf8) else { return "" }
        
        return outputData.characters.reduce("") { (result, value) in
            return result + String(value)
        }
    }
}


public func launch(command: String, arguments: [String]) -> String {
    let process = Process()
    let command = "\(command) \(arguments.joined(separator: " "))"
    return process.shell(command: command)
}
