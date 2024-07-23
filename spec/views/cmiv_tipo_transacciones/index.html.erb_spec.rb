require 'rails_helper'

RSpec.describe "cmiv_tipo_transacciones/index", type: :view do
  before(:each) do
    assign(:cmiv_tipo_transacciones, [
      CmivTipoTransaccione.create!(),
      CmivTipoTransaccione.create!()
    ])
  end

  it "renders a list of cmiv_tipo_transacciones" do
    render
  end
end
