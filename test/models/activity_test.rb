require 'test_helper'

class ActivityTest < ActiveSupport::TestCase
   test "test prueba" do
   	one = "prueba2"
     assert true, one == "cos"
   end

   test "test prueb2" do
   	state = "t"
   	one = "prueba2"
   	 assert true, state != "f"
   end

   test "test comparacion" do
   	one = "prueba2"
   	two = "prueba1"
   	 assert true, one == two
   end

   test "test fecha creacion" do
   	created_at = "2014-10-03 20:39:46"
   	 assert true, created_at >= "2013-05-08 22:05:12"
   end
end
