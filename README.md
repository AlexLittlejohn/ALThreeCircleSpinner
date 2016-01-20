# ALThreeCircleSpinner
A pulsing spinner view written in swift

![oc03hg](https://cloud.githubusercontent.com/assets/6511079/12443890/20c350ec-bf10-11e5-8baa-1a7c56a402d4.gif)

### Usage

```swift

// Create your spinner

let spinner = ALThreeCircleSpinner(frame: CGRectMake(0,0,44,44))

addSubview(spinner)

// And thats it, the spinner will start automagically

```

To stop the spinner after its started

```swift
spinner.stopAnimating()
```

To start it again

```swift
spinner.startAnimating()
```

You can control the color of the spinner using the `color` property and you can set it to stay visible when animation is stopped using the `hidesWhenStopped` property

## Attribution
This spinner is based on the work in the [SpinKit](https://github.com/raymondjavaxx/SpinKit-ObjC) project 


## License
ALThreeCircleSpinner is available under the MIT license. See the LICENSE file for more info.
