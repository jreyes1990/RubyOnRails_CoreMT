require 'rails_helper'

RSpec.describe "escala_precios/show", type: :view do
  before(:each) do
    @escala_precio = assign(:escala_precio, EscalaPrecio.create!(
      id_empresa: 2,
      prod_producto: nil,
      codigo_barras: "Codigo Barras",
      rango_inferior: "9.99",
      rango_superior: "9.99",
      precio_socio: "9.99",
      utilidad_socio: "9.99",
      precio_no_socio: "9.99",
      utilidad_no_socio: "9.99",
      utilidad_empresa: "9.99",
      sucursal_x_bodega: nil,
      user_created_id: 3,
      user_updated_id: 4,
      estado_x_proceso: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(//)
    expect(rendered).to match(/Codigo Barras/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(//)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(//)
  end
end
