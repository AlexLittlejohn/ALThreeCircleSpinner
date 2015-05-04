# ALThreeCircleSpinner
A pulsing spinner view written in swift

![Image](https://cloud.githubusercontent.com/assets/932822/7451503/ce3265ec-f251-11e4-8b1a-97f30afd9586.jpg)

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
