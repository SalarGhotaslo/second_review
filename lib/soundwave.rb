def band_pass_filter(soundwave)
    if soundwave[0] < 40
        return [40]
        elsif soundwave[0] > 1000
        return [1000]
    else
        return soundwave
    end
end