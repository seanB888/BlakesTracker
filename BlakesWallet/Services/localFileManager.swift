//
//  localFileManager.swift
//  BlakesWallet
//
//  Created by SEAN BLAKE on 5/16/22.
//

import Foundation
import SwiftUI

class LocalFileManager {
    // the singleton instance...
    static let instance =  LocalFileManager()
    private init() { }

    func saveImage(image: UIImage, imageName: String, folderName: String) {
        // create folder...
        createFolderIfNeeded(folderName: folderName)
        // get path for image...
        guard
            let data = image.pngData(),
            let url = getURLForImage(imageName: imageName, folderName: folderName)
        else { return }
        // save image to path...
        do {
            try data.write(to: url)
        } catch let error {
            print("Error saving image.\nImage name: \(imageName)\n\(error)")
        }
    }

    // function used to retreive image...
    func getImage(imageName: String, folderName: String) -> UIImage? {
        guard
            let url = getURLForImage(imageName: imageName, folderName: folderName),
            FileManager.default.fileExists(atPath: url.path) else {
                return nil
            }
        return UIImage(contentsOfFile: url.path)
    }

    // function to create a folder if there is none...
    private func createFolderIfNeeded(folderName: String) {
        guard let url = getURLForFolder(folderName: folderName) else { return }
        // check if the path already exist...
        if !FileManager.default.fileExists(atPath: url.path) {
            // this will try to create the folder to check...
            do {
                // if the folder doesn't exist, it will be created with this function...
                try FileManager.default.createDirectory(at: url, withIntermediateDirectories: true, attributes: nil)
            } catch let error {
                print("ERROR: Error creating directory\nFolder name: \(folderName)\n\(error)")
            }
        }
    }

    // gets the url for the folder...
    private func getURLForFolder(folderName: String) -> URL? {
        guard let url = FileManager.default.urls(for: .cachesDirectory, in: .userDomainMask).first else {
            return nil
        }
        return url.appendingPathComponent(folderName)
    }

    // function to save the image inside the folder...
    private func getURLForImage(imageName: String, folderName: String) -> URL? {
        guard let folderURL = getURLForFolder(folderName: folderName) else {
            return nil
        }
        return folderURL.appendingPathComponent(imageName + ".png")
    }
}
