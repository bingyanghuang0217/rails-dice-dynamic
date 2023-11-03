class RolldiceController < ApplicationController
  def dynamic
    @times = params['times'].to_i
    @sides = params['sides'].to_i
    @roll = []
    @times.times do
      die = rand(1..@sides)
      @roll.push(die)
    end
    render({:template => "my_templates/dice"})
  end 
  
  def home
    render({:template => "my_templates/home"})
  end
end
