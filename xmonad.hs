import XMonad
import XMonad.Util.EZConfig(additionalKeys)

myStartupHook :: X ()
myStartupHook = spawn "~/.xmonad/start"

main :: IO ()
main = do
    xmonad $ defaultConfig

      { modMask = mod4Mask
      , startupHook = myStartupHook
      , terminal = "lxterminal"
      , focusFollowsMouse = False
      , borderWidth = 2
      , focusedBorderColor = "#33ffaa"
      }

      `additionalKeys`

      [ ((mod4Mask, xK_f), spawn "firefox")
      , ((mod4Mask, xK_x), spawn "xxxterm")
      , ((mod4Mask, xK_z), spawn "xscreensaver-command -lock")
      , ((mod4Mask, xK_m), spawn "emacsclient -c")]
