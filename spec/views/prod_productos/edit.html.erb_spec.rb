require 'rails_helper'

RSpec.describe "prod_productos/edit", type: :view do
  before(:each) do
    @prod_producto = assign(:prod_producto, ProdProducto.create!(
      id_empresa: 1,
      nombre: "MyString",
      descripcion_corta: "MyString",
      descripcion: "MyString",
      tiene_fecha_caducidad: "MyString",
      tiene_codigo_barras: "MyString",
      es_medicamento: "MyString",
      es_medicamento_etico: "MyString",
      es_medicamento_generico: "MyString",
      es_servicio: "MyString",
      es_compuesto: "MyString",
      disponible_venta: "MyString",
      imagen: "MyText",
      user_created_id: 1,
      user_updated_id: 1,
      estado_x_proceso: nil,
      familia_producto: nil,
      unidad_medida: nil
    ))
  end

  it "renders the edit prod_producto form" do
    render

    assert_select "form[action=?][method=?]", prod_producto_path(@prod_producto), "post" do

      assert_select "input[name=?]", "prod_producto[id_empresa]"

      assert_select "input[name=?]", "prod_producto[nombre]"

      assert_select "input[name=?]", "prod_producto[descripcion_corta]"

      assert_select "input[name=?]", "prod_producto[descripcion]"

      assert_select "input[name=?]", "prod_producto[tiene_fecha_caducidad]"

      assert_select "input[name=?]", "prod_producto[tiene_codigo_barras]"

      assert_select "input[name=?]", "prod_producto[es_medicamento]"

      assert_select "input[name=?]", "prod_producto[es_medicamento_etico]"

      assert_select "input[name=?]", "prod_producto[es_medicamento_generico]"

      assert_select "input[name=?]", "prod_producto[es_servicio]"

      assert_select "input[name=?]", "prod_producto[es_compuesto]"

      assert_select "input[name=?]", "prod_producto[disponible_venta]"

      assert_select "textarea[name=?]", "prod_producto[imagen]"

      assert_select "input[name=?]", "prod_producto[user_created_id]"

      assert_select "input[name=?]", "prod_producto[user_updated_id]"

      assert_select "input[name=?]", "prod_producto[estado_x_proceso_id]"

      assert_select "input[name=?]", "prod_producto[familia_producto_id]"

      assert_select "input[name=?]", "prod_producto[unidad_medida_id]"
    end
  end
end
