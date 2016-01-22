class Yarn_Tools
attr_accessor :size, :brand


end

class Needle < Yarn_Tools
attr_accessor :length

end

class Hook < Yarn_Tools
attr_accessor :type

end

my_hook = Hook.new
my_hook.size = "P"
my_hook.brand = "Boye"
my_hook.type = "tapered"

hooksize = my_hook.size
hookbrand = my_hook.brand
hooktype = my_hook.type

puts hooksize
puts hookbrand
puts hooktype
