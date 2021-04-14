syms wm id iq u1 mh s

f1=(1/J0)*(np*m*F0*iq/2-mh-Bv*wm);
f2=(1/Ls)*(u1*cos(teta0)+np*wm*Ls*iq-Rs*id);
f3=(1/Ls)*(u1*sin(teta0)-np*wm*Ls*id-Rs*iq);

a11=double(subs(diff(f1,wm),[wm id iq u1 mh],[wmn idn iqn u1n mhn]));
a12=double(subs(diff(f1,id),[wm id iq u1 mh],[wmn idn iqn u1n mhn]));
a13=double(subs(diff(f1,iq),[wm id iq u1 mh],[wmn idn iqn u1n mhn]));
b11=double(subs(diff(f1,u1),[wm id iq u1 mh],[wmn idn iqn u1n mhn]));
b12=double(subs(diff(f1,mh),[wm id iq u1 mh],[wmn idn iqn u1n mhn]));

a21=double(subs(diff(f2,wm),[wm id iq u1 mh],[wmn idn iqn u1n mhn]));
a22=double(subs(diff(f2,id),[wm id iq u1 mh],[wmn idn iqn u1n mhn]));
a23=double(subs(diff(f2,iq),[wm id iq u1 mh],[wmn idn iqn u1n mhn]));
b21=double(subs(diff(f2,u1),[wm id iq u1 mh],[wmn idn iqn u1n mhn]));
b22=double(subs(diff(f2,mh),[wm id iq u1 mh],[wmn idn iqn u1n mhn]));

a31=double(subs(diff(f3,wm),[wm id iq u1 mh],[wmn idn iqn u1n mhn]));
a32=double(subs(diff(f3,id),[wm id iq u1 mh],[wmn idn iqn u1n mhn]));
a33=double(subs(diff(f3,iq),[wm id iq u1 mh],[wmn idn iqn u1n mhn]));
b31=double(subs(diff(f3,u1),[wm id iq u1 mh],[wmn idn iqn u1n mhn]));
b32=double(subs(diff(f3,mh),[wm id iq u1 mh],[wmn idn iqn u1n mhn]));

 A=[a11 a12 a13; a21 a22 a23; a31 a32 a33];
 B=[b11 b12; b21 b22; b31 b32];
 C=[1 0 0];
 D=[0 0];