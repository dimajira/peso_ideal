require 'spec_helper'

describe "datos/show" do
  before(:each) do
    @dato = assign(:dato, stub_model(Dato,
      :genero => "Genero",
      :estatura => 1,
      :unidades => "Unidades"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Genero/)
    rendered.should match(/1/)
    rendered.should match(/Unidades/)
  end
end
