require 'soundwave'

describe 'soundwave' do
    context 'If there is no band pass filter arguments' do
        it 'should return with the soundwave' do
            expect(band_pass_filter([50])).to eq([50])
        end
    end
    context 'If the frequency in the soundwave is below the lower threshold' do
        it 'should replace the frequency with the lower threshold value' do
            expect(band_pass_filter([30])).to eq([40])
        end
    end
    context 'If the frequency in the soundwave is above the upper threshold' do
        it 'should replace the frequency with the upper threshold value' do
            expect(band_pass_filter([1050])).to eq([1000])
        end
    end
    context 'If there are multiple frequencies within the soundwave' do
        it 'should make all the frequencies in the soundwave meet the criteria of the thresholds' do
        expect(band_pass_filter([30,50,900,1050])).to eq([40,50,900,1000])
        end
    end
    context 'If we are given a different band pass filter threshold, changing the lower limit' do
        it 'use the lower threshold value assigned' do
            expect(band_pass_filter([20,50,1050],30,1000)).to eq([30,50,1000])
        end
    end
    context 'If we are given a different band pass filter threshold, changing the upper limit' do
        it 'use the upper threshold value assigned' do
            expect(band_pass_filter([20,50,1050],40,900)).to eq([40,50,900])
        end
    end
end