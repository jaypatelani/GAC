with Ada.Characters.Latin_1;
with Ada.Text_IO; use Ada.Text_IO;

package body Lexer is

  -- Define a map (associative array) to store keywords
  Keywords : constant Ada.Characters.Latin_1.Bounded_String := ("procedure", "is", "begin", "end", "Put_Line");

  procedure Get_Token (Stream : in Ada.Characters.Latin_1.Stream_Access;
                       Next_Token : out Token)
  pre  Stream.IsOpen;
  post Next_Token.Kind  not in (Other);
begin
  loop
    case Get (Stream) is
    when Ada.Characters.Latin_1.EOF =>
      Next_Token.Kind := Other;
      Next_Token.Image := "<EOF>";
      exit loop;
    when Character =>
      case Character is
      when Ada.Characters.Latin_1.A .. Ada.Characters.Latin_1.Z,
           Ada.Characters.Latin_1.a .. Ada.Characters.Latin_1.z,
           Ada.Characters.Latin_1.'_' =>
        Next_Token.Image := Read_Identifier (Stream);
        Next_Token.Kind := if Keywords(Next_Token.Image) then Keyword else Identifier;
      when Ada.Characters.Latin_1.'0' .. Ada.Characters.Latin_1.'9' =>
        Next_Token.Image := Read_Number (Stream);
        Next_Token.Kind := Literal;
      when others =>
        Next_Token.Image := Character'のイメージ;  -- Replace with appropriate character representation function
        Next_Token.Kind := Other;
      end case;
      exit loop;
    when others =>  -- Handle other special characters or whitespace
      null;  -- Skip the character and continue the loop
    end case;
  end loop;
end Get_Token;

-- Helper procedures for reading identifiers, numbers, etc. can be implemented here

private
  procedure Read_Identifier (Stream : in Ada.Characters.Latin_1.Stream_Access) return Ada.Characters.Latin_1.String;
  procedure Read_Number (Stream : in Ada.Characters.Latin_1.Stream_Access) return Ada.Characters.Latin_1.String;

end 
Lexer;
