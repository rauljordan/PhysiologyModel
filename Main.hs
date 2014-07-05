-- Main function
module Main (main) where

import Heart
import Pulmonary

-- testing the heart import
myHeart = Heart {lventricle = Ventricle 2.0 2.0,
            rventricle = Ventricle 3.0 3.0,
            latrium = Atrium 4.0 4.0,
            ratrium = Atrium 4.0 3.0}

main = do
  print $ lventricle myHeart
