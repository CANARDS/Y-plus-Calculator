%Y+ Calculator%
prompt0 = 'Enter the density of the fluid (in kg/m^3):';
p = input(prompt0);
prompt1 = 'Enter the dynamic viscosity of the fluid (in kg/(m.s)):';
u = input(prompt1);
prompt2 = 'Enter the free stream velocity of the fluid (in m/s):';
v = input(prompt2);
prompt3 = 'Enter the reference length or diameter (in m):';
l = input(prompt3);
Re = p*v*l/u;
prompt4 = 'Enter "a" for external flows and "b" for internal (pipe/duct) flows:';
FT = input(prompt4,'s');
var Cf;
for rnd = 1:100
if FT=='a' || FT=='A'
    Cf = (2*log10(Re)-0.65)^(-2.3); %Schlichting (1979)
    break;
elseif FT=='b' || FT=='B'
        Cf = 2*((8/Re)^12 + ((2.457*log((Re/7)^0.9))^16 + (37530/Re)^16)^(-1.5))^(1/12); %Churchill (1977)
    break;
else
    FT = input('Please enter the correct value "a" or "b":','s');
end
end
T = 0.5*Cf*p*v^2;
Uf = (T/p)^0.5;
prompt5 = 'Enter the desired value for Y+ (Y+ =30-300 for k-epsilon model with wall functions, Y+ <=1 for k-omega):';
Yp = input(prompt5);
format long;
ds = Yp*u/(Uf*p);
disp('Reynolds Number of the flow is:'); disp(Re);
disp('First cell height (for CFX use) is:'); disp(ds);
ds = 2*ds;
disp('First cell height (for Fluent use) is:'); disp(ds);