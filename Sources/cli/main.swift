
import Foundation
import TSCUtility
import TSCBasic
import ArgumentParser


struct Analyze: ParsableCommand {
    static let configuration = CommandConfiguration(
        abstract: "A Swift command-line tool to manage blog post banners")

    @Argument(help: "The filename of video sequence")
    private var filename: String

    @Option(name: .shortAndLong, default: nil, help: "The week of the blog post as used in the file name")
    private var week: Int?

    @Flag(name: .long, help: "Show extra logging for debugging purposes")
    private var verbose: Bool

    func run() throws {
        if verbose {
            let weekDescription = week.map { "and week \($0)" }
            print("Creating a banner for title \"\(filename)\" \(weekDescription ?? "")")
        }
    }
}


Analyze.main()
