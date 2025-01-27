class Api::V1::PvmesDeclarationsController < Api::V1::BaseController

   before_action :pvmes_declaration, only: [ :show ]

  def index
    #return with filter curl -s 'http://localhost:3000/api/v1/pvmes_declarations/?customer_email=gturcat@mac.com' | jq
    @pvmes_declarations = PvmesDeclaration.where(filter_params.to_h.reject { |_, v| v.blank? })
  end

  def show
  end

  def create
    @pvmes_declaration = PvmesDeclaration.new(pvmes_declaration_params)
    if @pvmes_declaration.save
      render :show, status: :created
    else
      render_error
    end
  end

  private

  def filter_params
    params.permit(:compagny_name,
                  :compagny_siren,
                  :customer_name,
                  :customer_email,
                  :customer_phone,
                  :adress,
                  :date_of_installation,
                  :status)
  end

  def pvmes_declaration
    @pvmes_declaration = PvmesDeclaration.find(params[:id])
  end

   def pvmes_declaration_params
    params.require(:pvmes_declaration)
          .permit(:compagny_name,
                  :compagny_siren,
                  :customer_name,
                  :customer_email,
                  :customer_phone,
                  :adress,
                  :date_of_installation,
                  :status,
                  panels_attributes: [
                    :type_of_panel,
                    :code
                  ]
                  )
  end

    def render_error
    render json: { errors: @pvmes_declaration.errors.full_messages },
      status: :unprocessable_entity
  end

end
