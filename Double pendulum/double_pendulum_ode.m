function dydt = double_pendulum_ode(t, y, L1, L2, m1, m2, g)
    % Extracting state variables
    theta1 = y(1);
    theta2 = y(2);
    omega1 = y(3);
    omega2 = y(4);

    % Equations of motion for the double pendulum
    AngularAcceleration1 = (-g * (2 * m1 + m2) * sin(theta1) - m2 * g * sin(theta1 - 2 * theta2) - 2 * sin(theta1 - theta2) * m2 * (omega2^2 * L2 + omega1^2 * L1 * cos(theta1 - theta2))) / (L1 * (2 * m1 + m2 - m2 * cos(2 * theta1 - 2 * theta2)));

    AngularAcceleration2 = (2 * sin(theta1 - theta2) * (omega1^2 * L1 * (m1 + m2) + g * (m1 + m2) * cos(theta1) + omega2^2 * L2 * m2 * cos(theta1 - theta2))) / (L2 * (2 * m1 + m2 - m2 * cos(2 * theta1 - 2 * theta2)));+
    
     % Return the derivatives as a column vector
    dydt = [omega1; omega2;  AngularAcceleration1;  AngularAcceleration2];
end


