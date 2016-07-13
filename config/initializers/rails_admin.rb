RailsAdmin.config do |config|

  ### Popular gems integration

  ## == Devise ==
  # == Devise ==
  config.authenticate_with do
    unless (current_user and allowed_user(current_user))
      flash[:error] = nil
      redirect_to '/'
    end    
  end

  config.included_models = %w[ Contact User Adventure ]

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end


  config.model Contact do
    list do
      sort_by :created_at
      sort_by :contact_type
      field :created_at
      field :contact_type
      field :name
      field :email
    end
  end
end
