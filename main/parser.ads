package Parser is
    type AST_Type is access all Integer; -- Dummy AST type for now
    function Parse (Source : in File_Type) return AST_Type;
end Parser;
