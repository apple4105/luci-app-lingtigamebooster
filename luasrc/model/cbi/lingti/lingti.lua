require("luci.util")

m = Map("lingti", translate("LingTi Game Booster"))
m.description = translate("A Paid Game Acceleration Service")
m:section(SimpleSection).template  = "lingti/lingti_status"

s = m:section(TypedSection, "lingti")
s.anonymous=true
s.addremove=false

e = s:option(Flag, "enabled", translate("Enable"))
e.default = 0
e.optional = false

local apply = luci.http.formvalue("cbi.apply")
if apply then
    io.popen("/etc/init.d/lingti restart")
end

return m
