require '../test_helper'

class UserTest < ActiveSupport::TestCase

  test "email_unico" do
  	one = "john@gmail.com"
  	two = "johns@gmail.com"
  	assert_equal false, one == two
  end

  test "tamaño_documento" do
  	documento = 444444444444444444444444444
  	assert_equal false, documento.size < 10 
  end

  test "contraseña_minimo_4" do
  	contra = 1234
  	assert_equal true, contra.size >= 4
  end

  test "vacios" do 
  	user = nil
 	assert_equal true, user.nil?
  end

  test "usuario_por_defecto" do
  	rol_defecto = true
    rol_usuario = true
    assert rol_usuario == rol_defecto
  end

end
