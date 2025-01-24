with Ada.Text_IO; use Ada.Text_IO;
with Lexer;      -- Assuming we have a lexer package
with Parser;     -- Assuming we have a parser package
-- with Semantics;
-- with Intermediate;
-- with Optimization;
-- with Codegen;

package body Main is
    procedure Compile (Source_File : String) is
        Source : File_Type;
        Token : Lexer.Token_Type;
        AST : Parser.AST_Type;
    begin
        -- Open the source file
        Open (Source, In_File, Source_File);
        if not Is_Open (Source) then
            Put_Line ("Failed to open source file: " & Source_File);
            return;
        end if;

        -- Lexical Analysis
        while not End_Of_File (Source) loop
            Token := Lexer.Get_Token (Source);
            -- Process token (for now, we just output it)
            Put_Line ("Token: " & Lexer.Token_To_String (Token));
        end loop;

        -- Syntax Analysis (Parsing)
        AST := Parser.Parse (Source);
        if AST /= null then
            Put_Line ("Parsing successful.");
        else
            Put_Line ("Parsing failed.");
        end if;

        -- Further phases would be called here
        -- Semantic Analysis
        -- Intermediate Code Generation
        -- Optimization
        -- Code Generation

        -- Close the source file
        Close (Source);
    end Compile;
end Main;
