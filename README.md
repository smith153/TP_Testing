# Time::Piece

[![CI Tests](https://github.com/smith153/TP_Test/actions/workflows/ci.yml/badge.svg)](https://github.com/smith153/TP_Test/actions/workflows/ci.yml)

A Perl module that replaces the standard `localtime` and `gmtime` functions with implementations that return objects.

## Documentation

The following documentation is extracted from the module's POD:

### NAME

Time::Piece - Object Oriented time objects

### SYNOPSIS

```perl
use Time::Piece;

my $t = localtime;
print "Time is $t\n";
print "Year is ", $t->year, "\n";
```

### DESCRIPTION

This module replaces the standard `localtime` and `gmtime` functions with object-oriented implementations. The object contains methods that access the different parts of a date/time.

The `localtime` and `gmtime` functions are both overridden to return `Time::Piece` objects by default.

## Development Instructions

The module uses GitHub Actions for continuous integration testing across multiple platforms.

### Using Feature Branches

For development and testing:

1. **Create a feature branch**:
   ```bash
   git checkout -b feature/windows-fix
   ```
   
   You can create any descriptive name after the `feature/` prefix:
   ```bash
   git checkout -b feature/memory-optimization
   git checkout -b feature/strawberry-perl-compatibility
   ```

2. **Make your changes and commit them**:
   ```bash
   # Make changes to your code
   git add .
   git commit -m "Implement Windows-specific fixes"
   ```

3. **Push to GitHub to trigger tests**:
   ```bash
   git push origin feature/windows-fix
   ```

4. **Delete when done**:
   ```bash
   # Delete locally
   git branch -D feature/windows-fix
   
   # Delete from GitHub
   git push origin --delete feature/windows-fix
   ```

## Installation

From CPAN:

```
cpan Time::Piece
```

From source:

```
perl Makefile.PL
make
make test
make install
```

## License

This module is available under the same license as Perl itself.
