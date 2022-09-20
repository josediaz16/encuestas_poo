require './calculadora'

RSpec.describe Calculadora do
  describe '#sumar' do
    context 'a y b son numeros' do
      it 'retorna la suma de a + b' do
        calculadora = Calculadora.new
        resultado = calculadora.sumar(1, 2)

        expect(resultado).to eq(3)
      end
    end

    context 'a es numero y b es nil' do
      it 'lanza un error de tipo' do
        calculadora = Calculadora.new

        expect { calculadora.sumar(1, nil) }.to raise_error(StandardError, 'Ambos valores deben ser números')
      end
    end

    context 'a nil y b es numero' do
      it 'lanza un error de tipo' do
        calculadora = Calculadora.new

        expect { calculadora.sumar(nil, 1) }.to raise_error(StandardError, 'Ambos valores deben ser números')
      end
    end

    context 'a nil y b nil' do
      it 'lanza un error de tipo' do
        calculadora = Calculadora.new

        expect { calculadora.sumar(nil, nil) }.to raise_error(StandardError, 'Ambos valores deben ser números')
      end
    end
  end

  describe '#dividir' do
  end
end
