//
//  WordProvider.swift
//  Wordle
//
//  Created by Anzhelika Sokolova on 10.03.2022.
//

import Foundation

struct WordProvider {
    
    
    static func loadWords () -> [String] {
        if let startWordsURL = Bundle.main.url(forResource: "WordList", withExtension: "txt") {
            // 2. Load start.txt into a string
            if let startWords = try? String(contentsOf: startWordsURL) {
                // 3. Split the string up into an array of strings, splitting on line breaks
                let allWords = startWords.components(separatedBy: "\n")
                // If we are here everything has worked, so we can exit
                return allWords
            }
        }
        // If were are *here* then there was a problem – trigger a crash and report the error
        fatalError("Could not load WordList.txt from bundle.")
    }
    
    static let allowedWords: [String] = loadWords()//["Table", "Chair", "Hello", "Happy"]
    
    static func generateWord() -> String {
        
        Self.allowedWords.randomElement()!
    }
    
        
    /*
     
     func startGame() {
         playersScore = 0
         usedWords = []
         // 1. Find the URL for start.txt in our app bundle
         if let startWordsURL = Bundle.main.url(forResource: "start", withExtension: "txt") {
             // 2. Load start.txt into a string
             if let startWords = try? String(contentsOf: startWordsURL) {
                 // 3. Split the string up into an array of strings, splitting on line breaks
                 let allWords = startWords.components(separatedBy: "\n")
                 // 4. Pick one random word, or use "silkworm" as a sensible default
                 rootWord = allWords.randomElement() ?? "silkworm"
                 // If we are here everything has worked, so we can exit
                 return
             }
         }

         // If were are *here* then there was a problem – trigger a crash and report the error
         fatalError("Could not load start.txt from bundle.")
     }
     
     
     */
    
}
