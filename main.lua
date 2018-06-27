local pid = 5622

local EXIT = "exit"
local LIST = "list"
local SET  = "set"


local function h2s(hex)
    return (hex:gsub('..', function (cc) return string.char(tonumber(cc, 16)) end))
end

local function s2h(str)
    return (str:gsub('.', function (c) return string.format('%02x', string.byte(c)) end))
end

local function n2s(num)
    local s = string.format('%x',tonumber(num))
    return h2s( (s:len()%2==0) and s or "0"..s )
end

local function s2n(str)
    return tonumber(s2h(str),16)
end

local mem_file  = io.open("/proc/"..pid.."/mem", "w+b")

function beolvas()
    local mem = {}

    local maps_file = io.open("/proc/"..pid.."/maps")

    while true do
        local maps_line = maps_file:read()
        if maps_line==nil then break end
        string.gsub(maps_line,"(%x+)%-(%x+) (r)", function(a,b,c) m = {a,b,c} end )
        if m[3] == 'r' then
            --print(m[1].." "..m[2]..": ")
            local a = tonumber(m[1], 16)
            local b = tonumber(m[2], 16)
            mem_file:seek("set",a)
            local chunk = mem_file:read(b-a)
            if chunk then table.insert(mem,{a,b,chunk}) end
        end
    end

    maps_file:close()

    local str = tostring(io.read()) --elso kereses

    local list = {}
    for i,m in ipairs(mem) do

        local p,l = m[3]:find(str)                                                              
        if p then table.insert(list,{m[1],p,l,false}) print(m[1],m[3]:sub(p,l),"str",p,l) end --Szöveg szerinti keresés

        if tonumber(str) then
            p,l = m[3]:find(n2s(str))       
            if p then table.insert(list,{m[1],p,l,true}) print(m[1],s2b(m[3]:sub(p,l)),"num",p,l) end --Számként keresés
        end
    end

    return list
end

function ujraolvas(e)
    mem_file:seek("set",e[1]+e[2]-1)
    return mem_file:read(e[3]-e[2]+1)
end

function felulir(e,new)
        mem_file:seek("set",e[1]+e[2]-1)
        mem_file:write(new)
end

local list = beolvas(pid)
print(#list)
print("")

str = tostring(io.read())
while str~=EXIT do
    local new = ""
    if str==SET then new = tostring(io.read()) end

    for i=#list,1,-1 do 
        if str==SET then felulir(list[i],new) end
        local o = ujraolvas(list[i])
        local tr = true
        if o then
            if (not list[i][4] and (str==LIST or o==str     )) then print(list[i][1],o     ,"str",list[i][2],list[i][3]) tr=false
            elseif (list[i][4] and (str==LIST or o==n2s(str))) then print(list[i][1],s2n(o),"num",list[i][2],list[i][3]) tr=false
            end
        end
        if tr then table.remove(list,i) end
    end
    print(#list)
    print("")
    
    str = tostring(io.read())
end

mem_file:close()
