# Documentation (Explanation)

In this project, I separate between feature and core. For feature, it contains features inside the application. And for core, it contains reusable functions to help create features.

## Adding a feature

To add a new feature, we create it with the module template. To create it with the command line, use the following:

```shell
cd features
flutter create --template module <nama_module>
```

## Add dependencies

For dependencies, I put it into one module, namely core, so if you need it, just enter the core module

```shell
cd libraries/core/
flutter pub add <nama dependensi>
flutter pub get
```

So with this, there is no need for pub get anymore on features. Just import the package you want to use
