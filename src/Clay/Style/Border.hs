{-# LANGUAGE OverloadedStrings, GeneralizedNewtypeDeriving #-}
module Clay.Style.Border where

import Clay.Core.Property
import Clay.Core.Rule
import Clay.Style.Color
import Clay.Style.Common
import Clay.Style.Size

newtype Stroke = Stroke Value
  deriving Val

instance Auto    Stroke where auto    = Stroke "auto"
instance Inherit Stroke where inherit = Stroke "inherit"
instance None    Stroke where none    = Stroke "none"
instance Other   Stroke where other   = Stroke

solid, dotted, dashed :: Stroke

solid  = Stroke "solid"
dotted = Stroke "dotted"
dashed = Stroke "dashed"

border, borderTop, borderLeft, borderBottom, borderRight :: Stroke -> Size Abs -> Color -> Css

border        a b c = key "border"        (a ! b ! c)
borderTop     a b c = key "border-top"    (a ! b ! c)
borderLeft    a b c = key "border-left"   (a ! b ! c)
borderBottom  a b c = key "border-bottom" (a ! b ! c)
borderRight   a b c = key "border-right"  (a ! b ! c)

borderLeftColor, borderRightColor, borderTopColor, borderBottomColor :: Color -> Css

borderLeftColor   = key "border-left-color"
borderRightColor  = key "border-right-color"
borderTopColor    = key "border-top-color"
borderBottomColor = key "border-bottom-color"

borderLeftStyle, borderRightStyle, borderTopStyle, borderBottomStyle :: Stroke -> Css

borderLeftStyle   = key "border-left-style"
borderRightStyle  = key "border-right-style"
borderTopStyle    = key "border-top-style"
borderBottomStyle = key "border-bottom-style"

borderLeftWidth, borderRightWidth, borderTopWidth, borderBottomWidth :: Size Abs -> Css

borderLeftWidth   = key "border-left-width"
borderRightWidth  = key "border-right-width"
borderTopWidth    = key "border-top-width"
borderBottomWidth = key "border-bottom-width"

