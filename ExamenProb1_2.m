function [t,x] = solmariposa()
    tspan = [0; 100];
    x0 = [0; -1; -1];
    [t,x] = ode45(@Mariposa, tspan, x0);
    plot3(x(:,1),x(:,2),x(:,3))
    xlabel 'Mariposa'
end
