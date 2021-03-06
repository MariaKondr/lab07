---
## Front matter
lang: ru-RU
title: Лабораторная работа №7
author: |
	Кондрашина Мария Сергеевна\inst{1}
institute: |
	\inst{1}RUDN University, Moscow, Russian Federation
date: 11.03.2022, Moscow

## Formatting
toc: false
slide_level: 2
theme: metropolis
header-includes: 
 - \metroset{progressbar=frametitle,sectionpage=progressbar,numbering=fraction}
 - '\makeatletter'
 - '\beamer@ignorenonframefalse'
 - '\makeatother'
aspectratio: 43
section-titles: true
---  

# Модель эффективности рекламы

## Цель работы

- Научиться строить модель эффективности рекламы.
- Выполнить лабораторную работу №7 согласно своему варианту(34) и сделать по ней отчет.

## Теоретическое введение

Фирма начинает рекламировать, новый товар или услугу. Разумеется, что прибыль от будущих продаж должна будет покрыть издержки на дорогостоящую кампанию. Вначале расходы могут превышать прибыль, поскольку лишь малая часть потенциальных покупателей будет информирована о новинке. Затем, при увеличении числа продаж, уже возможно рассчитывать на заметную прибыль, и, наконец, наступит момент, когда рынок насытится, и рекламировать товар далее станет бессмысленно.
Для описания данного процесса используется модель рекламной кампании.

## Описание модели

- $\frac{dn}{dt}$ - скорость изменения со временем числа потребителей, узнавших о товаре и готовых его купить
- $t$ - время, прошедшее с начала рекламной кампании
- $n(t)$ - число уже информированных клиентов
- $\alpha_1(t)(N-n(t))$ -  число покупателей, еще не знающих о товаре
- $N$ - общее число потенциальных платежеспособных покупателей
- $\alpha_1(t) > 0$ - характеризует интенсивность рекламной кампании
- $\alpha_2(t)n(t)(N-n(t))$ - распростронение с помощью узнавших о товаре потребителей(сарафанное радио)
- $\alpha_2(t) > 0$ характеризует степень общения покупателей между собой

## 

Математическая модель распространения рекламы описывается уравнением:

$$\frac{dn}{dt} = (\alpha_1(t) + \alpha_2(t)n(t))(N-n(t))$$

## $\alpha_1(t) \gg \alpha_2(t)$

При $\alpha_1(t) \gg \alpha_2(t)$ получается модель типа модели Мальтуса, решение которой имеет вид:

![График решения уравнения модели Мальтуса](lab7p/m1.jpg){ #fig:001 width=30%}

Мделью Мальтуса - экспоненциальный рост с постоянным темпом. Широко используется в популяционной экологии как первый принцип популяционной динамики.

## $\alpha_1(t) \ll \alpha_2(t)$

В обратном случае, при $\alpha_1(t) \ll \alpha_2(t)$ получаем уравнение логистической кривой:

![График логистической кривой](lab7p/m2.jpg){ #fig:002 width=30%}

Логистическая кривая - самая общая сигмоидальная кривая, моделирует кривую роста вероятности некоего события, по мере изменения управляющих параметров. Уравнение имеет вид:

$P(t) = \frac{1}{1 + \exp^{-t}}$

## Задание. Вариант 34

Постройте график распространения рекламы, математическая модель которой описывается следующим уравнением:

1. $$\frac{dn}{dt} = (0.74 + 0.000074n(t))(N-n(t))$$
2. $$\frac{dn}{dt} = (0.000074 + 0.74n(t))(N-n(t))$$
3. $$\frac{dn}{dt} = (0.74sin(t) + 0.74cos(t)n(t))(N-n(t))$$

При этом объем аудитории $N = 1060$, в начальный момент о товаре знает 7 человек. Для случая 2 определите в какой момент времени скорость распространения рекламы будет иметь максимальное значение.

## Условие 1 $\frac{dn}{dt} = (0.74 + 0.000074n(t))(N-n(t))$

![График распространения информации о товаре с учетом платной рекламы и с учетом сарафанного радио. Коэффициенты $\alpha_1(t)=0.74, \alpha_2(t)=0.000074$](lab7p/g1.jpg){ #fig:003 width=100%}

## Условие 2 $\frac{dn}{dt} = (0.000074 + 0.74n(t))(N-n(t))$

![График распространения информации о товаре с учетом платной рекламы и с учетом сарафанного радио. Коэффициенты $\alpha_1(t)=0.000074, \alpha_2(t)=0.74$](lab7p/g2.jpg){ #fig:004 width=100%}

##

Так как изменение n оказалось слишком быстрым, взяла изменение времеи $t[0, 0.2]$ с шагом $0.01$

![Коэффициенты $\alpha_1(t)=0.000074, \alpha_2(t)=0.74$, время $t[0, 0.2]$ с шагом $0.01$](lab7p/g2s.jpg){ #fig:005 width=100%}

## Определение в какой момент времени скорость распространения рекламы будет иметь максимальное значение

Скорость распространения рекламы для случая 2 будет иметь максимальное значение, когда $t=0.01$.

![Скорость распространения рекламы для случая 2 ](lab7p/speed.jpg){ #fig:006 width=95%}

## Условие 3 $\frac{dn}{dt} = (0.74sin(t) + 0.74cos(t)n(t))(N-n(t))$

![График распространения информации о товаре с учетом платной рекламы и с учетом сарафанного радио. Коэффициенты $\alpha_1(t)=0.74sin(t), \alpha_2(t)=0.74cos(t)$](lab7p/g3.jpg){ #fig:007 width=100%}

##

![Коэффициенты$\alpha_1(t)=0.74sin(t), \alpha_2(t)=0.74cos(t)$, время $t[0, 0.2]$ с шагом $0.01$](lab7p/g3s.jpg){ #fig:008 width=100%}

## Результат

- Выполнила лабораторную работу №7.
- Познакомилась с написанием модели эффективности рекламы.
- Познакомилась с написанием математических моделей при использованиии openmodelica.

## Список литературы

1. Методические материалы курса.
2. https://www.referat911.ru/Mass-media-i-reklama/matematicheskaya-model-organizacii-reklamnoj-kampanii/247839-2514031-place2.html
3. https://ru.wikipedia.org/wiki/Мальтузианская_модель_роста
4. http://www.machinelearning.ru/wiki/index.php?title=Логистическая_функция