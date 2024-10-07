with Parser;

package Semantics is

  type AST_Node is aliased Parser.AST_Node;

  procedure Analyze (Tree : in AST_Node;
                     Errors : out String)
  pre  Tree /= null;
  post Errors.Length = 0 or Errors /= "";  -- Empty string for no errors, non-empty for errors

private
  -- Function prototypes for semantic checks on different AST node types
  procedure Check_Procedure (Node : in AST_Node; Errors : out String);
  procedure Check_Statement (Node : in AST_Node; Errors : out String);
  -- ... (similar functions for other node types)

end Semantics;
