# GAC
Grace Ada Compiler

• src/
    • lexer/  # Lexical analysis
        • lexer.ads  # Lexer spec
        • lexer.adb  # Lexer body
    • parser/  # Syntax analysis
        • parser.ads  # Parser spec
        • parser.adb  # Parser body
    • semantics/  # Semantic analysis
        • semantics.ads  # Semantics spec
        • semantics.adb  # Semantics body
    • intermediate/  # Intermediate code generation
        • intermediate.ads  # Intermediate code spec
        • intermediate.adb  # Intermediate code body
    • optimization/  # Optimization
        • optimization.ads  # Optimization spec
        • optimization.adb  # Optimization body
    • codegen/  # Code generation
        • codegen.ads  # Code generation spec
        • codegen.adb  # Code generation body
    • main/  # Compiler driver
        • main.ads  # Compiler spec
        • main.adb  # Compiler body

• utils/  # Utility packages
    • utils.ads  # Utility spec
    • utils.adb  # Utility body

• tests/  # Test cases
    • test_lexer.ads  # Lexer test spec
    • test_lexer.adb  # Lexer test body
    • test_parser.ads  # Parser test spec
    • test_parser.adb  # Parser test body
    • ...

• Makefile  # Build script


This structure separates the compiler into logical components, each with its own subdirectory:

- `src/`: Contains the compiler's source code.
- `lexer/`, `parser/`, `semantics/`, etc.: Each phase of the compiler has its own subdirectory.
- `utils/`: Utility packages used throughout the compiler.
- `tests/`: Test cases for each phase of the compiler.
- `Makefile`: Build script to compile and build the compiler.
- ReadMe: Overview and usage instructions for the compiler.
