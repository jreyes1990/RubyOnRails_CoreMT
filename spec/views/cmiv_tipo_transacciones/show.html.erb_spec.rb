require 'rails_helper'

RSpec.describe "cmiv_tipo_transacciones/show", type: :view do
  before(:each) do
    @cmiv_tipo_transaccione = assign(:cmiv_tipo_transaccione, CmivTipoTransaccione.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
