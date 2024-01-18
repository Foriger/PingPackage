import ArgumentParser
import RadoSmallServer
import Foundation

@main
struct PingPackage: ParsableCommand {
    mutating func run() throws {
        try RadoSmallServer(path: "/ping", method: .GET, type: .text) {
            Thread.sleep(forTimeInterval: Double.random(in: 0.01...10.0))
            return "OK".data(using: .utf8)!
        }.start()
    }
}
