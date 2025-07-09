Dim filename$

Dim radio$(1)
radio$(0)="Retekess TR110"

Dim ant$(2)
ant$(0)="Telescopic"
ant$(1)="TECSUN AN-03L"

Dim cradio$
Dim cant$
Dim wtags$(20)
wtags$(0)="clear"
wtags$(1)="mostly_clear"
wtags$(2)="partly_cloudy"
wtags$(3)="mostly_cloudy"
wtags$(4)="overcast"
wtags$(5)="dark overcast"
wtags$(6)="fog"
wtags$(7)="haze"
wtags$(8)="drizzle"
wtags$(9)="rain"
wtags$(10)="rain_heavy"
wtags$(11)="wet_ground"
wtags$(12)="thunderstorm"
wtags$(13)="windy"
wtags$(14)="breezy"
wtags$(15)="calm"
wtags$(16)="hot"
wtags$(17)="warm"
wtags$(18)="cool"
wtags$(19)="cold"

Input "Date: ", d$
Input "Time: ", t$

Input "Degree: ", deg$
choose("Weather tag", wtags$())
Input "Type num: ",wtag$

choose("radio",radio$())
Input "Type num: ",cradio$
choose("antena",ant$())
Input "Type num: ",cant$
Input "Mgz: ",mgz$
Input "Station: ",st$
Input "Country: ",ctr$
Input "Language: ",lang$
Input "Transmitter: ",tr$

Print "S-Signal Strength"
Print "I-Interference"
Print "(another stations)"
Print "N-Noice"
Print "P-Propagation"
Print "(faiding)"
Print "O-Overall"

Input "SINPO: ", sinpo$

Input "Comment: ",cmt$
Input "Place: ",place$
Input "Cordinates: ",cord$
Input "Duration: ",dur$

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
weather$=wtags$(Int(Val(wtag$)))

Open filename$ For output As #1

Print #1, "Date: "+d$
Print #1, "Time: "+t$
Print #1, "Weather tag: "+wtag$
Print #1, "Degree: "+deg$
Print #1, "Radio: "+rs$
Print #1, "Antena: "+antv$
Print #1, "Khz: "+mgz$
Print #1, "Station: "+st$
Print #1, "Country station: "+ctr$
Print #1, "Lang: "+lang$
Print #1, "Transmitter: "+tr$
Print #1, "SINPO: "+sinpo$
Print #1, "Notes: "+cmt$
Print #1, "Place: "+place$
Print #1, "Polygons: "+cord$
Print #1, "Duration: "+dur$

Close #1
