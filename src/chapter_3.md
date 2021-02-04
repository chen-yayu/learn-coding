## [python编程一小时](https://hourofpython.trinket.io/ke3-shi4-hua4-python-jian3-jie4#/wu1-gui1/ren4-shi2-jimmy)

### 画图乌龟

#### 认识Jimmy

Tina是一只你可以用代码控制的小乌龟。在IDE中运行下面代码：

```python
import turtle
tina = turtle.Turtle()
tina.shape('turtle')

tina.penup()
tina.forward(200)
tina.write("你好，欢迎!")
tina.backward(200)
```

去看看这个程序都做了些什么，再看看你是否能够辨认出是哪行代码让Tina说出了："你好，欢迎!"。

遇到看不懂的单词，查一查词典看你是否能理解它们的意思。

不能完全理解这些代码？不用担心！你不需要现在就能上手，但是你会随着后面的进度对这些代码越来越熟悉。

### 移动

在上一个例子中我们发现，Tina会动！在她移动的时候，她会画一条线。她可以“向前”（forward）、“向后”（backward）以及“向右转”（right）或者“向左转”（left）指定角度。

运行下面的例子来看看Tina是怎么动的：

```python
import turtle
tina = turtle.Turtle()
tina.shape("turtle")

tina.forward(50)
tina.left(90)
tina.forward(50)
tina.left(90)
tina.forward(50)
```

她几乎就要画出一个正方形了！ 那么，你能不能帮助她完成这个正方形呢？你还能帮助Tina画出什么别的图形么？

### 说“你好”

你已经看到Tina会说"你好"，不过你还可以告诉她你的名字，然后她也会向你问好哦。

```python
import turtle
tina = turtle.Turtle()
tina.shape('turtle')

tina.penup()
tina.forward(200)
tina.write("你好!")
tina.backward(200)
```

首先，找到Tina说"你好!"的那行代码。然后对代码进行修改,让她向你问好。比如我的名字叫Jimmy,所以我就改成让她说:"你好, Jimmy!"

你上面所写的程序可以用来和与你同名的人打招呼，那其他名字怎么办呢？ 我们可以写一个程序，通过input 函数让你输入自己的名字，这样Tina就能够知道每个人的名字了。下面请运行这个程序并输入你的名字：

```python
import turtle
tina = turtle.Turtle()
tina.shape('turtle')

your_name = input("What's your name?")

tina.penup()
tina.forward(20)
tina.write("你好, " + your_name + "!")
tina.backward(20)
```

程序使用input函数来询问你的名字。你输入的任何内容都会被存储到一个变量之中。 Tina用这个变量去记住并且输出你名字。

We can teach Tina to say anything we want using input. Can you add input 函数到这个程序，来指定Tina说出的内容？

通过input函数，我们可以教Tina说出任何内容。试试你能否通过添加input函数到这个程序中使Tina能够叫出每一个运行这个程序的人的名字。 

```python
import turtle
tina = turtle.Turtle()
tina.shape('turtle')

say_what = "What should I say?"

tina.penup()
tina.forward(20)
tina.write(say_what)
tina.backward(20)
```

提示：本程序中，say_what变量对应的是Tina所说出的内容。 想一想我们如何才能像上面一样运用input，使程序由任何一个运行这个程序的人决定变量的内容？

### 色彩

Tina能变身各种颜色！我们可以通过输入tina.color("blue")让她变成蓝色。

运行：

```python
import turtle
tina = turtle.Turtle()
tina.shape('turtle')

tina.left(90)
tina.forward(20)
tina.write("What color am I now?")

tina.forward(20)
tina.color("blue")
tina.write("What color am I now?")

tina.forward(20)
tina.color("purple")
tina.write("What color am I now?")

tina.forward(20)
tina.color("green")
tina.write("What color am I now?")
```

图中的每个色彩线段都可以用下面的三行代码来实现：

```
tina.forward(20)
tina.color("blue")
tina.write("What color am I now?")
```

通过像这样添加更多的“三行代码”，你可以让Tina的色彩队列变出更多颜色。还可以让蓝色（"blue"）变成你喜欢的颜色，粉色（"pink"）？黄色（ "yellow"）还是蓝绿色（"cyan"）？统统由你决定！

