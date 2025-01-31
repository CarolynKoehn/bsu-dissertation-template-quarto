-- Created with ChatGPT-4o

function Meta(meta)
  -- Define the key in YAML to extract
  local key = "listAbbreviations"  -- Change this to match the list name in YAML
  
  if meta[key] and type(meta[key]) == "table" then
    local latex_output = "" -- Store the LaTeX content
    
    for _, item in ipairs(meta[key]) do
      if type(item) == "table" and item.text and item.definition then
        latex_output = latex_output .. "\\item[" .. pandoc.utils.stringify(item.text) .. "] " .. pandoc.utils.stringify(item.definition) .. "\n"
      end
    end
    
    -- Wrap in a custom list environment
    latex_output = "\\begin{listAbbreviations}\n" .. latex_output .. "\\end{listAbbreviations}\n"
    
    -- Write to a file
    local filepath = "./_extensions/bsu-dissertation/_list_of_abbrevs.tex"
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
