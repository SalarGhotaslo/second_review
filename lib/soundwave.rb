def band_pass_filter(soundwave,lower_threshold = 40, upper_threshold = 1000)
    new_soundwave = []
    soundwave.each do |freq|
    if freq < lower_threshold
        new_soundwave << lower_threshold
        elsif freq > upper_threshold
        new_soundwave << upper_threshold
        else
        new_soundwave << freq
        end
    end
    return new_soundwave
end