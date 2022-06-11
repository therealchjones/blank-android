# Create an APK with no classes

This is really only useful for testing (e.g., https://github.com/skylot/jadx/pull/1530). It's a very basic Gradle project plus a shell script that builds an APK file which doesn't contain any Java classes. The file is one in a set of split APKs built from an Android Application Bundle (AAB) file in the same method used by the Google Play store, except that it doesn't have any meaningful or useful app attached to it.

## Usage

1. Install the Android SDK at `~/Library/Android/sdk`
2. Have a Java runtime in your PATH
3. Use a POSIX-compatible shell to run `build-sample.sh`
4. Do whatever it is you want with the resulting `resources-only.apk`

I don't anticipate modifying this code further at this time, but you never know what someone might find useful.

## License

All code was created solely by me, chjones@aleph0.com, with the exception of the `gradle init` output. As the project includes unmodified `gradle/wrapper/*`, `gradlew`, and `gradlew.bat` files, it may be considered a "derivative work", and thus subject to the Apache License, version 2.0, available at https://www.apache.org/licenses/LICENSE-2.0. However, I do not explicitly apply this license to this work myself; where possible and applicable, my work is released into the public domain or under the [CC0 license](http://creativecommons.org/publicdomain/zero/1.0/), with no rights reserved.
