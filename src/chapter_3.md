## [python编程一小时](https://hourofpython.trinket.io/ke3-shi4-hua4-python-jian3-jie4#/wu1-gui1/ren4-shi2-jimmy)

### 画图乌龟

#### 认识Tina

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
  - 记得在颜色名称上加引号("")
  - 记得在列表中每两个相邻的色彩名称之间加逗号(,)
  - 记得在列表的开始和结束加上方括号([ ])

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

##  if-else 语句

### 讲逻辑的乌龟

小乌龟们是非常讲逻辑的，他们可以根据我们的指令改变任务。

运行下面这个程序并回答问题，Tina会告诉你你的答案是否正确。

```
import turtle

tina = turtle.Turtle()

Guess = int(input("What is 2 X 7?"))

if Guess == 2*7:
    tina.write(str(Guess) + ' is correct!')
    tina.penup()
    tina.backward(10)
else:
    tina.write('You said ' + str(Guess) + '. I got ' + str(2*7))
    tina.penup()
    tina.backward(10)
```

你还能让Tina问些什么？试试改变数学题的数字。


### Tina 询问年龄

小乌龟们可以判断两个数字大小。下面我们来写一个询问年龄的程序：
```
import turtle
tina = turtle.Turtle()
tina.shape('turtle')
tina.penup()

try:
    age = int(input("How old are you? (Use numbers)"))
    if age >= 10 and age <= 15:
        tina.write("You're between 10 and 15 years old")
        tina.backward(20)
    elif age < 10:
        tina.write("You're less than 10 years old")
        tina.backward(20)
    elif age > 15:
        tina.write("You're over 15 years old")
        tina.backward(20)
except:
    tina.backward(100)
    tina.write("I don't think I understand that age.  Are you using numbers?")
    tina.backward(20)
```

高级：上面的例子中有一个”尝试“（try:）和一个“除了”（except:）。这些命令行将会试着运行try:后面的代码，如果出错的话，就运行except:中的部分。这就Tina判断你的答案是否正确（比如15）的过程。这也是真正的程序员怎么根据可能出现的错误来更改程序。

### 高还是低？

Tina可以向我们提问，我们也可以让她自己问自己。在这个例子中，我们让她去屏幕上的一个高点和一个低点，她的回答就会根据她所在的高度而改变。

```
import turtle
tina=turtle.Turtle()
tina.shape('turle')
tina.penup()

try:
    how_high = int(input("How high should Tina go? (Use numbers between 200 and -200)"))
    tina.goto(0, how_high)
    height = tina.pos()[1]

    if height > 150 and height <= 200:
        tina.write("This is very high!")
    elif height > 100 and height <= 150:
        tina.write("This is high!")
    elif height > 0 and height <= 100:
        tina.write("This is high but not too high!")
    elif height > -100 and height <= 0:
        tina.write("This is low but not too low!")
    elif height > -150 and height <= -100:
        tina.write("This is low!")
    elif height >= -200 and height <= -150:
        tina.write("This is very low!")
    else:
        raise
except:
    tina.backward(100)
    tina.write("Hey, that's not a number between 200 and -200!")    
    tina.backward(20)
```

调整这个程序，你可以从以下几个方面考虑：
  - 试着改变在不同的高度Tina所说的话
  - 试着改变高度
  - 除此之外你还可以试着改变在不同的高度Tina所做的动作。现在她只是写出了一句话，除此之外她还能做些什么？

#### 更多细节

想知道更多关于if, elif, 和else是如何使用的？在第9行（ Line 9），tina.pos()[1] 询问了Tina她所在的网格有多高。elif 是"else if"的缩写。关于高度的验证会一致进行直到答案值为真（true）。如果没有一次的验证结果为真，程序就会移动到else下面到缩进行（indented lines）。在Python中，else的意思是“如果所有的其他的验证都失败，则运行这个”。else模块中的raise表示出现了一个错误，意思是转至except模块。这就是为什么在－200到200的范围内，无论你输入什么数字这个程序可以做出不同的回应。

如果在你编程的第一个小时内不能完全理解这些内容也不用担心，像if, elif, else, raise, 和 except这样的工具，随着编程练习的增多，你会和别的程序员一样越用越上手。

## 函数

### 函数就是菜谱！ 

通过“函数”我们可以让程序记住我们写好的代码并重复使用，就像菜谱一样。

我们可以用函数教Tina做更多事情。我们通过输入def来定义一个新的函数，然后输入函数名，一对括号(())最后加上冒号 (:)。下面就是一个叫做first_function的新函数：

