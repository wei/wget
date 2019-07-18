# Github Action for wget

Wraps the wget CLI to be used in Github Actions. See also [Github Action for curl](https://github.com/marketplace/actions/github-action-for-curl).


## Features
 * make http requests
 * http errors are treated as errors


## Usage

### Github Actions
```
action "wget" {
  uses = "wei/wget@master"
  args = "-O sample.html https://httpbin.org/html"
}
```

```
action "wget" {
  uses = "wei/wget@master"
  args = "-qO- https://httpbin.org/get"
}
```

### Docker
```
docker run --rm $(docker build -q .) \
  -qO- https://httpbin.org/get
```


## Author
[Wei He](https://github.com/wei) _github@weispot.com_


## License
[MIT](https://wei.mit-license.org)
