-- |
-- Module      : Core.String
-- License     : BSD-style
-- Maintainer  : Vincent Hanquez <vincent@snarc.org>
-- Stability   : experimental
-- Portability : portable
--
-- Opaque packed String encoded in UTF8.
--
-- The type is an instance of IsString and IsList, which allow OverloadedStrings
-- for string literal, and 'fromList' to convert a [Char] (Prelude String) to a packed
-- representation
--
-- > {-# LANGUAGE OverloadedStrings #-}
-- > s = "Hello World :: String
--
-- > s = fromList ("Hello World" :: Prelude.String) :: String
--
-- Each unicode code point is represented by a variable encoding of 1 to 4 bytes,
--
-- For more information about UTF8: <https://en.wikipedia.org/wiki/UTF-8>
--
module Core.String
    ( String
    , Encoding(..)
    , fromBytes
    , fromBytesLenient
    , toBytes
    , ValidationFailure(..)
    ) where

import Core.String.UTF8
