require 'rails_helper'

RSpec.describe "cmiv_tipo_transacciones/new", type: :view do
  before(:each) do
    assign(:cmiv_tipo_transaccione, CmivTipoTransaccione.new())
  end

  it "renders new cmiv_tipo_transaccione form" do
    render

    assert_select "form[action=?][method=?]", cmiv_tipo_transacciones_path, "post" do
    end
  end
end
