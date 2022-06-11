plugins {
    id("com.android.application") version "7.2.1" apply false
    id("com.android.library") version "7.2.1" apply false
    id("org.jetbrains.kotlin.android") version "1.5.30" apply false
}

tasks.register("clean", Delete::class) {
    delete(rootProject.buildDir)
    delete("apks")
    delete("bundletool-all-1.10.0.jar")
    delete("resources-only.apk")
    delete(".gradle")
    delete(".cxx")
    delete("app/.cxx")
}