### Tina 的笔

像Tina这样的小乌龟都有一支笔可以边走边画。我们可以让他们“停笔”，然后他们就会只移动但不画线。我们也可以让他们“下笔”，这样他们就又可以一边移动一遍画线了。我们分别通过命令 penup() 和 pendown()来告诉他们“停笔”还是“下笔”。

```python
import turtle
tina = turtle.Turtle()
tina.shape('turtle')

tina.penup()
tina.goto(0,100)
tina.write("I don't draw when my pen is up!")
tina.goto(0,50)
tina.pendown()
tina.write("I do draw when my pen is down!")
tina.goto(-50,50)
```

### Tina 的网格

Tina的 世界是一个网格，就像我们在代数和几何中用过的坐标轴。

我们可以让Tina直接去到图中的一个指定点，这样能更容易地教她画画！

```python
import turtle
tina = turtle.Turtle()
tina.shape('turtle')

tina.penup()
tina.write("I start at 0, 0")

tina.goto(100,100)
tina.write("This is 100, 100")

tina.goto(-100,-100)
tina.write("This is -100, -100")

tina.goto(100,-100)
tina.write("This is 100, -100")

tina.goto(-100,100)
tina.write("This is -100, 100")

tina.goto(-100, 0)
```

这个网格的横向和纵向的范围都是-200到200。你可以把Tina送到网格范围之外的地方，但是这样你就看不到她在干嘛了。

```python
import turtle
tina = turtle.Turtle()
tina.shape('turtle')

tina.goto(200,200)
tina.goto(-200,200)
tina.goto(200,-200)
tina.goto(-200,-200)
tina.goto(0,0)

tina.write("               This is how big my grid is!")
```

和Tina一起画画吧。用下面这行代码把她派到网格中其他的位置：

```
tina.goto(37,-50)
```

你可以选取任何数字，但是一定要在-200 到200的范围内你才能看到她。


### 圆圈

Tina可以画出不同大小的圆圈，有了圆圈就可以画鬼脸啦！

```python
import turtle
tina = turtle.Turtle()
tina.shape('turtle')

tina.penup()
tina.goto(30,-150)
tina.pendown()
tina.circle(130)
tina.penup()
tina.goto(0,0)
tina.pendown()
tina.circle(20)
tina.circle(10)
tina.penup()
tina.forward(60)
tina.right(45)
tina.pendown()
tina.circle(30)
tina.circle(10)
tina.penup()
tina.right(90)
tina.forward(90)
tina.pendown()
tina.circle(40)
tina.penup()
tina.goto(25,-25)
```

你能不能在图中再画一些鬼脸？

小乌龟们还有“填充” （fill）技能！在圆圈中填上颜色，画起来更有趣。

```python
import turtle
tina = turtle.Turtle()
tina.shape('turtle')

tina.penup()
tina.begin_fill()
tina.color('green')
tina.goto(30,-150)
tina.pendown()
tina.circle(130)
tina.penup()
tina.end_fill()
tina.color('white')
tina.goto(0,0)
tina.begin_fill()
tina.pendown()
tina.circle(20)
tina.penup()
tina.end_fill()
tina.begin_fill()
tina.color('black')
tina.pendown()
tina.circle(10)
tina.penup()
tina.end_fill()
tina.forward(60)
tina.right(45)
tina.begin_fill()
tina.color('white')
tina.pendown()
tina.circle(30)
tina.penup()
tina.end_fill()
tina.begin_fill()
tina.color('black')
tina.pendown()
tina.circle(10)
tina.penup()
tina.end_fill()
tina.right(90)
tina.forward(90)
tina.begin_fill()
tina.color('maroon')
tina.pendown()
tina.circle(40)
tina.penup()
tina.end_fill()
tina.goto(25,-25)
```

##  使用循环(Loops)和列表(Lists)重复 

### 数字列表

现在，我们已经写出了我们想让Tina每次移动的长度。我们可以用一个数字列表和一个循环让她重复移动。

```python
import turtle
tina = turtle.Turtle()
tina.shape('turtle')

number_list = [1,2,3,4,5,6,7,8,9,10] 

tina.color("green") 
for number in number_list: 
    tina.forward(number*10) 
    tina.left(60)
```

