// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
	name: "JVSwift",
	platforms: [.macOS(.v13)],
	products: [
		// Products define the executables and libraries a package produces, making them visible to other packages.
		.library(
			name: "JVSwift",
			targets: ["JVSwift"]),
	],
	// Dependencies declare other packages that this package depends on.
	dependencies: [
		.package(url: "https://github.com/TheMisfit68/JVNetworking.git", branch: "master"),
		.package(url: "https://github.com/TheMisfit68/JVSecurity.git", branch: "master"),
		.package(url: "https://github.com/TheMisfit68/JVScripting.git", branch: "master"),
		.package(url: "https://github.com/TheMisfit68/JVWeather.git", branch: "master"),
		.package(url: "https://github.com/TheMisfit68/JVLocation.git", branch: "master"),
		.package(url: "https://github.com/TheMisfit68/JVUI.git", branch: "master"),
		.package(url: "https://github.com/TheMisfit68/JVData.git", branch: "master"),
		.package(url: "https://github.com/TheMisfit68/JVSwiftCore.git", branch: "master"),
	],
	targets: [
		// Targets are the basic building blocks of a package, defining a module or a test suite.
		// Targets can depend on other targets in this package and products from dependencies.
		.target(
			name: "JVSwift",
			dependencies: ["JVNetworking",
						   "JVSecurity",
						   "JVScripting",
						   "JVWeather",
						   "JVLocation",
						   "JVUI",
						   "JVData",
						   "JVSwiftCore",
						  ]
		),
		.testTarget(
			name: "JVSwiftTests",
			dependencies: ["JVSwift"]),
	]
)
