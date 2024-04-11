import Xmobar

config :: Config
config =
  defaultConfig
    { font = "DejaVu Sans Mono 15",
      allDesktops = True,
      alpha = 200,
      commands =
        [ Run $ Memory [ "-t", "Mem: <used> Gb", "--", "--scale", "1024"] 20,
          Run $ Kbd [],
          Run $ Date "%a %_d %b %Y <fc=#ee9a00>%H:%M</fc>" "date" 10
        ],
      template = "}{ %kbd% | %date% | %memory%",
      alignSep = "}{"
    }

main :: IO ()
main = xmobar config