通过代码 number_list = [1,2,3,4,5,6,7,8,9,10]，可以告诉Tina移动的长度。你能不能改变列表中的数字来改变Tina的移动呢？一定要记得在列表的开始和结束加上方括号([])，还有在每两个数字中间使用逗号(,)。

### 列表循环 

现在，我们已经让Tina重复的做一件事情。复习一下下面这个例子：

```python
import turtle
tina = turtle.Turtle()
tina.shape('turtle')

tina.left(90)
tina.forward(20)
tina.write("What color am I now?")

tina.forward(20)
tina.color("blue")
tina.write("What color am I now?")

tina.forward(20)
tina.color("purple")
tina.write("What color am I now?")

tina.forward(20)
tina.color("green")
tina.write("What color am I now?")
```

这段代码中有很多的重复。如果我们给Tina列出色彩列表并且告诉她用每一种颜色做同样的事情， 就可以使用更短短代码来画出同样短图了。

```python
import turtle
tina = turtle.Turtle()
tina.shape('turtle')

color_list = ["black", "blue", "purple", "green"]

tina.left(90)

for color in color_list:
    tina.forward(20)
    tina.color(color)
    tina.write("What color am I now?")
```

我们还可以很容易的改变让Tina画图的次数。 试试在列表中增加一个新的颜色名字，比如下面的列表增加了黄色"yellow" 。

```python
color_list = ["black", "blue", "purple", "green", "yellow"]
```

别忘了在新增的颜色名称上加引号("")！

遇到障碍了？没关系！这里是一些小提示：

    记得在颜色名称上加引号("")
    记得在列表中每两个相邻的色彩名称之间加逗号(,)
    记得在列表的开始和结束加上方括号([ ])

### 改变颜色

我们可以给出一个色彩列表循环并让Tina变成指定的颜色。

运行这个程序，看看这些颜色都是怎么来的。如果从列表中增加或者减少一个颜色会怎样？

```python
import turtle
tina = turtle.Turtle()
tina.shape('turtle')

colors = ["red", "orange", "yellow", "green", "blue", "purple", "black"]

for each_color in colors:
    angle = 360 / len(colors)
    tina.color(each_color)
    tina.circle(40)
    tina.right(angle)
    tina.forward(30)
```

想要自己编一个程序？你可以更改在for循环中Tina的活动看看在每一种颜色下她还可以做些什么。

## 多个乌龟

### “乌龟”就是“对象” 

Tina 是一只小乌龟turtle。但是什么是turtle呢？我们称之为“对象”object，也就是程序员写好的一些可以为你所用的现成的代码。 在Tina的例子中，她知道怎么前进（forward），后退（backward），向左转（left）和向右转（right）是因为写turtle的人已经将这些技能配置给了小乌龟。

在所有例子的最开始，我们都先import turtle也就是导入turtle这个对象。这样我们就可以调用这些已经写好的代码给Tina 和其他的乌龟配置技能了。

你可以Tina取一个别的名字，而且这个新命名都乌龟也会知道怎么去做Tina能够做的事。请在下面的例子中给Tina一个新名字吧：

```python
import turtle

tina = turtle.Turtle()
tina.shape('turtle')

tina.forward(100)
```

提示：你必须把所有的'Tina'都改成你要改的名字。否则，Python就会弄不清楚你的代码。

### Tina 和 Tommy 的颜色

我们不仅可以给乌龟们重新命名：我们还可以有更多的乌龟！让我给Tina带来一个叫Tommy的新朋友：

```python
import turtle

tina = turtle.Turtle()
tina.shape('turtle')
tina.color('black')

tina.left(90)
tina.forward(100)
tina.write("I'm Tina!")
tina.forward(20)
tina.right(90)

tommy = turtle.Turtle()
tommy.shape('turtle')
tommy.color('black')

tommy.right(90)
tommy.forward(100)
tommy.write("I'm Tommy!")
tommy.forward(20)
tommy.left(90)
```

Tina和Tommy都用黑色画画，你能不能通过更改代码tina.color('black') 和 tommy.color('black') 使他们可以使用不同都颜色？不知道换成什么？试试不那么常见的颜色吧，比如金黄色'goldenrod' 或者洋红色 'magenta'。别忘了加引号 (')！

