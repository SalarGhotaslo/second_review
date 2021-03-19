def band_pass_filter(soundwave)
    new_soundwave = []
    soundwave.each do |freq|
    if freq < 40
        new_soundwave << 40
        elsif freq > 1000
        new_soundwave << 1000
        else
        new_soundwave << freq
        end
    end
    return new_soundwave
end