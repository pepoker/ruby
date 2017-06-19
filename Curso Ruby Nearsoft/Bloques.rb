def imprime_pls
	if block_given?
		yield
	else
		puts "no es un bloque"
	end
end

imprime_pls{puts "the cake is a lie"}