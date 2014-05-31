# Time Adder

A simple program that takes input from [TimeTrap](https://github.com/samg/timetrap) and sums up the time spent on activities with the same note.


## Installation

* clone the repo

  ```
  git clone git@github.com:p886/time_adder.git
  ```

* add `/bin/time_adder` to your `$PATH`. One way would be to symlink the `/usr/bin/timetrap` to `/bin/timetrap`. Assuming this folder is located at `~/time_adder` the following command will establish the link:

  ```
  ln -s /usr/bin/time_adder ~/time_adder/bin/time_adder
  ```

## Usage

Provided you have added the executable to your `$PATH` as described in [Installation][installation]:

```
timetrap today --format json > time_adder
```

[installation]: #installation
