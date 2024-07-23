Rails.application.routes.draw do

  #Manejo de gema Devise
  devise_for :users
  root 'home#index'
  get 'home/index'
  get 'home/mostrar/:id' => "home#mostrar_parametro", as: 'mostrar_parametro'
  post 'home/cambio_password_user' => "home#cambio_password_user", as: 'cambio_password_user'  
  get "salir/modal_salir" => "home#modal_salir", as: "modal_salir"    
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  scope "/admin" do    
    resources :persona_empresa_formularios
    get "permisos/" => "persona_empresa_formularios#index_permisos", :as => "permisos"
    post "persona_empresa_formularios/consulta_permisos"
    get "/permisos/search" => "persona_empresa_formularios#search_usuario", as: "search_usuarios"
    get "/permisos/show" => "persona_empresa_formularios#mostrar_permisos", as: "mostrar_permisos"
    get "/permisos/add" => "persona_empresa_formularios#agregar_permiso", as: "agregar_permisos"
    get "/permisos/showadd" => "persona_empresa_formularios#mostrar_agregar_permisos", as: "mostrar_agregar_permisos"
    post "persona_empresa_formularios/guardar_permisos"
    get "/permisos/opc_perfil" => "persona_empresa_formularios#obtener_opciones_por_perfil", as: "obtener_opciones_por_perfil"
    get "/permisos/opc_individual" => "persona_empresa_formularios#obtener_opciones_por_individual", as: "obtener_opciones_por_individual"
    delete "/permisos/remove/:id" => "persona_empresa_formularios#eliminar_permiso", as: "eliminar_permiso"

    #routs datos externos 
    get "/detalle/datosexterno/:dato_externo_id" => "datos_externos#index_detalle_datos_externo", as: "index_detalle_datos_externo"
    get "/nuevo/datos_externo/:id" => "datos_externos#nuevo_detalle_dato", as: "nuevo_detalle_dato"
    post "datos_externos/crea_detalle_de" 

    #routs datos apis
    get "/detalle/datosapi/:datos_api_id" => "datos_apis#index_detalle_datos_api", as: "index_detalle_datos_api"
    get "/nuevo/datos_api/:id" => "datos_apis#nuevo_detalle_datos_api", as: "nuevo_detalle_datos_api"
    post "datos_apis/registro_detalle_dato_api" 
    get "/editar/datos_api/:id" => "datos_apis#editar_detalle_datos_api", as: "editar_detalle_datos_api"
    post "datos_apis/actualizar_detalle_dato_api" 
    get "/inactivar/datos_api/:id" => "datos_apis#inactivar_detalle_datos_api", as: "inactivar_detalle_datos_api"
  
    
    get "/empresas/search" => "usuarios#search_empresa", as: "search_empresa"
    get "/areas/search" => "usuarios#search_areas", as: "search_areas"
    get "/persona/modal_cambio_contra/:persona_id" => "personas#modal_cambiar_contrasena", as: "modal_cambiar_contrasena"
    post "personas/registrar_cambio_contrasena"  
    get "/persona/registrar_token/:persona_id" => "personas#registrar_token_persona", as: "registrar_token_persona"
    get "/persona/generar_token/" => "personas#generar_token", as: "generar_token"
    
    resources :datos_apis
    resources :detalle_datos_externos
    resources :datos_externos    

    #Manejo controller Usuarios
    post 'usuarios/crear_usuario'
    get 'usuarios/index'
    get 'usuarios/agregar_usuario'

    #Manejo controller Personas
    resources :personas
    get 'personas/show/:id' => "personas#show", as: 'ver_perfil'
    #get 'personas/edit/:id' => "personas#edit", as: 'edit_persona'
    patch 'personas/update'
    get 'inactivar/:id' => "personas#inactivar", as: 'inactivaruser'
    #resources :personas , only: [:show, :edit, :update] 
  

    post 'home/registrar_parametro'
    post "home/registrar_area_temporal"

    #Manejo controller empresas
    resources :empresas
    get 'empresa/inactivar/:id' => "empresas#inactivar_empresa", as: 'inactivar_empresa' 

    #Manejo controller areas
    resources :areas
    get 'area/inactivar/:id' => "areas#inactivar_area", as: 'inactivar_area'

    #Manejo controller rol
    resources :roles
    get 'rol/inactivar/:id' => "roles#inactivar_rol", as: 'inactivar_rol'

    #manejo de controller peresonas - areas 
    resources :personas_areas
    get 'usuario_area/inactivar/:id' => "personas_areas#inactivar_usuario_area", as: 'inactivar_usuario_area'
    get "personas_areas/search_areas_by_empresa"

    #Manejo de controller menu
    resources :menus
    get 'menu/inactivar/:id' => "menus#inactivar_menu", as: 'inactivar_menu'

    #Manejo de controller Opciones
    resources :opciones
    get 'opcion/inactivar/:id' => "opciones#inactivar_opcion", as: 'inactivar_opcion'

    #Manejo de controller menu por rol
    resources :menu_roles
    get 'menu_rol/inactivar/:id' => "menu_roles#inactivar_menurol", as: 'inactivar_menurol'

    #Manejo de controller atributo
    resources :atributos
    get 'atributo/inactivar/:id' => "atributos#inactivar_atributo", as: 'inactivar_atributo'
      
    #Manejo de controller componente
    resources :componentes
    get 'componente/inactivar/:id' => "componentes#inactivar_componente", as: 'inactivar_componente'
      
    #Manejo de controller opcion componentes - atributos
    resources :opcion_cas
    get 'opcion_ca/inactivar/:id' => "opcion_cas#inactivar_opcion_ca", as: 'inactivar_opcion_ca'

    #Manejo de controller persona, empresa, formularios
    get 'personas/search/' => "persona_empresa_formularios#search", as: 'search'

    #Para buscar las areas por empresa por persona de un usuario
    get '/permisos/searchemp/' => "persona_empresa_formularios#search_areas_persona", as: 'searchemp'    
  end

  scope "/catalogos" do
    
  end

  scope "/modulos" do
    
  end

  scope "/configuraciones" do
    
  end

  namespace "api" do
    namespace "v1" do           
      post '/apiauthenticate' => 'login_apps#authenticate'      
    end
  end
end