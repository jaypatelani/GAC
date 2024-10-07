with Parser;

package Intermediate is

  type AST_Node is aliased Parser.AST_Node;

  type Intermediate_Code is private;

  procedure Generate (Tree : in AST_Node; Code : out Intermediate_Code)
  pre  Tree /= null;

private
  -- Function prototypes for generating intermediate code for different AST node types
  function Generate_Procedure (Node : in AST_Node) return Intermediate_Code;
  function Generate_Statement (Node : in AST_Node) return Intermediate_Code;
  -- ... (similar functions for other node types)

end Intermediate;
