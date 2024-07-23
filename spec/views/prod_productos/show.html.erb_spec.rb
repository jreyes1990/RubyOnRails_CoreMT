require 'rails_helper'

RSpec.describe "prod_productos/show", type: :view do
  before(:each) do
    @prod_producto = assign(:prod_producto, ProdProducto.create!(
      id_empresa: 2,
      nombre: "Nombre",
      descripcion_corta: "Descripcion Corta",
      descripcion: "Descripcion",
      tiene_fecha_caducidad: "Tiene Fecha Caducidad",
      tiene_codigo_barras: "Tiene Codigo Barras",
      es_medicamento: "Es Medicamento",
      es_medicamento_etico: "Es Medicamento Etico",
      es_medicamento_generico: "Es Medicamento Generico",
      es_servicio: "Es Servicio",
      es_compuesto: "Es Compuesto",
      disponible_venta: "Disponible Venta",
      imagen: "MyText",
      user_created_id: 3,
      user_updated_id: 4,
      estado_x_proceso: nil,
      familia_producto: nil,
      unidad_medida: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Nombre/)
    expect(rendered).to match(/Descripcion Corta/)
    expect(rendered).to match(/Descripcion/)
    expect(rendered).to match(/Tiene Fecha Caducidad/)
    expect(rendered).to match(/Tiene Codigo Barras/)
    expect(rendered).to match(/Es Medicamento/)
    expect(rendered).to match(/Es Medicamento Etico/)
    expect(rendered).to match(/Es Medicamento Generico/)
    expect(rendered).to match(/Es Servicio/)
    expect(rendered).to match(/Es Compuesto/)
    expect(rendered).to match(/Disponible Venta/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
