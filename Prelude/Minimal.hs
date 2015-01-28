
module Prelude.Minimal (
    -- * Basic data types
    -- ** Bool
    Bool(False, True),
    (&&), (||), not, otherwise,

    -- ** Maybe
    Maybe(Nothing, Just),
    fromMaybe, isNothing, isJust,

    -- ** Either
    Either(Left, Right),
    isLeft, isRight,

    -- ** Ordering
    Ordering(LT, EQ, GT),

    -- ** Tuples
    fst, snd, curry, uncurry,

    -- ** Lists
    head, last, tail, init, null, length, (!!),
    reverse,

    -- * Type Classes

    -- ** Category
    Category(id, (.)),

    -- ** Monoid
    Monoid(mempty, mappend, mconcat),
    (<>),

    -- ** Functor
    Functor(fmap, (<$)),
    void, (<$>), ($>),

    -- *** Applicative and Monad
    Applicative(pure, (<*>), (*>), (<*)),
    (<**>),
    Monad((>>=), (>>)),
    (=<<), (>=>), (<=<),join,

    -- *** Alternative and MonadPlus
    Alternative(empty, (<|>), some, many),
    optional, asum,
    MonadPlus (mzero, mplus),
    guard, msum, mfilter,

    -- ** Foldable and Traversable
    Foldable(fold, foldMap, foldr, foldr', foldl, foldl'),
    and, or, any, all, sum, product, maximum, maximumBy,
    minimum, minimumBy, elem, notElem, find,
    Traversable(traverse, sequenceA),
    for,

    -- ** Basic type classes
    Eq((==), (/=)),
    Ord(compare, (<), (<=), (>=), (>), max, min),
    Enum(succ, pred, toEnum, fromEnum, enumFrom, enumFromThen,
         enumFromTo, enumFromThenTo),
    Bounded(minBound, maxBound),

    -- * Miscellaneous functions
    const, flip, ($), until,
    asTypeOf, error, undefined,
    seq, ($!),

    -- * @Char and @String@

    Char, String,

    -- ** Converting to @String@
    ShowS,
    Show(showsPrec, showList, show),
    shows,
    showChar, showString, showParen,
    -- ** Converting from @String@
    ReadS,
    Read(readsPrec, readList),
    reads, readParen, read, lex,

    -- * Basic Input and output
    IO,
    -- ** Simple I\/O operations
    -- All I/O functions defined here are character oriented.  The
    -- treatment of the newline character will vary on different systems.
    -- For example, two characters of input, return and linefeed, may
    -- read as a single newline character.  These functions cannot be
    -- used portably for binary I/O.
    -- *** Output functions
    putChar,
    putStr, putStrLn, print,
    -- *** Input functions
    getChar,
    getLine, getContents, interact,
    -- *** Files
    FilePath,
    readFile, writeFile, appendFile, readIO, readLn,
    -- ** Exception handling in the I\/O monad
    IOError, ioError, userError,

    -- * Numbers

    -- ** Numeric types
    Int, Integer, Float, Double,
    Rational,

    -- ** Numeric type classes
    Num((+), (-), (*), negate, abs, signum, fromInteger),
    Real(toRational),
    Integral(quot, rem, div, mod, quotRem, divMod, toInteger),
    Fractional((/), recip, fromRational),
    Floating(pi, exp, log, sqrt, (**), logBase, sin, cos, tan,
             asin, acos, atan, sinh, cosh, tanh, asinh, acosh, atanh),
    RealFrac(properFraction, truncate, round, ceiling, floor),
    RealFloat(floatRadix, floatDigits, floatRange, decodeFloat,
              encodeFloat, exponent, significand, scaleFloat, isNaN,
              isInfinite, isDenormalized, isIEEE, isNegativeZero, atan2),

    -- ** Numeric functions
    subtract, even, odd, gcd, lcm, (^), (^^),
    fromIntegral, realToFrac,
) where

import GHC.Base

import Data.Maybe
import Data.Either

import Data.Tuple

import Data.List

import Control.Category (Category(..))
import Data.Monoid
import Data.Functor

import Control.Applicative
import Control.Monad

import Data.Foldable
import Data.Traversable


import GHC.Enum
import GHC.Num
import GHC.Real
import GHC.Float

import GHC.Show
import Text.Read
import System.IO
import System.IO.Error

import Prelude (($!), seq)
