class Calculadora
  def initialize
  end

  def sumar(a, b)
    if a.is_a?(Numeric) && b.is_a?(Numeric)
      return a + b
    end

    raise StandardError, 'Ambos valores deben ser números'
  end
end
