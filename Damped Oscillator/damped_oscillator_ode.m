function dydt = damped_oscillator_ode(t, y, m, b, k)
    x = y(1);
    v = y(2);

    % Equation of motion for a damped oscillator
    acceleration = ((-b * v) - k * x) / m;

    dydt = [v; acceleration];
end
