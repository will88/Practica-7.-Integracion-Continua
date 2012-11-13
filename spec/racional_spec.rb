require 'racional'

describe "Rspec Racional" do
	before :each do
		@racional = Racional.new(9,6)
	end

	it "Debe existir un numerador" do
		@racional.get_numerador.should_not be_nil
	end

	it "Debe existir un denominador" do
		@racional.get_denominador.should_not be_nil
	end

	it "Debe de estar en su forma reducida" do
		a = @racional.get_numerador
		b = @racional.get_denominador
		i = 1
		aux = 1
		while ((i < a+1) && (i < b+1)) do
			if ((a%i == 0) && (b%i == 0))
				aux = i
			end
			i = i + 1
		end
		(aux == 1).should be_false
	end
	it "Se debe invocar al metodo num() para obtener el numerador" do
			@racional.num().should_not be_nil
	end
	it "Se debe invocar al metodo denom() para obtener el denominador" do
		@racional.dem().should_not be_nil
	end

	it "Se debe mostar por la consola la fraccion de la forma: a/b, donde a es el numerador y b el denominador" do
		@racional.racional == "#{@racional.num()}/#{@racional.dem()}"
	end

	it "Se debe mostar por la consola la fraccion en formato flotante" do
		@racional.flotante().should be_kind_of (Float)
	end
	it "Se debe comparar si dos fracciones son iguales con ==" do 
		@racional = Racional.new(9,6)
		(@racional == @racional).should be_true
	end

	it "Se debe calcular el valor absoluto de una fraccion con el metodo abs" do
		@racional1 = Racional.new(-3,2)
		@racional2 = Racional.new(3,2)
		@racional1.abs.should == @racional2
	end

	it "Se debe calcular el reciproco de una fraccion con el metodo reciprocal" do
		@racional2 = Racional.new(6,9)
		@racional.reciprocal.should == @racional2
	end

	it "Se debe calcular el opuesto de una fraccion con -" do
		@racional2 = Racional.new(-9,6)
		@racional2.should == -@racional
	end

	it "Se debe sumar dos fracciones con + y dar el resultado de forma reducida" do
		@racional1 = Racional.new(3,2)
		@racional2 = Racional.new(1,2)
		@racional3 = Racional.new(2,1)
		(@racional1 + @racional2).should == @racional3
	end

	it "Se debe restar dos fracciones con - y dar el resultado de forma reducida" do
		@racional1 = Racional.new(3,2)
		@racional2 = Racional.new(1,2)
		@racional3 = Racional.new(1,1)
		(@racional1 - @racional2).should == @racional3
	end

	it "Se debe multiplicar dos fracciones con * y dar el resultado de forma reducida" do
		@racional1 = Racional.new(3,2)
		@racional2 = Racional.new(3,2)
		@racional3 = Racional.new(9,4)
		(@racional1 * @racional2).should == @racional3
	end

	it "Se debe dividir dos fracciones con / y dar el resultado de forma reducida" do
		@racional1 = Racional.new(3,2)
		@racional2 = Racional.new(3,2)
		@racional3 = Racional.new(1,1)
		(@racional1 / @racional2).should == @racional3
	end


	it "Se debe de poder comprobar si una fracion es menor que otra" do
		@racional2 = Racional.new(2,3)
		(@racional2 < @racional).should be_true
	end

	it "Se debe de poder comprobar si una fracion es mayor que otra" do
		@racional2 = Racional.new(2,3)
		(@racional2 > @racional).should be_false
	end

	it "Se debe de poder comprobar si una fracion es menor que otra" do
	@racional2 = Racional.new(2,3)
		(@racional2 <= @racional).should be_true
		(@racional = @racional).should be_true
	end

	it "Se debe de poder comprobar si una fracion es menor que otra" do
		@racional2 = Racional.new(2,3)
		(@racional2 > @racional).should be_false
		(@racional = @racional).should be_true
	end
	
end

