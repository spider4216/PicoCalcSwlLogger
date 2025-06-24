Drive "b:"

f$=Dir$("*.txt", FILE)

count=0
Do While f$<>""
  count=count+1
  f$=Dir$()
Loop

Dim item$(count+1)

Print "Total in log: "+Str$(count)
Print ""

f$=Dir$("*.txt", FILE)

i=0
Do While f$<>""
  Print Str$(i)+": "+f$
  item$(i)=f$
  f$=Dir$()
  i=i+1
Loop

Print ""
Input "Open file by num: ", v$

CLS

Print ""

op=Int(Val(v$))

Open item$(op) For input As #1

Do While Not Eof(#1)
  Line Input #1, row$
  Print "-----------------------------"
  Print row$
Loop

Close #1

Print ""
