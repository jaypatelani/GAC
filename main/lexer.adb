package body Lexer is
    function Get_Token (Source : in File_Type) return Token_Type is
    begin
        -- Dummy implementation for now
        return End_Of_File;
    end Get_Token;

    function Token_To_String (Token : Token_Type) return String is
    begin
        case Token is
            when Identifier  => return "Identifier";
            when Number      => return "Number";
            when Keyword     => return "Keyword";
            when Symbol      => return "Symbol";
            when End_Of_File => return "End of File";
        end case;
    end Token_To_String;
end Lexer;
