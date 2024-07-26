# app/controllers/concerns/manage_status.rb
module ManageStatus
  extend ActiveSupport::Concern
  include Utilidades

  def change_status_to(status_description, model, redirect_to_path, params_id)
    record = model.find(params_id)

    record.user_updated_id = current_user.id
    record.estado = status_description

    respond_to do |format|
      begin
        ActiveRecord::Base.transaction do
          guardar_con_manejo_de_excepciones(record, "No se pudo actualizar el estado", "Error de base de datos al actualizar el estado del registro")
          format.html { redirect_to redirect_to_path, notice: "El registro ha cambiado a estado #{desc_estado(record.estado)}".html_safe }
          format.json { render :show, status: :created, location: record }
        end
      rescue StandardError => e
        format.html do
          flash[:error] = e.message
          redirect_to redirect_to_path
        end
        format.json { render json: { error: e.message }, status: :unprocessable_entity }
      end
    end  
  end

  def guardar_con_manejo_de_excepciones(registro, mensaje_error, mensaje_error_bd)
    begin
      registro.save!
    rescue ActiveRecord::RecordInvalid => e
      raise StandardError.new("#{mensaje_error}: #{e.message}")
    rescue ActiveRecord::StatementInvalid => e
      raise StandardError.new("#{mensaje_error_bd}: #{e.message}")
    end
  end

  def actualizar_con_manejo_de_excepciones(registro, atributos, mensaje_error, mensaje_error_bd)
    begin
      registro.update!(atributos)
    rescue ActiveRecord::RecordInvalid => e
      raise StandardError.new("#{mensaje_error}: #{e.message}")
      Rails.logger.error("ERROR EN CONSOLA: #{e.message}")
    rescue ActiveRecord::StatementInvalid => e
      raise StandardError.new("#{mensaje_error_bd}: #{e.message}")
      Rails.logger.error("ERROR EN CONSOLA: #{e.message}")
    end
  end
end
