# [elm-test] compilation error demo

Also demos [elm-verify-examples]. Not sure if that's strictly needed. But it is
a real-world way of writing test files with compilation errors in them.

Instructions:

1. Clone this repo.
2. `npm install`
3. `npm test`

This is the output I get:

```
$ npm test
> @ test /home/lydell/bugs/elm-test
> elm-verify-examples && elm-test

Running in generate mode..
Compilation failed while attempting to build /home/lydell/bugs/elm-test/tests/Doc/ExampleSpec.elm
```

After editing `Example.elm` and uncommenting the `import Char` line:

```
$ npm test
> @ test /home/lydell/bugs/elm-test
> elm-verify-examples && elm-test

Running in generate mode..

elm-test
--------

Running 1 test. To reproduce these results, run: elm-test --fuzz 100 --seed 1409044243


TEST RUN PASSED

Duration: 7 ms
Passed:   1
Failed:   0
```

Here are some versions:

- Node.js: 8.1.0
- npm: 5.0.3
- OS: Ubuntu 16.04

[elm-test]: https://github.com/elm-community/elm-test
[elm-verify-examples]: https://github.com/stoeffel/elm-verify-examples
