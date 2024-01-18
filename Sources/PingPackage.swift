import ArgumentParser
import RadoSmallServer
import Foundation

@main
struct PingPackage: ParsableCommand {
    
    @Option(name: .shortAndLong, help: "Port on which the `RadoSmallServer` will run.Default: 127.0.0.1")
    var host = "127.0.0.1"
    
    @Option(name: .shortAndLong, help: "Host on which the `RadoSmallServer` will run.Default: 17443")
    var port: Int = 17443
    
    mutating func run() throws {
        try RadoSmallServer(path: "/ping", method: .GET, type: .text, port: port) {
            Thread.sleep(forTimeInterval: Double.random(in: 0.01...10.0))
            return "OK".data(using: .utf8)!
        }.start()
    }
}
