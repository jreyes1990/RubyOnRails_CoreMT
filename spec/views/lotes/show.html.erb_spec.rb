require 'rails_helper'

RSpec.describe "lotes/show", type: :view do
  before(:each) do
    @lote = assign(:lote, Lote.create!(
      id_empresa: 2,
      prod_producto: nil,
      codigo_barras: "Codigo Barras",
      cantidad_inicial: 3,
      cantidad_actual: 4,
      user_created_id: 5,
      user_updated_id: 6,
      estado_x_proceso: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(//)
    expect(rendered).to match(/Codigo Barras/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/5/)
    expect(rendered).to match(/6/)
    expect(rendered).to match(//)
  end
end
