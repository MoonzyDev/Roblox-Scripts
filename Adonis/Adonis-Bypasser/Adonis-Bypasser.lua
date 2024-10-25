--> CREDITS: Made by Globe & Moonzy
if getgenv().checksupport then
  if not debug.getinfo or debug.getinfo == nil then return end
  if not hookfunction or hookfunction == nil then return end
  if not getgc or getgc == nil then return end
end

for _,v in pairs(getgc()) do
  if (typeof(v) == "function") then
    local x = debug.getinfo(v);
    if (x.name == "compareTables") then
      hookfunction(value, function() return true end);
    end
  end
end
