-- Created with ChatGPT-4o

function Meta(meta)
  -- Define the key in YAML to extract
  local key = "listSymbols"  -- Change this to match the list name in YAML
  
  if meta[key] and type(meta[key]) == "table" then
    local latex_output = "" -- Store the LaTeX content
    
    for _, item in ipairs(meta[key]) do
      if type(item) == "table" and item.symbol and item.definition then
        latex_output = latex_output .. "\\item[$" .. pandoc.utils.stringify(item.symbol) .. "$] " .. pandoc.utils.stringify(item.definition) .. "\n"
      end
    end
    
    -- Wrap in a custom list environment
    latex_output = "\\begin{listSymbols}\n" .. latex_output .. "\\end{listSymbols}\n"
    
    -- Write to a file
    local filepath = "_list_of_symbols.tex"
    local f = io.open(filepath, "w")
    if f then
      f:write(latex_output)
      f:close()
    else
      io.stderr:write("Error: Could not write to " .. filepath .. "\n")
    end
  end
  
  return meta
end
