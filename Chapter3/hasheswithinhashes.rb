#hasheswithinhashes.rb

people = {
   'dat' => {
       'name' => 'Do Thanh Dat',
       'age' => 21,
       'gender' => 'male',
       'favorite sport' =>  ['tennis','football']
},
   'dang' => {
        'name' => 'Vu Hai Dang',
        'age' => 21,
        'gender' => 'male'     
}
}

puts people['dat'].inspect
puts people['dat']['gender']
puts people['dang'].inspect
puts people['dat'].length
puts people['dat']['favorite sport'].join(", ")