`def first_function():`

定义一个函数之后，我们可以通过另起一行并且“缩进”（indenting）在函数内写代码。“缩进”（indenting）就是在行首空四格：

```
def first_function():
    print "This line is indented 4 spaces!"
```

定义一个函数之后，我们可以通过输入函数名和一对括号（()）调用（call ）这个函数。就像下面这样：

`first_function()`

当我们调用一个函数的时候，这个函数内包含的所有命令都会被执行。

在下面的例子中，已经为你定义好了一个函数叫做triangle()，并且已经调用里一次。你可以调用它一次或者更多次看看它有何表现。

```
import turtle
tina=turtle.Turtle()
tina.shape('turtle')
tina.color('purple')

def triangle():
    tina.left(60)
    tina.forward(30)
    tina.left(120)
    tina.forward(30)
    tina.left(120)
    tina.forward(30)

triangle()
```

你可以这样更改这个程序：
  - 改变triangle() 函数，然后Tina就会按照新的命令执行
  - 试着写出并调用你自己的函数

### 做 5 个蛋糕 

使用函数最大的优点之一就是它可以自动重复执行复杂的命令而不用我们再反复输入代码。

之前我们说过“函数就像菜谱”。在这个练习中，我们教了Tina “蛋糕菜谱”而且她已经画了三个蛋糕。请在这个程序的下面，通过调用函数，给出不同位置的x和y ，让她画出更多的蛋糕。

那她应该画多少蛋糕？

```
import turtle
tina=turtle.Turtle()
tina.shape('turtle')

def make_cake(x=0, y=0):
    tina.penup()
    tina.color('pink')
    tina.goto(x, y)
    tina.pendown()
    tina.begin_fill()
    tina.goto(x + 20, y)
    tina.goto(x + 20, y + 20)
    tina.goto(x - 20, y + 20)
    tina.goto(x - 20, y)
    tina.goto(x, y)  
    tina.end_fill()
    tina.goto(x, y + 20)
    tina.color('yellow')
    tina.goto(x, y + 35)
    tina.goto(x, y + 30)
    tina.color('black')
    tina.goto(x, y + 20)
    tina.penup()
    tina.goto(x, y + 10)

make_cake(0,0)
make_cake(-100,0)
make_cake(100,0)
```

提示：make_cake()函数中第一个数字代表Tina在开始画画之前应该向左还是向右多远而第二个是多高或多低。


### 说 “Hello！” 

虽然函数就是菜谱，但是我们还可以给它们加入一种特殊的输入叫做“参数”parameters。参数parameters可以使得这些函数每次运行起来有所不同。实际上，我们已经在之前已经应用过了。

在之前的例子中，Tina可以做蛋糕，我们用x 和 y 坐标来表示在哪里做蛋糕。我们就是像这样告诉她在x,y坐标 0,100处做蛋糕的。

`make_cake(0,100)`

我们输入的x 和 y 就是“参数” parameters。我们可以通过在定义函数时在函数名后面的括号中包含参数，使这个函数成为有参数的函数。

```
def my_function(parameter):
    print(parameter)

my_function("Hello!")
my_function("Bonjour!")
```

上面的例子中，我们调用了函数my_function 两次，一次用了"Hello!"作为参数，另一次用了参数"Bonjour!"。函数做的是同一件事情，就是打印参数，但是我们需要告诉它打印的内容。

不错，这就意味着我们可以写一个函数，然后然后这个函数告诉Tina怎么打印不同的东西。

你能不能更改下面的例子，用不同的参数 parameter调用函数 say() ？

```
import turtle
tina = turtle.Turtle()
tina.shape('turtle')

tina.penup()
tina.goto(-60,175)

def say(something):
    x, y = tina.pos()
    tina.write("You told me to say this:")
    tina.goto(x + 10, y -10)
    tina.write(something)
    tina.goto(x, y - 25)

say("Hi there!")
say("Hi there!")
say("Hi there!")
say("Hi there!")
say("Hi there!")
say("Hi there!")
say("Hi there!")
```

