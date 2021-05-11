One Definition Rule Demonstrated with `std::string`
===================================================
This is a minimum example of how global variables defined in header files
result in separate instances in each translation unit that includes the header.

C++17's `inline` variables makes this less of a problem, and for built-in types
I'm not sure it ever mattered, but for `std::string` in, say, C++11, there is
a real, if irrelevant, distinction.

Why
===
This is supporting material for a proposed change to some code.

What
====
This is a demo of the difference between putting `const std::string`
definitions in a header file, versus merely _declaring_ them in a header
file and putting their definitions in one dedicated translation unit (i.e.
`.cpp` file).

How
===
To see `const std::string fish` with two separate addresses,
```console
$ make violating
$ ./violating
unit_1 &fish is 0x55e573aae160
unit_2 &fish is 0x55e573aae1a0
```

To see `const std::string fish` with a unique address,
```console
$ make following
$ ./following
unit_1 &fish is 0x55879221b160
unit_2 &fish is 0x55879221b160
```
