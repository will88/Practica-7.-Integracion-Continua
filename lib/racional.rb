class Racional

	include Comparable
	include Enumerable

	@numerador
	@denominador
	def initialize(n,d)
		@numerador = n
		@denominador = d
	end
	def get_numerador
		@numerador
	end
	def get_denominador
		@denominador
	end
	def num() 
		@numerador
	end
	def dem()
		@denominador
	end
	def racional()
		return "#{@numerador}/#{@denominador}"
	end
	def flotante()
		return ((@numerador.to_f) / (@denominador.to_f))
	end
	
	def == (racional2)
		if (racional2.num() == @numerador && (racional2.dem() == @denominador))
			return true
		else
			return false
		end
	end

	def abs
		if @numerador < 0
			return Racional.new(-@numerador, @denominador)
		else
			return self
		end
	end

	def reciprocal
		return Racional.new(@denominador, @numerador)
	end

	def -@
		Racional.new(-@numerador,@denominador)
	end

	def +(racional2)
		if (racional2.instance_of?(Racional) == true)
			aux1 = (@numerador * racional2.dem()) + (@denominador * racional2.num())
			aux2 = @denominador * racional2.dem()
			i = 1
			aux = 1
			while ((i < aux1+1) && (i < aux2+1)) do
				if ((aux1%i == 0) && (aux2%i == 0))
					aux = i
				end
				i = i + 1
			end
			aux1 = aux1/aux
			aux2 = aux2/aux
			return Racional.new(aux1,aux2)
		end
	end

	def -(racional2)
		if (racional2.instance_of?(Racional) == true)
			aux1 = (@numerador * racional2.dem()) - (@denominador * racional2.num())
			aux2 = @denominador * racional2.dem()
			i = 1
			aux = 1
			while ((i < aux1+1) && (i < aux2+1)) do
				if ((aux1%i == 0) && (aux2%i == 0))
					aux = i
				end
				i = i + 1
			end
			aux1 = aux1/aux
			aux2 = aux2/aux
			return Racional.new(aux1,aux2)
		end
	end

	def *(racional2)
		if (racional2.instance_of?(Racional) == true)
			aux1 = @numerador * racional2.num()
			aux2 = @denominador * racional2.dem()
			i = 1
			aux = 1
			while ((i < aux1+1) && (i < aux2+1)) do
				if ((aux1%i == 0) && (aux2%i == 0))
					aux = i
				end
				i = i + 1
			end
			aux1 = aux1/aux
			aux2 = aux2/aux
			return Racional.new(aux1,aux2)
		end
	end

	def /(racional2)
		if (racional2.instance_of?(Racional) == true)
			aux1 = @numerador * racional2.dem()
			aux2 = @denominador * racional2.num()
			i = 1
			aux = 1
			while ((i < aux1+1) && (i < aux2+1)) do
				if ((aux1%i == 0) && (aux2%i == 0))
					aux = i
				end
				i = i + 1
			end
			aux1 = aux1/aux
			aux2 = aux2/aux
			return Racional.new(aux1,aux2)
		end
	end

	def <=>(racional2)
		return nil unless racional2.instance_of? Racional
		aux1 = @numerador.to_f / @denominador.to_f
		aux2 = racional2.num().to_f / racional2.dem().to_f
		return aux1 <=> aux2
	end

end
