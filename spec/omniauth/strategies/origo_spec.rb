require 'spec_helper'

describe OmniAuth::Strategies::Origo do

  before do
    OmniAuth.config.test_mode = true
  end

  after do
    OmniAuth.config.test_mode = false
  end

  subject do
    OmniAuth::Strategies::Origo.new(nil, @options || {})
  end

  it_should_behave_like 'an oauth2 strategy'

  describe '#client' do
    it 'has correct site URL' do
      expect(subject.client.site).to eq('https://secure.origo.no')
    end

    it 'has correct authorize URL' do
      expect(subject.client.authorize_url).to eq('https://secure.origo.no/-/oauth/authorize')
    end

    it 'has correct token URL' do
      expect(subject.client.token_url).to eq('https://secure.origo.no/-/oauth/token')
    end
  end

  describe '#callback_path' do
    it "has the correct callback path" do
      expect(subject.callback_path).to eq('/auth/origo/callback')
    end
  end

end
