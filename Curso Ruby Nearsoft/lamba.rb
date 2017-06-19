procs = Proc.new{|x| puts x}
procs.call(2)
procs.call(2,4,5)


lam = lambda {|y,z,w| puts z}
lam.call(7,3,8)

