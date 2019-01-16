local whole = io.read("*a");

local pattern = {}
local x = 1
local y = 1

for line in string.gmatch(whole, "[^\n]+") do
    if line~="---" then
        if not pattern[y] then pattern[y]={"--","--","--","--","--","--","--","--"} end

        local i = 1
        for c in string.gmatch(line, "[^%s]+") do
            if i>2 and i<11 then
                x = i-2
                if     pattern[y][x] == "--" then pattern[y][x]=c 
                elseif pattern[y][x] ~= c    then pattern[y][x]="??"
                end
            end
            i=i+1
        end

        y=y+1
    else
        y=1
    end
end

for l,v in ipairs(pattern) do
    for k,w in ipairs(v) do
        io.write(w.." ")
    end
    io.write("\n")
end
io.write('\n"')

for l,v in ipairs(pattern) do
    for k,w in ipairs(v) do
        if w=="??" then io.write("\\x00")
        else io.write("\\x"..w)
        end
    end
end
io.write('","')

for l,v in ipairs(pattern) do
    for k,w in ipairs(v) do
        if w=="??" then io.write("?")
        else io.write("x")
        end
    end
end
io.write('"\n')