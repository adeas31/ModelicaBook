within ModelicaByExample.DiscreteBehavior.CoolingRevisited;
model NewtonCoolingIfExpression "Cooling example with if expression"
  type Temperature=Real(unit="K", min=0);
  type ConvectionCoefficient=Real(unit="W/K", min=0);
  type Mass=Real(unit="kg", min=0);
  type SpecificHeat=Real(unit="J/(K.kg)", min=0);

  parameter ConvectionCoefficient h=0.7 "Convective cooling coefficient";
  parameter Real m=0.1 "Mass of thermal capacitance";
  parameter Real c_p=1.2 "Specific heat";

  Temperature T_inf "Ambient temperature";
  Temperature T "Temperature";
initial equation
  der(T) = 0 "Steady state initial conditions";
equation
  T_inf = 298.15 - (if time<0.5 then 0 else 20*(time-0.5));
  m*c_p*der(T) = h*(T_inf-T) "Newton's Law of Cooling";
end NewtonCoolingIfExpression;
