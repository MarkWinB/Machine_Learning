function dydt = lorenz_ode(~, y, sigma, beta, rho)

    % Extracting state variables
    x = y(1);
    y_var = y(2);
    z = y(3);

    % Lorenz system equations
    dxdt = sigma * (y(2) - y(1));
    dydt = y(1) * (rho - y(3)) - y(2);
    dzdt = y(1) * y(2) - beta * y(3);

    % Returning the derivatives as a column vector
    dydt = [dxdt; dydt; dzdt];
end