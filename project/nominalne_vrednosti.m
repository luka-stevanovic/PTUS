function y = nominalne_vrednosti(wmn,mhn,var)
% var je vektor varijabli, u ovom slucaju var(1)=U var(2)=id var(3)=iq

load('Podaci');

y=[
    Bv*wmn-(np*(m/2)*(F0*var(3)))+mhn;
    (var(1)*cos(teta0)+np*wmn*Ls*var(3))/Rs-var(2);
    (var(1)*sin(teta0)-np*wmn*Ls*var(2))/Rs-var(3) 
];
end