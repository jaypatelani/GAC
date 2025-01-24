package Lexer is
    type Token_Type is (Identifier, Number, Keyword, Symbol, End_Of_File);
    function Get_Token (Source : in File_Type) return Token_Type;
    function Token_To_String (Token : Token_Type) return String;
end Lexer;
