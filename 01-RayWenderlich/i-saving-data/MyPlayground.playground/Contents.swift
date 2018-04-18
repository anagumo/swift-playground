//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, Saving Data"

// Document directory path
FileManager.documentDirectoryURL

let misteryDataURL = URL(
    fileURLWithPath: "mistery",
    relativeTo: FileManager.documentDirectoryURL
)

let stringURL =
    FileManager.documentDirectoryURL
        .appendingPathComponent("string")
        .appendingPathExtension("txt")

// Challenge: URLs
let challengeString: String = "university"

let challengeStringURL: URL = URL(
    fileURLWithPath: challengeString,
    relativeTo: FileManager.documentDirectoryURL).appendingPathExtension("txt")

challengeStringURL.lastPathComponent

// Challenge: String Data
let greeting = "hello"
let greetingData = greeting.data(using: .utf8)!
try greetingData.write(to: challengeStringURL, options: .atomic)
// Reading back
let savedGreeting = try String(contentsOf: challengeStringURL)

// Challenge: Loading Image Data
try FileManager.copyPNGSubdirectoriesToDocumentDirectory(subdirectoryNames: "Scenes", "Stickers")
FileManager.documentDirectoryURL

/*extension FileManager {
    static func getPNGFromDocumentDirectory(subdirectoryName: String, imageName: String) -> UIImage? {
        return UIImage(contentsOfFile: FileManager.documentDirectoryURL
            .appendingPathComponent(subdirectoryName)
            .appendingPathComponent(imageName)
            .appendingPathExtension("png").path)
    }
}*/

FileManager.getPNGFromDocumentDirectory(subdirectoryName: "Stickers", imageName: "frog")
