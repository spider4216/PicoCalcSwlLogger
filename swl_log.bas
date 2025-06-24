Dim filename$

Dim radio$(1)
radio$(0)="Retekess TR110"

Dim langs$(4)
langs$(0)="English"
langs$(1)="Russian"
langs$(2)="Chinese"
langs$(3)="Mandarian"

Dim ant$(1)
ant$(0)="Telescopic"

Dim st$
Dim d$
Dim t$
Dim mgz$
Dim sinpo$
Dim cmt$
Dim place$
Dim cord$
Dim cradio$
Dim clang$
Dim cant$

Input "Date: ", d$
Input "Time: ", t$

choose("radio",radio$())
Input "Type num: ",cradio$
choose("antena",ant$())
Input "Type num: ",cant$
choose("language",langs$())
Input "Type num: ",clang$

Input "Mgz: ", mgz$
Input "Station: ", st$
Input "SINPO: ", sinpo$
Input "Comment: ", cmt$
Input "Place: ", place$
Input "Cordinates: ", cord$

Sub choose(val$,items$())
  Print "Choose "+val$
  limit=Bound(items$())-1

  For i=0 To limit
    Print Str$(i)+": "+items$(i)
  Next i
End Sub

uniq$=Str$(Int(Rnd*10000))
filename$=d$+"-"+uniq$+"-swl.txt"

rs$=radio$(Int(Val(cradio$)))
antv$=ant$(Val(cant$))
lv$=langs$(Val(clang$))

Open filename$ For output As #1

Print #1, "Date: "+d$
Print #1, "Time: "+t$
Print #1, "Radio: "+rs$
Print #1, "Antena: "+antv$
Print #1, "Mhz: "+mgz$
Print #1, "Station: "+st$
Print #1, "Lang: "+lv$
Print #1, "SINPO: "+sinpo$
Print #1, "Notes: "+cmt$
Print #1, "Place: "+place$
Print #1, "Polygons: "+cord$

Close #1
