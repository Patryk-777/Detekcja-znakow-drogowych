function display_detected_regions(image, detected_regions)
    % Wyświetlenie obrazu
    figure();
    imshow(image);
    hold on;
    
    % Wyświetlenie prostokątów dla każdej wykrytej plamy
    for i = 1:length(detected_regions)
        min_row = detected_regions(i).min_row;
        max_row = detected_regions(i).max_row;
        min_col = detected_regions(i).min_col;
        max_col = detected_regions(i).max_col;
        
        width = max_col - min_col + 1;
        height = max_row - min_row + 1;
        
        rectangle('Position', [min_col, min_row, width, height], 'EdgeColor', 'r', 'LineWidth', 2);
    end
    
    hold off;
end
