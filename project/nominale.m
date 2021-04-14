
nn=3000;
wmn=nn*pi/30;
mhn=0.3;
format long
%resavanje
opcije=optimset('Display','iter','TolFun',1e-10);
Odgovor=fsolve(@(var) nominalne_vrednosti(wmn,mhn,var),[5; 5; 5],opcije);
u1n=Odgovor(1)
idn=Odgovor(2)
iqn=Odgovor(3)
U1n=u1n;
