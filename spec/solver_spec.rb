require 'rspec'
require_relative '../solver'

RSpec.describe Solver do
  let(:solver) { Solver.new }

  describe 'factorial and reverse' do
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

      context 'when given a negative integer' do
        it 'raises an ArgumentError' do
          expect { @solver.factorial(-1) }.to raise_error(ArgumentError, 'Number must be a non-negative integer')
        end
      end

      it 'should display the reverse of the given string' do
        expect(@solver.reverse('hello')).to eq('olleh')
        expect(@solver.reverse('world')).to eq('dlrow')
        expect(@solver.reverse('Tekhlay')).to eq('yalhkeT')
        expect(@solver.reverse('Tariq')).to eq('qiraT')
      end
    end
  end

  describe '#fizzbuzz' do
    context 'when given a number divisible by 3 and 5' do
      it 'returns fizzbuzz' do
        expect(solver.fizzbuzz(15)).to eq('fizzbuzz')
        expect(solver.fizzbuzz(30)).to eq('fizzbuzz')
        expect(solver.fizzbuzz(45)).to eq('fizzbuzz')
      end
    end

    context 'when given a number divisible by 3' do
      it 'returns fizz' do
        expect(solver.fizzbuzz(3)).to eq('fizz')
        expect(solver.fizzbuzz(9)).to eq('fizz')
        expect(solver.fizzbuzz(21)).to eq('fizz')
      end
    end

    context 'when given a number divisible by 5' do
      it 'returns buzz' do
        expect(solver.fizzbuzz(5)).to eq('buzz')
        expect(solver.fizzbuzz(20)).to eq('buzz')
        expect(solver.fizzbuzz(25)).to eq('buzz')
      end
    end

    context 'when given a number not divisible by 3 or 5' do
      it 'returns the number as a string' do
        expect(solver.fizzbuzz(1)).to eq('1')
        expect(solver.fizzbuzz(7)).to eq('7')
        expect(solver.fizzbuzz(11)).to eq('11')
      end
    end
  end
end
