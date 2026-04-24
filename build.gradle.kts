plugins {
    alias(libs.plugins.kotlin.jvm)
    alias(libs.plugins.smithy.base)
}

group = "com.quri"
version = "0.1.0"
description = "Data models and generated client types for the Quri service."

// ── Kotlin Compiler ───────────────────────────────────────────────────────────
kotlin {
    jvmToolchain(21)
}

repositories {
    mavenCentral()
}

// ── Source Sets ───────────────────────────────────────────────────────────────
// Smithy models live in src/main/smithy — the canonical location enforced by
// the smithy-gradle plugin.
// Generated client sources are added after smithyBuild runs (see afterEvaluate).
sourceSets {
    main {
        java {
            srcDirs("src/main/smithy")
        }
    }
}

// ── Dependencies ──────────────────────────────────────────────────────────────
dependencies {

    // ── Smithy Codegen ────────────────────────────────────────────────────────
    // codegen-core: shared codegen utilities required by all smithy-java plugins
    // client-codegen: generates the Java client types published by this package
    implementation(libs.smithy.java.codegen.core)
    implementation(libs.smithy.java.client.core)
    smithyBuild(libs.smithy.java.client.codegen)

    // ── Smithy Core ───────────────────────────────────────────────────────────
    // model: shape definitions and validation used at build time
    // linters: enforces Smithy best practices (EmitEachConflictingTrait etc.)
    // openapi: generates the OpenAPI spec for API Gateway integration
    implementation(libs.smithy.model)
    implementation(libs.smithy.linters)
    implementation(libs.smithy.openapi)
}

// ── Build Order ───────────────────────────────────────────────────────────────
// smithyBuild must run before Kotlin/Java compilation so generated sources
// are available on the classpath when the compiler runs.
tasks.named("compileKotlin") { dependsOn("smithyBuild") }
tasks.named("compileJava")   { dependsOn("smithyBuild") }

// ── Generated Sources ─────────────────────────────────────────────────────────
// Adds the java-client-codegen output directory to the main source set after
// the smithy plugin has resolved its projection paths. Must run in afterEvaluate
// because smithy projection paths are not available during configuration phase.
afterEvaluate {
    val clientPath = smithy.getPluginProjectionPath(
        smithy.sourceProjection.get(),
        "java-client-codegen",
    )
    sourceSets.main.get().java.srcDir(clientPath)
}