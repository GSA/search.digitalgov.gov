require 'yaml'

RSpec.describe "hints file" do
  let(:filename) { File.absolute_path('_data/hints.yml') }

  it 'contains valid YAML' do
    expect(YAML.load_file(filename)).not_to be_empty
  end
end
