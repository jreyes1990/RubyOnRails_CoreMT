require 'rails_helper'

RSpec.describe "cotizaciones/show", type: :view do
  before(:each) do
    @cotizacion = assign(:cotizacion, Cotizacion.create!(
      id_empresa: 2,
      proveedor: nil,
      necesidad_mercaderia: nil,
      user_created_id: 3,
      user_updated_id: 4,
      estado_x_proceso: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(//)
  end
end
