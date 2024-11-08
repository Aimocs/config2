--split function()
function mysplit(inputstr, sep)
  if sep == nil then
    sep = "%s"
  end
  local t = {}
  for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
    table.insert(t, str) 
  end
  return t
end
--getLine function()
local function getLine(filePath, lineNumber)
    local file = io.open(filePath, "r")
    if not file then return nil end

    local currentLine = 0
    local lineContent

    while currentLine < lineNumber do
        lineContent = file:read("*line")  -- Read the next line
        if not lineContent then break end  -- Stop if EOF is reached
        currentLine = currentLine + 1
    end

    file:close()
    return lineContent  -- Return the content of the specified line
end
math.randomseed(os.time())
local randomNumber = math.random(1, 2950)
local file = getLine('<jokes file>', randomNumber)
local joke = mysplit(file,",")
local refinedJoke = ""
for index, values in ipairs(joke) do 
	if index == 1 then goto continue end
	refinedJoke = refinedJoke..values
	::continue::
end 
print(refinedJoke)
return {
    'goolord/alpha-nvim',
    dependencies = {
        'echasnovski/mini.icons',
        'nvim-lua/plenary.nvim'
    },
    config = function()
	    local dashb = require("alpha.themes.dashboard")
	    dashb.section.header.val={
		    refinedJoke,
	    }
	    dashb.section.footer.val={
		    "you this is the footer ",
	    }
	    require("alpha").setup(
	    dashb.opts
	    )
    end,
};
