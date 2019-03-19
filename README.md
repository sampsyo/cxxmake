Little C++ Makefile
===================

Here is a small, acceptable example Makefile for building a C++ program.
To see that this is doing what it's supposed to do, try these:

1. `make` should build the executable, `app`.
2. `touch foo.h ; make` should rebuild everything (i.e., compile both `foo.o` and `bar.o` and link them).
3. `touch bar.h ; make` should compile *just* `bar.o` and re-link the executable.
4. `make clean` should delete everything we generated.

For more details on generating dependencies automatically using `-MM`, check out [Skand's blog post][skand-make].

[skand-make]: https://skandhurkat.com/post/makefile-dependencies/
