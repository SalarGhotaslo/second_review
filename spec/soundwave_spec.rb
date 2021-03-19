require 'soundwave'

describe 'soundwave' do
    context 'If there is no band pass filterarguments' do
        it 'should return with the soundwave' do
            expect(band_pass_filter([50])).to eq([50])
        end
    end
    context 'If the frequency in the soundwave is below the lower threshold' do
        it 'should replace the frequency with the lower threshold value' do
            expect(band_pass_filter([30])).to eq([40])
        end
    end
end