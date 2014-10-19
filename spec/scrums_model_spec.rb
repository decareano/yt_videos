# spec/model/your_model_spec.rb
# spec/model/your_model_spec.rb
require 'spec_helper'
describe Game do
     it &quot;gets a response from an api&quot; do
       VCR.use_cassette 'model/api_response' do
          response = call_api(api_url)
          response.first.should == &quot;hello world&quot;
       end
     end
  end
end

describe Scrum do

  query = {cassette_name: 'scrums_controller/videos_by_query'}
  describe '#videos_by', vcr: query do
    subject { Scrum.videos_by(:query => "agile ventures scrums", :max_results => 20) }