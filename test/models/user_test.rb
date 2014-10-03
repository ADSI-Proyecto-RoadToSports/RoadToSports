require '../test_helper'

class UserTest < ActiveSupport::TestCase
   test "prueba-rol" do
   	one = 'megajuan_45@hotmail.com'
   	admin = true
    assert true, one != admin  
   end
end
