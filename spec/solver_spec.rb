require 'rspec'
require_relative '../solver'

describe Solver do
  context 'Solves for the given methods' do
    before(:each) do
      @solver = Solver.new
    end

    it 'should solve factorial for the given integers' do
      expect(@solver.factorial(0)).to eq(1)
      expect(@solver.factorial(1)).to eq(1)
      expect(@solver.factorial(2)).to eq(2)
      expect(@solver.factorial(3)).to eq(6)
      expect(@solver.factorial(4)).to eq(24)
      expect(@solver.factorial(5)).to eq(120)
      expect(@solver.factorial(6)).to eq(720)
    end

    it 'should display the reverse of the given string' do
      expect(@solver.reverse('hello')).to eq('olleh')
      expect(@solver.reverse('world')).to eq('dlrow')
      expect(@solver.reverse('Tekhlay')).to eq('yalhkeT')
      expect(@solver.reverse('Tariq')).to eq('qiraT')
    end
  end
end
