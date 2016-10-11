# Va a buscar el valor que se encuentra en la posición(index) de num
  #RECURSIVO 
def fibonacci_recursive(num)
  return 0 if num == 0
  return 1 if num == 1
  fibonacci_recursive(num - 1) + fibonacci_recursive(num - 2) #cuando las operaciones llegan a uno de los resultados del base_case (condiciones base[permiten saber cuando parar] num == 0 && 1) se suman entre ellos
end

p fibonacci_recursive(0) == 0
p fibonacci_recursive(1) == 1
p fibonacci_recursive(2) == 1
p fibonacci_recursive(3) == 2
p fibonacci_recursive(4) == 3
p fibonacci_recursive(5) == 5
p fibonacci_recursive(8) == 21
p fibonacci_recursive(10) == 55
p fibonacci_recursive(13) == 233
p fibonacci_recursive(14) == 377
p fibonacci_recursive(15) == 610
p fibonacci_recursive(16) == 987

# Fibonacci version iterativa
def fibonacci_iterative(num)
  a = 1 #representa el penultimo elemento
  b = 0 #representa el último elemento de la sucesión calculado hasta el momento
  for i in 1..(num)
    # a, b, t = b, a + b, t #asignación paralela
    t = b #variable temporal con el valor original de b
    b = a + b 
    a = t
  end
    return b
end
p fibonacci_iterative(0) == 0
p fibonacci_iterative(1) == 1
p fibonacci_iterative(2) == 1
p fibonacci_iterative(3) == 2
p fibonacci_iterative(4) == 3
p fibonacci_iterative(5) == 5
p fibonacci_iterative(8) == 21
p fibonacci_iterative(10) == 55
p fibonacci_iterative(13) == 233
p fibonacci_iterative(14) == 377
p fibonacci_iterative(15) == 610
p fibonacci_iterative(16) == 987
