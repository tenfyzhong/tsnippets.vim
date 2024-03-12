local function camel_to_snake(str)
    return str:gsub('([a-z0-9])([A-Z])', '%1_%2'):lower()
end

local function snake_to_camel(str)
    return str:gsub('(_)([a-zA-Z0-9])', function(_, l) return l:upper() end)
end

return {
    camel_to_snake = camel_to_snake,
    snake_to_camel = snake_to_camel,
}
