---
# Front matter
title: "Отчёт по лабораторной работе №7"
subtitle: "Эффективность рекламы"
author: "Кондрашина Мария Сергеевна"

# Generic otions
lang: ru-RU
toc-title: "Содержание"

# Pdf output format
toc: true # Table of contents
toc_depth: 2
lof: true # List of figures
lot: true # List of tables
fontsize: 12pt
linestretch: 1.5
papersize: a4
documentclass: scrreprt
## I18n
polyglossia-lang:
  name: russian
  options:
	- spelling=modern
	- babelshorthands=true
polyglossia-otherlangs:
  name: english
### Fonts
mainfont: PT Serif
romanfont: PT Serif
sansfont: PT Sans
monofont: PT Mono
mainfontoptions: Ligatures=TeX
romanfontoptions: Ligatures=TeX
sansfontoptions: Ligatures=TeX,Scale=MatchLowercase
monofontoptions: Scale=MatchLowercase,Scale=0.9
## Biblatex
biblatex: true
biblio-style: "gost-numeric"
biblatexoptions:
  - parentracker=true
  - backend=biber
  - hyperref=auto
  - language=auto
  - autolang=other*
  - citestyle=gost-numeric
## Misc options
indent: true
header-includes:
  - \linepenalty=10 # the penalty added to the badness of each line within a paragraph (no associated penalty node) Increasing the value makes tex try to have fewer lines in the paragraph.
  - \interlinepenalty=0 # value of the penalty (node) added after each line of a paragraph.
  - \hyphenpenalty=50 # the penalty for line breaking at an automatically inserted hyphen
  - \exhyphenpenalty=50 # the penalty for line breaking at an explicit hyphen
  - \binoppenalty=700 # the penalty for breaking a line at a binary operator
  - \relpenalty=500 # the penalty for breaking a line at a relation
  - \clubpenalty=150 # extra penalty for breaking after first line of a paragraph
  - \widowpenalty=150 # extra penalty for breaking before last line of a paragraph
  - \displaywidowpenalty=50 # extra penalty for breaking before last line before a display math
  - \brokenpenalty=100 # extra penalty for page breaking after a hyphenated line
  - \predisplaypenalty=10000 # penalty for breaking before a display
  - \postdisplaypenalty=0 # penalty for breaking after a display
  - \floatingpenalty = 20000 # penalty for splitting an insertion (can only be split footnote in standard LaTeX)
  - \raggedbottom # or \flushbottom
  - \usepackage{float} # keep figures where there are in the text
  - \floatplacement{figure}{H} # keep figures where there are in the text
---

# Цель работы

- Научиться строить модель эффективности рекламы.
- Выполнить лабораторную работу №7 согласно своему варианту(34) и сделать по ней отчет.

# Задание. Вариант 34

Постройте график распространения рекламы, математическая модель которой описывается следующим уравнением:

1. $$\frac{dn}{dt} = (0.74 + 0.000074n(t))(N-n(t))$$
2. $$\frac{dn}{dt} = (0.000074 + 0.74n(t))(N-n(t))$$
3. $$\frac{dn}{dt} = (0.74sin(t) + 0.74cos(t)n(t))(N-n(t))$$

При этом объем аудитории $N = 1060$, в начальный момент о товаре знает 7 человек. Для случая 2 определите в какой момент времени скорость распространения рекламы будет иметь максимальное значение.

# Теоретическое введение

Фирма начинает рекламировать, новый товар или услугу. Разумеется, что прибыль от будущих продаж должна будет покрыть издержки на дорогостоящую кампанию. Вначале расходы могут превышать прибыль, поскольку лишь малая часть потенциальных покупателей будет информирована о новинке. Затем, при увеличении числа продаж, уже возможно рассчитывать на заметную прибыль, и, наконец, наступит момент, когда рынок насытится, и рекламировать товар далее не станет бессмысленно.
Для описания данного процесса используется модель рекламной кампании.[2]

Модель рекламной кампании описывается следующими величинами. Считаем, что $\frac{dn}{dt}$ - скорость изменения со временем числа потребителей, узнавших о товаре и готовых его купить, $t$ - время, прошедшее с начала рекламной кампании, $n(t)$ - число уже информированных клиентов. Эта величина пропорциональна числу покупателей, еще не знающих о нем, это описывается следующим образом: $\alpha_1(t)(N-n(t))$, где $N$ - общее число потенциальных платежеспособных покупателей, $\alpha_1(t) > 0$ - характеризует интенсивность рекламной кампании (зависит от затрат на рекламу в данный момент времени).
Помимо этого, узнавшие о товаре потребители также распространяют полученную информацию среди потенциальных покупателей, не знающих о нем (в этом случае работает т.н. сарафанное радио). Этот вклад в рекламу описывается величиной $\alpha_2(t)n(t)(N-n(t))$ , эта величина увеличивается с увеличением потребителей узнавших о товаре. Величина $\alpha_2(t) > 0$ характеризует степень общения покупателей между собой (она может быть установлена, например, с помощью опросов) [2]. Математическая модель распространения рекламы описывается уравнением:[1]

