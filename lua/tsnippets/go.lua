local str = require("tsnippets.str")

local function field()
    local lnum = vim.fn.line(".")
    local content = vim.fn.getline(lnum)
    return content:gsub("%s*(%w*).*", "%1")
end

local function field_camel()
    local f = field()
    return str.snake_to_camel(f)
end

local function field_snake()
    local f = field()
    return str.camel_to_snake(f)
end

return {
    field = field,
    field_camel = field_camel,
    field_snake = field_snake,
}
