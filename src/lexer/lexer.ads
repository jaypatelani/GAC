with Ada.Characters.Latin_1;

package Lexer is

  type Token_Type is (Keyword, Identifier, Literal, Operator, Other);

  type Token is record
    Kind  : Token_Type;
    Image : Ada.Characters.Latin_1.String;
  end record;

  procedure Get_Token (Stream : in Ada.Characters.Latin_1.Stream_Access;
                       Next_Token : out Token)
  pre  Stream.IsOpen;
  post Next_Token.Kind  not in (Other);

private
  -- Private helper procedures for the lexer can be declared here
end L
exer;
