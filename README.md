# Husk Scheme Quick-Start

[![huski logo][huski-logo]][huski-logo-large]


*A Husk Quick-start with a Focus on the FFI to Haskell*


#### Contents

* [Introduction](#introduction-)
* [Dependencies](#dependencies-)
* [Setup & Build](#setup--build-)
* [Building](#building-)
* [REPL](#repl-)
* [First Program](#first-program-)
* [License](#license-)


## Introduction [&#x219F;](#contents)

This quick-start aims to get you up and running with Haskell, Husk Scheme, and the FFI for Husk. It will take you from 0 Kelvin to room temperature, putting within your grasp the heat of the sun's surface.

### Haskell [&#x219F;](#contents)

The Haskell programming language is a statically typed purely functional programming language with type inference, concurrency primitives, and lazy evaluation.

Key Haskell resources:

* [Haskell docs](https://www.haskell.org/documentation)
* [Learn You a Haskell](http://learnyouahaskell.com/) (Holy shit!)
* [Write Yourself a Scheme in 48 Hours/First Steps](https://en.wikibooks.org/wiki/Write_Yourself_a_Scheme_in_48_Hours/First_Steps)

### Husk Scheme [&#x219F;](#contents)

From the [Husk Scheme Github project](https://github.com/justinethier/husk-scheme):

> Husk is a dialect of Scheme written in Haskell that implements a superset of the R5RS standard and a large portion of the R7RS-small language. Advanced features are provided including continuations, hygienic macros, libraries, and a full numeric tower.

One of the key features of Husk is its [FFI to Haskell](http://justinethier.github.io/husk-scheme/manual/ffi.html), allowing developers to take advantage of the Haskell ecosystem's libraries within their Husk projects.

Key Husk resources:

* [User manual](http://justinethier.github.io/husk-scheme/manual/index.html)
* [Haskell interface](http://justinethier.github.io/husk-scheme/manual/haskell-interface.html)
* [Scheme API docs](http://justinethier.github.io/husk-scheme/manual/node106.html)

## Dependencies [&#x219F;](#contents)

* An operating system that can support Haskell.
* ``git``
* [Stack](http://docs.haskellstack.org/en/stable/install_and_upgrade/#os-x)

## Setup & Build [&#x219F;](#contents)

Once you have ``git`` and ``stack`` installed, you are ready to begin.

1. Clone the quick-start repo and ``cd`` into its Haskell project directory:

    ```
    $ git clone https://github.com/haskell-lisp/husk-quick-start.git
    $ cd husk-quick-start/husk-quickstart
    ```

1. Get the project's supported version of Haskell:

    ```
    $ stack setup
    ```

    At which point you should see something like the following:

    ```
    Preparing to install GHC to an isolated location.
    This will not interfere with any system-level installation.
    ghc-7.10.3:  113.16 MiB / 140.77 MiB ( 80.39%) downloaded...
    ```

1. At this point you are ready to build the dependencies (using ``stack``):

    ```
    $ stack build
    ```

There is also a convenience ``make`` target provide that does both of these
with one command: ``make build``. Note that the ``make`` target must be
executed from the top-level (clone) directory.


## REPL [&#x219F;](#contents)

To start the Husk REPL using the local install of Haskell and Husk, run the following ``stack`` command:

```
$ stack exec huski
```

or, from the top-level (clone) directory:

```
$ make repl
```

```
  _               _        __                 _
 | |             | |       \\\               | |
 | |__  _   _ ___| | __     \\\      ___  ___| |__   ___ _ __ ___   ___
 | '_ \| | | / __| |/ /    //\\\    / __|/ __| '_ \ / _ \ '_ ` _ \ / _ \
 | | | | |_| \__ \   <    /// \\\   \__ \ (__| | | |  __/ | | | | |  __/
 |_| |_|\__,_|___/_|\_\  ///   \\\  |___/\___|_| |_|\___|_| |_| |_|\___|

 http://justinethier.github.io/husk-scheme
 (c) 2010-2016 Justin Ethier
 Version 3.19.2

huski>
```


## First Program [&#x219F;](#contents)

TBD


## License [&#x219F;](#contents)

Copyright © 2016 Duncan McGreggor

Distributed under the Open Publication License


<!-- Named page links below: /-->

[huski-logo]: resources/images/huski-logo-250x.png
[huski-logo-large]: resources/images/huski-logo-1000x.png