提示：
  - Tina要说出的内容必须用引号(") 引用才能够读出
  - 只需要用say("你要说的话")写出更多的命令行，你就可以让Tina说更多的内容

##  总结一下！ 

### 选取一个开放性练习 

我们在一段很短的时间里已经学到了相当多的技能！

接下来是一个开放式的练习，完成这个练习并将它分享给你的朋友，老师和父母吧！

你可以从下面两个练习中选择一个。


### 1. Tina 和 Tommy 的画 

让我们和Tina还有Tommy一起画画吧！

请记得，因为他们俩都是turtle对象，所有我们可以让他们前进forward和后退backward，让他们向左转left和向右转 right。去到goto一个指定的点，改变他们的颜色color，以及让他们在屏幕上写 write出单词。在他们名字后面增加一个带有数值的命令，就告诉Tina和Tommy做些什么了。

```
tina.forward(100)

tommy.goto(50,50)
```

goto用来画图是极方便的。

这里有一个Tina和Tommy的小程序，等待你的命令。增加命令并运行看看他们是执行了什么活动。一直画下去知道得到你想要都图。在你画完都时候，把你的成果分享给你的老师或朋友们吧！

```
import turtle

tina = turtle.Turtle()
tommy = turtle.Turtle()

tina.color('blue')
tommy.color('green')

tina.shape('turtle')
tommy.shape('turtle')

tina.begin_fill()
tina.goto(200,0)
tina.goto(200,-200)
tina.goto(-200,-200)
tina.goto(-200,0)
tina.goto(0,0)
tina.end_fill()

tommy.penup()
tommy.goto(-70,100)
tommy.write("Tina, let's Make a picture together!")
tommy.goto(0,50)
tommy.pendown()

tina.penup()
tina.color('white')
tina.goto(-40,-100)
tina.write("Alright, I'm ready!!")
tina.goto(0,-130)
tina.pendown()
```

如果你运行出错，检查并确保你的括号()，和引号'都在正确都位置。如果你想重新来过，可以在例子左边都菜单中点击重置（Reset）。

### 2. 写一首诗

因为Tina知道怎么在屏幕上打字，你可以教她写一首诗。 这个例子提供了一个可以用来写诗的line()函数和一个可以注明自己是作者的by()函数。

```
import turtle
tina = turtle.Turtle()
tina.shape('turtle')
tina.penup()

def line(words, horiz_pos = -50):
    x,y = tina.pos()
    tina.goto(max(horiz_pos, -190), y)
    tina.write(words)
    x,y = tina.pos()
    tina.goto(x, y - 25)

def by(author):
    x,y = tina.pos()
    tina.goto(x + 70, max( -190, y -30))
    tina.write(author)
    x,y = tina.pos()
    tina.goto(0, y)

tina.goto(-50, 190)
line("Snow in my shoe")
line("Abandoned")
line("Sparrow's nest")
by("Jack Kerouac")
```

坚持写写到你满意为止！

提示：
  - 你可以从替换现有程序中的 line()函数的调用开始
  - 如果你的诗需要超过3行，增加新的line() 函数以调用新的行
  - 如果你想要空一行，使用空字符串： " "
  - 如果因为句子太长，你想让每行从最左边开始，增加一个逗号(,) ，然后给一个大于－200的负值：
    `line("This line will be far to the left", -190)`

#### 名诗鉴赏

想不出来怎么写诗？ 试试从这些经典诗作中选择几行。不用重新打字输入，你可以复制和粘贴这些诗行：
```
相信未来

郭路生

当蜘蛛网无情地查封了我的炉台，
当灰烬的余烟叹息着贫困的悲哀，
我依然固执地铺平失望的灰烬，
用美丽的雪花写下：相信未来。

当我的紫葡萄化为深秋的露水，
当我的鲜花依偎在别人的情怀，
我依然固执地用凝霜的枯藤，
在凄凉的大地上写下：相信未来。

我要用手指那涌向天边的排浪，
我要用手掌那托起太阳的大海，
摇曳着曙光那支温暖漂亮的笔杆，
用孩子的笔体写下：相信未来。

我之所以坚定地相信未来，
是我相信未来人们的眼睛——
她有拨开历史风尘的睫毛，
她有看透岁月篇章的瞳孔。

```

##  你做到了！ 

我们在很短的时间已经学习了这么多！

我们是从一个类似于下面的例子中开始学习的，请回顾一下你都学到了什么？

如果你能和你的小伙伴们一起，写代码会变得更有趣！

---

本课程的上线要特别感谢下面这些人的建议，测试和其他贡献：

    Dr. Jerry Martin
    Dorai Thodla
    Mark Ahrens
    Karen Kaun
    Frolian Irizarry
    Kevin Shockey
    Baker Franke
    Aleksandar Pavlov
    Allan Anderson
    Ramya Vellingiri

Extra, extra thanks go out to Jinzhe Liang for translating this lesson to Mandarin and to Boyang Hu for proofreading and suggesting edits. We would not have been able to provide this lesson without their effort!
