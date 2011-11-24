require 'spec_helper'

describe OmniAuth::Strategies::Origo do
  subject do
    OmniAuth::Strategies::Origo.new(nil, @options || {})
  end

  it_should_behave_like 'an oauth2 strategy'

  describe '#client' do
    it 'has correct site URL' do
      subject.client.site.should == 'http://secure.origo.no'
    end

    it 'has correct authorize URL' do
      subject.client.authorize_url.should == 'http://secure.origo.no/-/oauth/authorize'
    end

    it 'has correct token URL' do
      subject.client.token_url.should == 'http://secure.origo.no/-/oauth/token'
    end 
  end

  describe '#callback_path' do
    it "has the correct callback path" do
      subject.callback_path.should eq('/auth/origo/callback')
    end
  end

  describe '#raw_data' do
    it "connects to user info endpoint, but is forbidden without a proper auth" do
      response = Net::HTTP.get_response URI.parse(OmniAuth::Strategies::Origo::USERINFO_ENDPOINT)
      response.body.should == "forbidden"
    end
  end

end
