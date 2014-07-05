-- module for the pulmonary system
module Pulmonary
(
  Pressure(..),
  Volume(..),
  Lungs(..)
  Lung(..),
  lungMap,
  increaseO2Vol
) where

type Pressure = Double
type Volume = Double 

-- easily extensible for lung components

data Lung = Lung {alveoli :: Int, 
                  oxygenVol :: Volume,
                  co2Vol :: Volume}
  deriving (Show, Eq)

type Lungs = (Lung,Lung)

-- defines functions over a lung
lungMap f lung = 
  Lung (f $ alveoli lung) (f $ oxygenVol lung) 
    (f $ co2Vol lung)

-- function for increasing oxygen volume
increaseO2Vol amount lung =
  let alv = alveoli lung in
  let o2 = oxygenVol lung in
  let co2 = co2Vol lung in
    Lung {alveoli = alv, oxygenVol = amount * o2, co2Vol = co2}




                  


  


