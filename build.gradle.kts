/// https://smithy.io/2.0/languages/java/client/generating-clients.html

plugins {
    `java-library`
    id("software.amazon.smithy.gradle.smithy-base") version "1.3.0"
}

java {
    toolchain {
        languageVersion = JavaLanguageVersion.of(21)
    }
}

group = "com.quri"
version = "0.1.0"

repositories {
    mavenCentral()
}

dependencies {
    // Adds codegen plugins and functionality to smithy build classpath
    smithyBuild("software.amazon.smithy.java:client-codegen:0.0.3")
    smithyBuild("software.amazon.smithy.java:client-core:0.0.3")
    implementation("software.amazon.smithy:smithy-model:1.49.0")
    implementation("software.amazon.smithy:smithy-openapi:1.49.0")
    implementation("software.amazon.smithy.typescript:smithy-aws-typescript-codegen:0.41.1")
    implementation("software.amazon.smithy.java:plugins:0.0.3")
}

java.sourceSets["main"].java {
    srcDirs("model", "src/main/smithy")
}

afterEvaluate {
    val clientPath = smithy.getPluginProjectionPath(smithy.sourceProjection.get(), "java-client-codegen")
    sourceSets {
        main {
            java {
                srcDir(clientPath)
            }
        }
    }
}

tasks.named("compileJava") {
    dependsOn("smithyBuild")
}