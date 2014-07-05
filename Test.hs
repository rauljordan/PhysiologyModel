
-- My Test Driven Development Suite
import Heart
import Pulmonary

assert :: Bool -> String
assert False  =  "assertion failed!"
assert True      = "Passed"

----- All of the Heart Tests -----
testHeart = Heart {lventricle = Ventricle 1.0 2.0,
rventricle = Ventricle 1.5 2.0,
latrium = Atrium 3.0 2.0,
ratrium = Atrium 3.5 2.0} 

pressureTest = assert $ heartMap (increasePressure 2.0) testHeart ==
    Heart {lventricle = Ventricle 2.0 2.0,
          rventricle = Ventricle 3.0 2.0,
          latrium = Atrium 6.0 2.0,
          ratrium = Atrium 7.0 2.0} 

volumeTest = assert $ heartMap (increaseVolume 10.0) testHeart ==
    Heart {lventricle = Ventricle 1.0 20.0,
          rventricle = Ventricle 1.5 20.0,
          latrium = Atrium 3.0 20.0,
          ratrium = Atrium 3.5 20.0} 


main = do
  print pressureTest
  print volumeTest


