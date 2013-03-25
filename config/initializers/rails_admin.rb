RailsAdmin.config do |config|
  config.main_app_name = ['Pushjaw', 'Admin']
  config.current_user_method { current_user } # auto-generated
  config.model Service do
    configure :images do
      config.model Image do
        field :image
      end
    end
    field :name
    field :content 
    field :images
    field :active
  end
  
  config.model Blog do
    field :name
    field :content, :rich_editor do
      config({
          :insert_many => true
        })
    end
    field :active
  end
  
  config.model Home do
    field :name
    field :content
    field :active
  end
   
  config.model Team do
    configure :image do
      config.model Image do
        field :image
      end
    end
    field :name
    field :title
    field :content
    field :image
      
  end
  
  config.model Location do
    field :address
    field :phone
    field :mobile_phone
    field :city
    field :active
    field :lat
    field :lng
  end
  
  config.model About do
    field :name
    field :content
    field :active
  end
  
  config.model Image do
    visible false
  end
  
  config.model Rich do
    visible false
  end
  
  config.model Portfolio do
    configure :image do
      config.model Image do
        field :image
      end
    end
    field :name
    field :content
    field :url
    field :active
    field :image
  end
  
  config.model Comment do
    field :name
    field :title
    field :address
    field :comment
    field :active
  end
  
  config.model Video do
    field :video
    field :title
    field :description
    field :active    
  end
  
  config.model User do
    field :email
    field :password
    field :password_confirmation
  end
  
end
