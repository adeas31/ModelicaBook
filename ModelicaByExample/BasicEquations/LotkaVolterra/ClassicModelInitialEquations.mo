within ModelicaByExample.BasicEquations.LotkaVolterra;
model ClassicModelInitialEquations "This is the typical equation-oriented model"
  parameter Real alpha=0.1;
  parameter Real beta=0.02;
  parameter Real gamma=0.4;
  parameter Real delta=0.02;
  parameter Real x0=10 "Initial prey population";
  parameter Real y0=10 "Initial predator population";
  Real x(start=x0);
  Real y(start=y0);
initial equation
  x = x0;
  y = y0;
equation
  der(x) = x*(alpha-beta*y);
  der(y) = y*(delta*x-gamma);
end ClassicModelInitialEquations;
