require("luci.util")

m = Map("lingti", translate("LingTi Game Accelerator"))
m.description = translate("A Paid Game Acceleration service")
m:section(SimpleSection).template  = "lingti/lingti_status"

s = m:section(TypedSection, "lingti")
s.anonymous=true
s.addremove=false

enable = s:option(Flag, "enabled", translate("Enable"))
enable.default = 0
enable.optional = false

local apply = luci.http.formvalue("cbi.apply")
if apply then
    io.popen("/etc/init.d/lingti start &")
end

return m
