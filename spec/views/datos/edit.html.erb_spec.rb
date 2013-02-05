require 'spec_helper'

describe "datos/edit" do
  before(:each) do
    @dato = assign(:dato, stub_model(Dato,
      :genero => "MyString",
      :estatura => 1,
      :unidades => "MyString"
    ))
  end

  it "renders the edit dato form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => datos_path(@dato), :method => "post" do
      assert_select "input#dato_genero", :name => "dato[genero]"
      assert_select "input#dato_estatura", :name => "dato[estatura]"
      assert_select "input#dato_unidades", :name => "dato[unidades]"
    end
  end
end
