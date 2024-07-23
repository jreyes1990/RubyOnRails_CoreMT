require 'rails_helper'

RSpec.describe "cmiv_tipo_transacciones/edit", type: :view do
  before(:each) do
    @cmiv_tipo_transaccione = assign(:cmiv_tipo_transaccione, CmivTipoTransaccione.create!())
  end

  it "renders the edit cmiv_tipo_transaccione form" do
    render

    assert_select "form[action=?][method=?]", cmiv_tipo_transaccione_path(@cmiv_tipo_transaccione), "post" do
    end
  end
end
