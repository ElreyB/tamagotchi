# require('rspec')
# require('tamagotchi')
#
# describe(Tamagotchi) do
#   let(:my_pet){Tamagotchi.new("puggle")}
#   describe ('#initialize') do
#     it ("set name and life levels of a new Tamagotchi")
#     expect(my_pet.name()).to(eq("puggle"))
#     expect(my_pet.food_level()).to(eq(10))
#     expect(my_pet.happiness_level()).to(eq(10))
#     expect(my_pet.awake?()).to(eq(true))
#   end
#
#   describe("#is_alive?") do
#     it("is alive if the food level is above 0") do
#       expect(my_pet.is_alive?()).to(eq(true))
#     end
#
#     it ("is dead if the food level is 0") do
#       my_pet.set_food_level() #Need to do further work (timer)
#       expect(my_pet.is_alive?()).to(eq(false))
#     end
#   end
#
#   describe('#set_food_level') do
#     it ("changes food level by 1") do
#       expect{my_pet.set_food_level}.to change{my_pet.food_level}.from(10).to(9)
#     end
#   end
#
#
#
#
# end
