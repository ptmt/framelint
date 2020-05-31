
import Foundation
import ArgumentParser
import FrameLint

struct Run: ParsableCommand {
    static let configuration = CommandConfiguration(
        abstract: "FrameLint - analyze frame sequence")

    @Argument(help: "The filename of pre-recorded video to lint")
    private var filename: String

    @Flag(name: .long, help: "Show extra logging for debugging purposes")
    private var verbose: Bool

    func run() throws {
        if verbose {
            print("Reading file: \"\(filename)\"")
        }
    }
}


Run.main()
FileReader()