$$\frac{dn}{dt} = (\alpha_1(t) + \alpha_2(t)n(t))(N-n(t))$$

При $\alpha_1(t) \gg \alpha_2(t)$ получается модель типа модели Мальтуса, решение которой имеет вид:[1] (@fig:001)

![График решения уравнения модели Мальтуса](lab7p/m1.jpg){ #fig:001 width=100%}

Мальтузианская модель роста, также называемая моделью Мальтуса, есть экспоненциальный рост с постоянным темпом. Широко используется в популяционной экологии как первый принцип популяционной динамики.[3]

В обратном случае, при $\alpha_1(t) \ll \alpha_2(t)$ получаем уравнение логистической кривой: (@fig:002)

![График логистической кривой](lab7p/m2.jpg){ #fig:002 width=100%}

[1]

Логистическая функция или логистическая кривая - самая общая сигмоидальная (S-образная) кривая. Она моделирует кривую роста вероятности некоего события, по мере изменения управляющих параметров (факторов риска).Уравнение имеет вид:[4]

$P(t) = \frac{1}{1 + \exp^{-t}}$

# Выполнение лабораторной работы

1. Условие 1
$$\frac{dn}{dt} = (0.74 + 0.000074n(t))(N-n(t))$$
$\alpha_1(t)=0.74, \alpha_2(t)=0.000074$,
$t[0, 30]$ с шагом $0.1$
Код программы:(@fig:003)

![Код программы для уравнения 1. Коэффициенты $\alpha_1(t)=0.74, \alpha_2(t)=0.000074$](lab7p/c1.jpg){ #fig:003 width=100%}

График:(@fig:004)

![График распространения информации о товаре с учетом платной рекламы и с учетом сарафанного радио. Коэффициенты $\alpha_1(t)=0.74, \alpha_2(t)=0.000074$](lab7p/g1.jpg){ #fig:004 width=100%}

2. Условие 2
$$\frac{dn}{dt} = (0.000074 + 0.74n(t))(N-n(t))$$
$\alpha_1(t)=0.000074, \alpha_2(t)=0.74$
Код программы:(@fig:005)

![Код программы для уравнения 2. Коэффициенты $\alpha_1(t)=0.000074, \alpha_2(t)=0.74$](lab7p/c2.jpg){ #fig:005 width=100%}

График:(@fig:006)(@fig:007)

![График распространения информации о товаре с учетом платной рекламы и с учетом сарафанного радио. Коэффициенты $\alpha_1(t)=0.000074, \alpha_2(t)=0.74$](lab7p/g2.jpg){ #fig:006 width=100%}

Так как при изменение оказалась слишком быстрым взяла изменение времеи $t[0, 0.2]$ с шагом $0.01$

![Коэффициенты $\alpha_1(t)=0.000074, \alpha_2(t)=0.74$, время $t[0, 0.2]$ с шагом $0.01$](lab7p/g2s.jpg){ #fig:007 width=100%}

Для случая 2 определите в какой момент времени скорость распространения рекламы будет иметь максимальное значение.

Скорость распространения рекламы для случая 2 будет иметь максимальное значение, когда $t=0.01$.(@fig:008)

![Скорость распространения рекламы для случая 2 ](lab7p/speed.jpg){ #fig:008 width=100%}

1. Условие 3
$$\frac{dn}{dt} = (0.74sin(t) + 0.74cos(t)n(t))(N-n(t))$$
$\alpha_1(t)=0.74sin(t), \alpha_2(t)=0.74cos(t)$
Код программы:(@fig:009)

![Код программы для уравнения 3. Коэффициенты $\alpha_1(t)=0.74sin(t), \alpha_2(t)=0.74cos(t)$](lab7p/c3.jpg){ #fig:009 width=100%}

График:(@fig:010)(@fig:011)

![График распространения информации о товаре с учетом платной рекламы и с учетом сарафанного радио. Коэффициенты $\alpha_1(t)=0.74sin(t), \alpha_2(t)=0.74cos(t)$](lab7p/g3.jpg){ #fig:010 width=100%}

![Коэффициенты$\alpha_1(t)=0.74sin(t), \alpha_2(t)=0.74cos(t)$, время $t[0, 0.2]$ с шагом $0.01$](lab7p/g3s.jpg){ #fig:011 width=100%}

# Выводы

- Выполнила лабораторную работу №7.
- Познакомилась с написанием модели эффективности рекламы.
- Познакомилась с написанием математических моделей при использованиии openmodelica.

# Список литературы

1. Методические материалы курса.
2. https://www.referat911.ru/Mass-media-i-reklama/matematicheskaya-model-organizacii-reklamnoj-kampanii/247839-2514031-place2.html
3. https://ru.wikipedia.org/wiki/Мальтузианская_модель_роста
4. http://www.machinelearning.ru/wiki/index.php?title=Логистическая_функция