require 'spec_helper'

describe "datos/index" do
  before(:each) do
    assign(:datos, [
      stub_model(Dato,
        :genero => "Genero",
        :estatura => 1,
        :unidades => "Unidades"
      ),
      stub_model(Dato,
        :genero => "Genero",
        :estatura => 1,
        :unidades => "Unidades"
      )
    ])
  end

  it "renders a list of datos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Genero".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Unidades".to_s, :count => 2
  end
end
