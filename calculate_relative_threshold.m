function some_threshold = calculate_relative_threshold(image, coefficient)
    % Oblicz średnią długość obrazu
    avg_length = (size(image, 1) + size(image, 2)) / 2;
    
    % Wylicz względny threshold
    some_threshold = coefficient * avg_length;
end