model lab07t
  parameter Real N=1060;// максимальное количество людей, которых может заинтересовать товар
  parameter Real n0=7;// количество людей, знающих о товаре в начальный момент времени
  parameter Real alpha_1=0.74;//характеризует интенсивность рекламной кампании
  parameter Real alpha_2=0.74;//характеризует степень общения покупателей между собой
  Real n(start = n0);//число уже информированных клиентов
equation
  der(n) = (alpha_1*sin(time) + alpha_2*cos(time)*n)*(N-n);
end lab07t;