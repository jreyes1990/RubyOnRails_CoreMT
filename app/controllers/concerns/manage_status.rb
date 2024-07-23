# app/controllers/concerns/manage_status.rb
module ManageStatus
  extend ActiveSupport::Concern

  def change_status_to(status_description, model, process_desc, redirect_to_path, params_id)
    record = model.find(params_id)
    state_info = EstadoXProcesoView.where("id_empresa = ? and upper(desc_proceso)=? and upper(desc_estado) =?", record.id_empresa, process_desc, status_description).first

    record.user_updated_id = current_user.id
    if state_info.present?
      record.estado_x_proceso_id = state_info.id
    end

    respond_to do |format|
      if state_info.present?
        if record.save
          if params_id != params[:id] 
            flash[:success] = "El registro se ha cambiado a #{status_description.downcase}"
            format.html { redirect_to redirect_to_path}
            format.json { render :show, status: :created, location: record }
          else 
            format.html { redirect_to redirect_to_path, notice: "El registro se ha cambiado a #{status_description.downcase}"}
            format.json { render :show, status: :created, location: record }
          end
        else
          if params_id != params[:id] 
            flash[:alert] = "No se pudo cambiar el estado del registro"
            format.html { render redirect_to_path}
            format.json { render json: record.errors, status: :unprocessable_entity }
          else
            format.html { render redirect_to_path, notice: "No se pudo cambiar el estado del registro" }
            format.json { render json: record.errors, status: :unprocessable_entity }
          end
        end
      else
        if params_id != params[:id] 
          flash[:alert] = "El registro que intenta cambiar no cumple con los criterios definidos, ¡verifique!"
          format.html { redirect_to redirect_to_path}
        else
          format.html { redirect_to redirect_to_path, notice: "El registro que intenta cambiar no cumple con los criterios definidos, ¡verifique!" }
        end
      end
    end
  end

  def guardar_con_manejo_de_excepciones(registro, mensaje_error, mensaje_error_bd)
    begin
      registro.save!
    rescue ActiveRecord::RecordInvalid => e
      raise StandardError.new("#{mensaje_error}: #{e.message}")
      Rails.logger.error("ERROR EN CONSOLA: #{e.message}")
    rescue ActiveRecord::StatementInvalid => e
      raise StandardError.new("#{mensaje_error_bd}: #{e.message}")
      Rails.logger.error("ERROR EN CONSOLA: #{e.message}")
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
  