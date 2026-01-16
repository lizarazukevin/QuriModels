This package contains the API models used by the Quri Service.

# Getting Started

If you have the SmithyCLI you can validate models and build the package:
```shell
smithy validate
smithy build
```

# Build Process

This package uses Gradle as its build automation tool, to validate the build and dependencies run the following in root directory:
```shell
./gradlew build
```

Address errors locally before pushing changes.

# Troubleshooting

Users on IntelliJ will note that there is a plugin called [`Smithy`](https://github.com/iancaffey/smithy-intellij-plugin).
This plugin helps the IDE identify and parse Smithy files, but it lacks the dependencies to recognize traits and primitives.
Make sure that you have a compatible JDK and Gradle configurations to attach the required dependencies to work with this individual package.