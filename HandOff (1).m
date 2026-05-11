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
        plot(translate(h, [x, y]), 'FaceColor', current_color, 'FaceAlpha', 0.8);
    end
end
pos = [4, 4]; current_bs = 1; 
dot_graphic = []; highlight_graphic = [];
for t = 1:15
    pos = pos + randn(1, 2) * 0.75; 
    pos = max([-1, -1], min([10, 10], pos)); 
    dot_graphic = plot(pos(1), pos(2), 'r.', 'MarkerSize', 20); 
    [~, idx] = min(vecnorm(centers - pos, 2, 2));               
    if idx ~= current_bs                                             
        current_bs = idx; 
        delete(highlight_graphic);                                
        highlight_graphic = plot(translate(h, centers(idx, :)), 'FaceColor', 'r');
        pause(0.2); 
    end
    drawnow;
end