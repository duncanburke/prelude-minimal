# prelude-minimal
An alternate Haskell Prelude which removes cruft and exposes the core typeclass hierarchy of "base". 

Specifically, the following typeclasses are exposed by default:

- `Category`
- `Monoid`
- `Functor`
- `Applicative`
- `Monad`
- `Alternative`
- `MonadPlus`
- `Foldable`
- `Traversable`

More-polymorphic functions available from these typeclasses replace their less general counterparts available in the default Prelude.

Additionally, functions are not exposed where they would be redundant due to a higher-level counterpart. For instance, `return` and `(++)` are not exported in favour of `pure` and `(<>)`.

## Usage

~~~ {.haskell}
import Prelude ()
import Prelude.Minimal
~~~
