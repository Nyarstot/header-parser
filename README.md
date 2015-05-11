# header-parser
Extracts simple tags from a C++ header. Calls back onto an interface when a certain element is encountered.

[![Build Status](https://travis-ci.org/baszalmstra/header-parser.svg)](https://travis-ci.org/baszalmstra/header-parser)

# Use cases
I have found a lot of use cases for something like this. Some of these include: 

* Serialization (binary and text based)
* Script bindings
* Remote procedure calls
* Generating models (for other languages)
* Reflection

I plan to create several tools using this library to do the above.

# Roadmap
1. Create a simple tokenizer
2. Use the tokenizer to find attributes
3. Extract the source contents starting from the attribute
4. Create an interface to call based on the extracted data
