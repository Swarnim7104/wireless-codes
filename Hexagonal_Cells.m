clc; close all; 
h = rotate(nsidedpoly(6, 'SideLength', 1), 30);
cols = ["y", "g", "b"];
figure; hold on; axis equal off;
for r = -3:8
    for c = -3:6
        x = c*sqrt(3) + mod(r,2)*sqrt(3)/2; 
        y = r*1.5;
        c_idx = mod(c - mod(r,2), 3) + 1; 
        current_color = cols(c_idx);
        if r == 0 && c == 0
            current_color = 'r'; 
        end
        plot(translate(h, [x, y]), 'FaceColor', current_color, 'FaceAlpha', 0.8);
    end
end
viscircles([0, 0], 3, 'Color', 'r', 'LineWidth', 2); 