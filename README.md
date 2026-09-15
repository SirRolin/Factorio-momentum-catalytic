# Momentum Modules - Catalytic

A [Factorio](https://factorio.com) mod that adds catalytic momentum modules: a version of every
module type that starts with weakened bonuses and ends with weakened penalties the longer it runs.

A catalytic module begins with its bonuses multiplied by the reduction setting. As the machine keeps
running and momentum builds toward 10, the bonuses grow to full strength while the penalties shrink
until they are the ones multiplied by the reduction setting instead.

## Startup settings

| Setting | Default | Description |
| --- | --- | --- |
| Catalytic reduction | 0.5 | Catalytic modules start with their bonuses multiplied by this, and end at 10 momentum with their penalties multiplied by this instead. |
| Catalytic mod recipe ingredients | 5 electronic circuits | Extra ingredients added to every catalytic module recipe, on top of the base module it is made from. |

## Dependencies

- Factorio 2.0+
- [Momentum Modules](https://github.com/SirRolin/Factorio-momentum-modules) 0.2.0+ — the library mod
  that provides the momentum tracking, module generation and icon tinting used here.
- Optional: Space Age, Quality

## Related mods

- [Momentum Modules](https://github.com/SirRolin/Factorio-momentum-modules) (library)
- [Momentum Modules - Turbo](https://github.com/SirRolin/Factorio-momentum-turbo)
- [Momentum Modules - Threshold](https://github.com/SirRolin/Factorio-momentum-threshold)
- [Clean Modules](https://github.com/SirRolin/Factorio-clean-modules)

## Installation

Clone or copy this folder into your Factorio `mods` directory as
`sir-rolins-momentum-catalytic_<version>`, or install it from the in-game mod portal.
