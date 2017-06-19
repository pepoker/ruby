def imprime_pls (&this_is_proc)
	puts block_given?
	this_is_proc.call
end

imprime_pls{puts "the cake is a lie"}


5.times {puts "Hola"}