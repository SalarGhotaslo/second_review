require 'soundwave'

describe 'soundwave' do
    context 'If there is no band pass filterarguments' do
        it 'should return with the soundwave' do
            expect(band_pass_filter([50])).to eq([50])
        end
    end
end