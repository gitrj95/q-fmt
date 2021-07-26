\d .fmt
S:"^";H:"(";T:")";D:";"

mt:(0#0h)!()
mt[-10 10h]:(::)
mt[-1h]:{("false";"true")x};mt[1h]:" "/:mt[-1h]'
mt[-4h]:-2#$:;mt[4h]:" "/:$:
mt[-11 -9 -8 -7 -6 -5 -2h]:*$:;mt[2 5 6 7 8 9 11h]:" "/:$:
mt[-12h]:{(mt[-14h]"d"$x)," ",(:/"D"\:$x)};mt[12h]:","/:mt[-12h]'
mt[-13h]:{($``jan`feb`mar`apr`may`jun`jul`aug`sep`oct`nov`dec `mm$x)," ",$`year$x};mt[13h]:","/:mt[-13h]'
mt[-14h]:{($``jan`feb`mar`apr`may`jun`jul`aug`sep`oct`nov`dec `mm$x)," ",($`dd$x)," ",$`year$x};mt[14h]:","/:mt[-14h]'
mt[-16h]:{{x," day",$[x~,"1";"";"s"]," ",y}."D"\:$x};mt[16h]:","/:mt[-16h]'
mt[-19 -18 -17h]:$:;mt[17 18 19h]:" "/:$:
mt[98h]:{(-2_{x,y,":",wt[z],", "}/["[";$!+x;.+x]),"]"}
mt[99h]:{$[98 98h~@:'(!x;. x);[f:mt 98h;"{",(f@!x),":",f[. x],"}"];(-2_{x,wt[y],":",wt[z],", "}/["{";!x;. x]),"}"]}
mt[100 101 102 103 104 105 106 107 108 109 110 111h]:$:

s:{$[(#mt)=ix:(!mt)?x;'`nyi;(. mt)[ix]y]};wt:{$[@x;s .$[(@x)within 20 76h;(@. x;. x);(@x;x)];H,((-#D)_,/.z.s'[x],\:D),T]}
f:{rp:-:(#S)*1+!-1+#y;{sp:(0,y)_x;sp[0],z,(#S)_sp 1}/[x;y[0],rp+(1_y)+-1_+\#:'z;z]};g:{f[x;y;wt'1_z]}

sexp:{if[~10=@xH:(),*x;'`type];xS:xH ss S;if[~(#xS)=-1+#x;'`length];g[xH;xS;x]}
mexp:('[{if[~10=@xH:(),*x;'`type];a:(#xS:xH ss S)#";";f0:."enlist[",a,"]";'[g[xH;xS];f0]. x};enlist])
