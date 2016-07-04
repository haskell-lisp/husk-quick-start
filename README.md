# Husk Scheme Quick-Start

[![huski logo][huski-logo]][huski-logo-large]


*A Husk Quick-start with a Focus on the FFI to Haskell*


#### Contents

* [Introduction](#introduction-)
* [Dependencies](#dependencies-)
* [Setup & Build](#setup--build-)
  * [Dead Simple](#dead-simple-)
  * [Under the Covers](#under-the-covers-)
* [Using Husk](#using-husk-)
  * [REPL](#repl-)
  * [Basics](#basics-)
  * [Calling Haskell](#calling-haskell-)
  * [Using Husk in a Project](#using-husk-in-a-project-)
  * [Calling Husk from Haskell](#calling-husk-from-haskell-)
* [License](#license-)


## Introduction [&#x219F;](#contents)

This quick-start aims to get you up and running with Haskell, Husk Scheme, and
the FFI for Husk. It will take you from 0 Kelvin to room temperature, putting
within your grasp the heat of the sun's surface.

Below is a quick blurb on each of Haskell and Husk.


### Haskell [&#x219F;](#contents)

The Haskell programming language is a statically typed purely functional
programming language with type inference, concurrency primitives, and lazy
evaluation.

Key Haskell resources:

* [Haskell docs](https://www.haskell.org/documentation)
* [Learn You a Haskell](http://learnyouahaskell.com/) (Holy shit!)
* [Write Yourself a Scheme in 48 Hours/First Steps](https://en.wikibooks.org/wiki/Write_Yourself_a_Scheme_in_48_Hours/First_Steps)


### Husk Scheme [&#x219F;](#contents)

From the [Husk Scheme Github project](https://github.com/justinethier/husk-scheme):

> Husk is a dialect of Scheme written in Haskell that implements a superset of
> the R5RS standard and a large portion of the R7RS-small language. Advanced
> features are provided including continuations, hygienic macros, libraries,
> and a full numeric tower.

One of the key features of Husk is its
[FFI to Haskell](http://justinethier.github.io/husk-scheme/manual/ffi.html), allowing
developers to take advantage of the Haskell ecosystem's libraries within their
Husk projects.

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

### Dead-Simple [&#x219F;](#contents)

The quickest way to build is with the following:

1. Clone the quick-start repo and ``cd`` into the clone directory:

    ```
    $ git clone https://github.com/haskell-lisp/husk-quick-start.git
    $ cd husk-quick-start
    ```

1. Then:

    ```
    $ make
    ```

### Under the Covers [&#x219F;](#contents)

That ``make`` target is actually performing the following.

1. Change to the Haskell project directory:

    ```
    $ cd husk-quickstart
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

1. At this point you are ready to build Husk and its dependencies:

    ```
    $ stack build husk-scheme
    ```

1. And finally, any files we've created in our project (as well as project
   dependencies):

    ```
    $ stack build
    ```

Note that, as long as husk-scheme is downloaded from a published source (i.e.,
declared in the ``extra-deps`` section of the project ``stack.yaml``), you
won't need to explicitly call ``stack build husk-scheme``. However, since we're
using a version of Husk that's only available in the Github repo, we need to
make the extra ``stack`` call.


## Using Husk [&#x219F;](#contents)

### REPL [&#x219F;](#contents)

To start the Husk REPL using the local install of Haskell and Husk, run the
following ``make`` target:

```
$ make repl
```

Or use this ``stack`` command (from inside the Haskell project directory):

```
$ stack exec huski
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


### Basics [&#x219F;](#contents)


#### Arithmatic

```scheme
huski> (+ 2 15)
17
huski> (* 49 100)
4900
huski> (- 1892 1472)
420
huski> (/ 5 2)
5/2
huski> (/ 5.0 2)
2.5
```


#### Equality

```scheme
huski> (= 1 1)
#t
huski> (< 1 1)
#f
huski> (<= 1 1)
#t
huski> (<= 2 1)
#f
huski> (<= 1 1)
#t
huski> (<= 1 2)
#t
huski> (<= 3 2)
#f
huski> (>= 3 2)
#t
huski> (not (= 1 1))
#f
```

Note that the same types must be compared:

```scheme
huski> (= 5 #t)
Invalid type: expected number, found #t

Call History:
#0: (= 5 #t)
```


#### Boolean Operations

```scheme
huski> (and #t #t)
#t
huski> (and #t #f)
#f
huski> (or #t #f)
#t
huski> (or #f #f)
#f
huski> (or #f #t)
#t
huski> (not (or #f #t))
#f
```

#### Lists

TBD


#### Ranges

TBD


#### Comprehensions

TBD


#### Tuples

TBD


#### Defining a Function

The [Ackermann function](https://en.wikipedia.org/wiki/Ackermann_function) is a
well-known recursive function discovered by Wilhelm Ackermann (student of the
famous mathematician David Hilbert). Go ahead and paste it into your REPL:

```scheme
(define (ackermann m n)
  (cond
    ((= m 0) (+ n 1))
    ((= n 0) (ackermann (- m 1) 1))
    (else (ackermann
            (- m 1)
            (ackermann m (- n 1))))))
```

You can now call it:

```scheme
huski> (ackermann 1 1)
3
huski> (ackermann 1 2)
4
huski> (ackermann 2 2)
7
huski> (ackermann 2 3)
9
huski> (ackermann 3 3)
61
huski> (ackermann 3 4)
125
```


### Calling Haskell [&#x219F;](#contents)

The following calls load Haskell functions which have been prepared for use in Husk:

```scheme
huski> (load-ffi "Language.Scheme.Plugins.CPUTime" "precision" "cpu-time:precision")
<IO primitive>
huski> (load-ffi "Language.Scheme.Plugins.CPUTime" "get" "cpu-time:get")
<IO primitive>
```

It takes the arguments of module name, function in the module, Husk name by
which the function may be called. We can now use ``cpu-time:precision`` and
``cpu-time:get`` in Husk:

```scheme
(define (display-cpu-info)
  (display "CPU time: ")
  (write (cpu-time:get))
  (display "CPU time precision: ")
  (write (cpu-time:precision))
  (display "Seconds of CPU time spent: ")
  (display (exact->inexact (/ (cpu-time:get) 1000000000000)))
  (newline))
```

Note that Haskell functions called from Husk must first be properly wrapped.
The above two functions were prepared in the following manner:

```haskell
module Language.Scheme.Plugins.CPUTime (get, precision) where

import Language.Scheme.Types
import System.CPUTime
import Control.Monad.Error

get, precision :: [LispVal] -> IOThrowsError LispVal

-- |Wrapper for CPUTime.getCPUTime
get [] = do
  t <- liftIO $ System.CPUTime.getCPUTime
  return $ Number t
get badArgList = throwError $ NumArgs 0 badArgList

-- |Wrapper for CPUTime.cpuTimePrecision
precision [] = return $ Number $ System.CPUTime.cpuTimePrecision
precision badArgList = throwError $ NumArgs 0 badArgList
```


### Using Husk in a Project [&#x219F;](#contents)

TBD


### Calling Husk from Haskell [&#x219F;](#contents)

TBD


## License [&#x219F;](#contents)

Copyright © 2016 Duncan McGreggor

Distributed under the Open Publication License


<!-- Named page links below: /-->

[huski-logo]: resources/images/huski-logo-250x.png
[huski-logo-large]: resources/images/huski-logo-1000x.png
