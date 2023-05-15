function [success] = plot_1D(in, out)
    % Check the number of considered inputs
    
    nv = size(in.considered_inputs, 1);
    fixed_inputs = in.fixed_inputs;
    %z = out.ndgrid.z;
    y_gp = out.ndgrid.y_gp;
    s2 = out.ndgrid.s2;
    
    % Iterate over each considered input variable
    for i = 1:nv
        % Check if the current input is fixed or not
        %if ~isempty(fixed_inputs) %&& ~isnan(fixed_inputs(i))
            %disp('couc')

            %continue; % Skip this input variable if it is fixed
        %end

        % Extract the current input variable
        z = out.ndgrid.z(:, i);
        %y_gp = out.ndgrid.y_gp(:, i);
        %s2 = out.ndgrid.s2(:, i);

        % Generate the figure for the current input variable
        figure;

        % Plot the GP regression curve and confidence intervals
        f = [y_gp + 2 * sqrt(s2); flipdim(y_gp - 2 * sqrt(s2), 1)];
        fill([z; flipdim(z, 1)], f, [7 7 7] / 8);
        hold on;
        plot(z, y_gp);
        plot(in.x(:, i), in.y, '+');
        xlabel(in.considered_inputs{i});
        ylabel(in.considered_output);

        % Add any additional customizations or annotations if needed

        % Set the title for the plot based on the current input variable
        title(sprintf('GP Regression for %s', in.considered_inputs{i}));

        % Set the flag to indicate success
        success = true;
    end
end