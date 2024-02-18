%Nombre: Diego González Atziri Daniela
%Código de estudiante: 222834444
function dx=RLC(t,x) %-dx es el nombre del retorno
%-Definición de parámetros
R=100;
L=0.004;
C=0.1e-6;
V=6*(1+square(2*pi*(1/2e-3)*t,50));
%-Crear vector
dx=zeros(2,1);
Q = x(1); % Carga del capacitor
I = x(2); % Corriente
%-Definición de la dinámica/espacio de estados
dx(1)=I;
dx(2)=(1/(L*C))*(V-R*I*C-Q);

