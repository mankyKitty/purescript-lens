module Control.Lens.Type where

  import Control.Lens.Internal.Setter (Settable)

  type Lens s t a b = forall f. (Functor f) => (a -> f b) -> s -> f t
  type LensP s a = Lens s s a a
  type Optic p f s t a b = p a (f b) -> p s (f t)
  type OpticP p f s a = Optic p f s s a a
  type Optical p q f s t a b = p a (f b) -> q s (f t)
  type OpticalP p q f s a = Optical p q f s s a a
  type Setter s t a b = forall f. (Settable f) => (a -> f b) -> s -> f t
  type SetterP s a = Setter s s a a
