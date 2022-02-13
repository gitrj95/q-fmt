\d .fmt
S:"^";H:"(";T:")";D:";"

MT:(0#0h)!()
MT[-10 10h]:(::)
MT[-1h]:{("false";"true")x};MT[1h]:" "/:MT[-1h]'
MT[-4h]:-2#$:;MT[4h]:" "/:$:
MT[-11 -9 -8 -7 -6 -5 -2h]:$:;MT[2 5 6 7 8 9 11h]:" "/:$:
MT[-12h]:{(MT[-14h]"d"$x)," ",(:/"D"\:$x)};MT[12h]:","/:MT[-12h]'
MT[-13h]:{($``jan`feb`mar`apr`may`jun`jul`aug`sep`oct`nov`dec `mm$x)," ",$`year$x};MT[13h]:","/:MT[-13h]'
MT[-14h]:{($``jan`feb`mar`apr`may`jun`jul`aug`sep`oct`nov`dec `mm$x)," ",($`dd$x)," ",$`year$x};MT[14h]:","/:MT[-14h]'
MT[-16h]:{{x," day",$[x~,"1";"";"s"]," ",y}."D"\:$x};MT[16h]:","/:MT[-16h]'
MT[-19 -18 -17h]:$:;MT[17 18 19h]:" "/:$:
MT[98h]:{(-2_{x,y,":",wt[z],", "}/["[";$!+x;.+x]),"]"}
MT[99h]:{$[98 98h~@:'(!x;. x);[f:MT 98h;"{",(f@!x),":",f[. x],"}"];(-2_{x,wt[y],":",wt[z],", "}/["{";!x;. x]),"}"]}
MT[100 101 102 103 104 105 106 107 108 109 110 111h]:$:

s:{$[(#MT)=ix:(!MT)?x;'`nyi;(. MT)[ix]y]};wt:{$[@x;s .$[(@x)within 20 76h;(@. x;. x);(@x;x)];H,((-#D)_,/.z.s'[x],\:D),T]}
f:{m:&/#:'(y;z);$[m;f1[x;m#y;wt'm#z];x]};f1:{$[y 0;y[0]#x;()],/{x,(#S)_y}'[z;y_x]}

sexp:{if[~10=@h:*x,:();'`type];f[h;h ss S;x_:0]}
mexp:{if[~10=@h:*x,:();'`type];fs:f[h;h ss S;x_:0];$[d:#ix:fs ss S;f[fs;ix]$[d-:1;."enlist[",(d#";"),"]";enlist]::;fs]}enlist::
