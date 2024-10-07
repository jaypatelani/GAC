with Intermediate;

package Optimization is

  type Intermediate_Code is aliased Intermediate.Intermediate_Code;

  procedure Optimize (Code : in out Intermediate_Code)
  pre  Code /= null;

private
  -- Function prototypes for different optimization techniques
  procedure Apply_Constant_Folding (Code : in out Intermediate_Code);
  procedure Apply_Dead_Code_Elimination (Code : in out Intermediate_Code);
  -- ... (similar functions for other optimization techniques)

end Optimization;
