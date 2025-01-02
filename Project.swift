import ProjectDescription

let project = Project(
    name: "Tomato",
    targets: [
        .target(
            name: "Tomato",
            destinations: .iOS,
            product: .app,
            bundleId: "io.tuist.Tomato",
            infoPlist: .extendingDefault(
                with: [
                    "UILaunchScreen": [
                        "UIColorName": "",
                        "UIImageName": "",
                    ],
                ]
            ),
            sources: ["Tomato/Sources/**"],
            resources: ["Tomato/Resources/**"],
            dependencies: []
        ),
        .target(
            name: "TomatoTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "io.tuist.TomatoTests",
            infoPlist: .default,
            sources: ["Tomato/Tests/**"],
            resources: [],
            dependencies: [.target(name: "Tomato")]
        ),
    ]
)
