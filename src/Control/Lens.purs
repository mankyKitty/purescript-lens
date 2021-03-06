module Control.Lens
  ( (..)
  -- Getter
  , (^.)
  , view
  -- Lens
  , lens
  -- Setter
  , (%~), (.~), (+~), (-~), (*~), (/~), (||~), (&&~), (<>~), (++~), (?~)
  , argument
  , contramapped
  , mapped
  , over
  , set
  , set'
  , sets
  -- Tuple
  , (~)
  , _1
  , _2
  -- Type
  , Lens()
  , LensP()
  , Optic()
  , OpticP()
  , Optical()
  , OpticalP()
  , Setter()
  , SetterP()
  )  where

  import qualified Control.Lens.Getter as CLG
  import qualified Control.Lens.Lens as CLL
  import qualified Control.Lens.Setter as CLS
  import qualified Control.Lens.Tuple as CLT
  import qualified Control.Lens.Type as Type

  -- Getter
  infixl 8 ^.
  (^.) = CLG.(^.)
  view = CLG.view

  -- Lens
  lens = CLL.lens

  -- Setter
  infixr 4 %~
  infixr 4 .~
  infixr 4 +~
  infixr 4 -~
  infixr 4 *~
  infixr 4 /~
  infixr 4 ||~
  infixr 4 &&~
  infixr 4 <>~
  infixr 4 ++~
  infixr 4 ?~
  (%~)         = CLS.(%~)
  (.~)         = CLS.(.~)
  (+~)         = CLS.(+~)
  (-~)         = CLS.(-~)
  (*~)         = CLS.(*~)
  (/~)         = CLS.(/~)
  (||~)        = CLS.(||~)
  (&&~)        = CLS.(&&~)
  (<>~)        = CLS.(<>~)
  (++~)        = CLS.(++~)
  (?~)         = CLS.(?~)
  argument     = CLS.argument
  contramapped = CLS.contramapped
  mapped       = CLS.mapped
  over         = CLS.over
  set          = CLS.set
  set'         = CLS.set'
  sets         = CLS.sets

  -- Tuple
  infixr 6 ~
  (~) = CLT.(~)
  _1  = CLT._1
  _2  = CLT._2

  infixr 9 ..
  (..) = (<<<)

  type Lens s t a b          = Type.Lens s t a b
  type LensP s a             = Type.LensP s a
  type Optic p f s t a b     = Type.Optic p f s t a b
  type OpticP p f s a        = Type.OpticP p f s a
  type Optical p q f s t a b = Type.Optical p q f s t a b
  type OpticalP p q f s a    = Type.OpticalP p q f s a
  type Setter s t a b        = Type.Setter s t a b
  type SetterP s a           = Type.SetterP s a
