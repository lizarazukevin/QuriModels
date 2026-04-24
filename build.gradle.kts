plugins {
    kotlin("jvm") version "2.2.20"
    id("software.amazon.smithy.gradle.smithy-base") version "1.3.0"
}

group = "com.quri"
version = "0.1.0"
description = "Data models for Quri service."

// Required to parse smithy files for Intellij plugin
java.sourceSets["main"].java {
    srcDirs("model", "src/main/smithy")
}

kotlin {
    jvmToolchain(21)
}

repositories {
    mavenCentral()
}

dependencies {
    // Codegen
    implementation(libs.smithy.java.codegen.core)

    // Client
    implementation(libs.smithy.java.client.core)
    smithyBuild(libs.smithy.java.client.codegen)

    implementation(libs.smithy.smithy.linters)
    implementation(libs.smithy.smithy.model)
    implementation(libs.smithy.smithy.openapi)
}

tasks.named("compileKotlin") {
    dependsOn("smithyBuild")
}

tasks.named("compileJava") {
    dependsOn("smithyBuild")
}

afterEvaluate {
    val clientPath = smithy.getPluginProjectionPath(smithy.sourceProjection.get(), "java-client-codegen")
    sourceSets.main.get().java.srcDir(clientPath)
}