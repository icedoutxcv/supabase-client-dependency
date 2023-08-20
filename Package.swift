// swift-tools-version: 5.9

import PackageDescription

let package = Package(
  name: "supabase-client-dependency",
  platforms: [
    .iOS(.v16),
    .macCatalyst(.v16),
    .macOS(.v13),
    .tvOS(.v16),
    .watchOS(.v9),
  ],
  products: [
    .library(name: "SupabaseClient", targets: ["SupabaseClient"])
  ],
  dependencies: [
    .package(
      url: "https://github.com/pointfreeco/swift-dependencies.git",
      from: "1.0.0"
    ),
    .package(
      url: "https://github.com/supabase-community/supabase-swift.git",
      from: "0.3.0"
    ),
    .package(
      url: "https://github.com/m-housh/swift-identified-storage.git",
      from: "0.1.0"
    ),
  ],
  targets: [
    .target(
      name: "SupabaseClient",
      dependencies: [
        .product(name: "Dependencies", package: "swift-dependencies"),
        .product(name: "IdentifiedStorage", package: "swift-identified-storage"),
        .product(name: "Supabase", package: "supabase-swift"),
      ]
    ),
    .testTarget(
      name: "SupabaseClientTests",
      dependencies: ["SupabaseClient"]
    ),
  ]
)
