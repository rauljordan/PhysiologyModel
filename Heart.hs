
module Heart 
(
  Pressure(..),
  Volume(..),
  HeartComponent(..),
  Heart(..),
  heartMap,
  increasePressure,
  increaseVolume
) where
  

type Pressure = Double
type Volume = Double

data HeartComponent = Ventricle Pressure Volume
                      | Atrium Pressure Volume
  deriving (Show,Eq)

data Heart = Heart {lventricle :: HeartComponent, 
                    rventricle :: HeartComponent,
                    latrium :: HeartComponent,
                    ratrium :: HeartComponent}
  deriving (Show,Eq)

--- defines a function for increasing pressure
increasePressure amount (Ventricle p v) =
  Ventricle (amount * p) v

increasePressure amount (Atrium p v) =
  Atrium (amount * p) v

--- defines a function for increasing volume
increaseVolume amount (Ventricle p v) =
  Ventricle p (amount * v)

increaseVolume amount (Atrium p v) =
  Atrium p (amount * v)

-- defines a map over a heart
heartMap f heart = 
  Heart (f $ lventricle heart) (f $ rventricle heart) 
    (f $ latrium heart) (f $ ratrium heart)
  

  









