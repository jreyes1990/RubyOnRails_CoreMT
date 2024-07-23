require 'rails_helper'

RSpec.describe "prod_productos/index", type: :view do
  before(:each) do
    assign(:prod_productos, [
      ProdProducto.create!(
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
      ),
      ProdProducto.create!(
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
      )
    ])
  end

  it "renders a list of prod_productos" do
    render
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: "Nombre".to_s, count: 2
    assert_select "tr>td", text: "Descripcion Corta".to_s, count: 2
    assert_select "tr>td", text: "Descripcion".to_s, count: 2
    assert_select "tr>td", text: "Tiene Fecha Caducidad".to_s, count: 2
    assert_select "tr>td", text: "Tiene Codigo Barras".to_s, count: 2
    assert_select "tr>td", text: "Es Medicamento".to_s, count: 2
    assert_select "tr>td", text: "Es Medicamento Etico".to_s, count: 2
    assert_select "tr>td", text: "Es Medicamento Generico".to_s, count: 2
    assert_select "tr>td", text: "Es Servicio".to_s, count: 2
    assert_select "tr>td", text: "Es Compuesto".to_s, count: 2
    assert_select "tr>td", text: "Disponible Venta".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
    assert_select "tr>td", text: 3.to_s, count: 2
    assert_select "tr>td", text: 4.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
