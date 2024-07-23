require 'rails_helper'

RSpec.describe "productos_x_bodegas/show", type: :view do
  before(:each) do
    @producto_x_bodega = assign(:producto_x_bodega, ProductoXBodega.create!(
      id_empresa: 2,
      sucursal: nil,
      bodega: nil,
      prod_producto: nil,
      disponible_venta: "Disponible Venta",
      venta_plazo: "Venta Plazo",
      max_plazo: 3,
      venta_masiva: "Venta Masiva",
      stock_minimo: 4,
      stock_maximo: 5,
      stock_actual: 6,
      user_created_id: 7,
      user_updated_id: 8,
      estado_x_proceso: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/Disponible Venta/)
    expect(rendered).to match(/Venta Plazo/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/Venta Masiva/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/5/)
    expect(rendered).to match(/6/)
    expect(rendered).to match(/7/)
    expect(rendered).to match(/8/)
    expect(rendered).to match(//)
  end
end
