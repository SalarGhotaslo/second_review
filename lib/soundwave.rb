def band_pass_filter(soundwave)
    if soundwave[0] < 40
        return [40]
    else
        return soundwave
    end
end