#email:string
#password_digest:string
#passsword: string virtual
#password_connfirmation: string virtual

class User < ApplicationRecord
  has_secure_password
end
