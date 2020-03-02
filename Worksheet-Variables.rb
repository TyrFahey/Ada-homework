x = 5
# what value does x now hold?
# Answer: 5

z = "Hello"
# what value does z now hold?
# Answer: "Hello", or just Hello if printed to console.

a = 5
b = 3.2
c = a + b
# what values does c now hold?
# Answer: 8.2

var1 = "lawl"
var2 = "brb"
# what value does var2 now hold?
# Answer: "brb", it has not been assigned anything else.

e = 6 + 3
# what values does e now hold?
# Answer: 9

f = 3.5
f = f + 2
# what value does f now hold?
# Answer: 5.5 => this could also be accomplished by f += 2

poodle = 4
pitbull = 3
# what value does boxer now hold?
# Answer: undefined

h = 5
h = h + h
# what values does h now hold?
# Answer: 10

j = 1
k = 2
m = 3
n = j + k + m
# what value does n now hold?
# Answer: 6

l = "moo"
q = "quack"
l = q
# what value does l now hold?
# Answer: "quack" <= it was reassigned with the value of 'q', not appended to, so it now holds 'q's string.

r = "moo"
s = "quack"
t = "woof"
r = t
# what value does r now hold?
# Answer: "woof"

u = 5
u = u * 2
u = u * 2
u = u * 2
# what value does u now hold?
# Answer: 40 <= the variables break down essentially into (5 * 2, 10 * 2, 20 * 2)

v = "b"
z = "a"
# what value does v now hold?
# Answer: "b"

aa = 3234
bb = 2398
cc = 0
dd = (aa + bb) / cc
# what value does dd now hold?
# As far as I know, dd is never successfully assigned as the equation that is doing so involves dividing by zero.
# so dd would report as undefined technically, though without the divide by zero it would've been 5632.

yy = 7
zz = yy % 2
# what value does zz now hold?
# zz holds a value of 1, as that is the remainder left over after the modulo operator divides 7 by 2.

ee = 12
ff = ee % 4
# what value does ff now hold?
# ff holds a value of 0, as 12 can be divided by 4 with no remainder.

zz = 17
hh = zz % 3
# what value does hh now hold?
# hh holds a value of 2, as that is 17's remainder after being divided by 3.
