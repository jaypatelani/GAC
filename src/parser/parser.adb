with Ada.Text_IO; use Ada.Text_IO;
with Lexer;

package body Parser is

  type AST_Node (abstract) is tagged record
    case Kind is
    when Procedure =>
      Procedure_Node (Name : Ada.Characters.Latin_1.String; Body : AST_Node);
    when Statement =>
      Statement_Node (Kind : some_type);  -- Replace with specific statement type
    when others => null;
  end record;

  -- Implementations of parsing functions
  function Parse_Procedure (Stream : in Ada.Text_IO.Access) return AST_Node is
    procedure_node : AST_Node;
  begin
    -- Check for "procedure" keyword, parse name, statements, etc.
    -- Build and return the Procedure_Node of the AST
  end Parse_Procedure;

  function Parse_Statement (Stream : in Ada.Text_IO.Access) return AST_Node is
    statement_node : AST_Node;
  begin
    -- Check for different statement types (Put_Line, etc.)
    -- Build and return the Statement_Node of the AST
  end Parse_Statement;

  -- ... (implementations for other parsing functions)

  procedure Parse (Stream : in Ada.Text_IO.Access;
                   Tree   : out AST_Node)
  begin
    Tree := Parse_Program (Stream);  -- Top-level function for parsing the entire program
  end Parse;

private
  function Parse_Program (Stream : in Ada.Text_IO.Access) return AST_Node;
  -- ... (implementations for other private helper functions)

end
Parser;
