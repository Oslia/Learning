#string index error. Unicode has 3byte.
s = "\u2200 x \u2203 y"

for i = firstindex(s):lastindex(s)
 try println(s[i])
 catch
   #ignore the index error
 end
end

println("here\n")
for c in s
  println(c)
end

print("here2\n")
for i = 1:ncodeunits(s)
  println(codeunit(s,i)) #원시코드
end

print("here3\n")
codeunits(s)
s = "\xc0\xa0\xe2\x88\xe2|"
foreach(display, s)
isvalid.(collect(s))
s2 = "\xf7\xbf\xbf\xbf"
foreach(display, s2)

str = """
Hello,
world.
"""
