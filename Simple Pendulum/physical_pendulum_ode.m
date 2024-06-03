function dydt = physical_pendulum_ode(t, y, m, d, I, g)
    theta = y(1);
    omega = y(2);

    AngularAcceleration = -(m * g * d / I) * sin(theta);

    dydt = [omega; AngularAcceleration];
end
