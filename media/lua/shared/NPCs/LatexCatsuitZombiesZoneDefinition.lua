table.insert(ZombiesZoneDefinition.Default, {name = "LatexCatsuitGirlNude", chance=0.1})
table.insert(ZombiesZoneDefinition.Default, {name = "LatexCatsuitGirlBlack", chance=0.1})
table.insert(ZombiesZoneDefinition.Default, {name = "LatexCatsuitGirlRed", chance=0.1})
table.insert(ZombiesZoneDefinition.Default, {name = "LatexCatsuitGirlFull", chance=0.1})

table.insert(ZombiesZoneDefinition.Bar, {name = "LatexCatsuitGirlNude", chance=0.1})
table.insert(ZombiesZoneDefinition.Bar, {name = "LatexCatsuitGirlBlack", chance=0.1})
table.insert(ZombiesZoneDefinition.Bar, {name = "LatexCatsuitGirlRed", chance=0.1})
table.insert(ZombiesZoneDefinition.Bar, {name = "LatexCatsuitGirlFull", chance=0.1})

table.insert(ZombiesZoneDefinition.Rich, {name = "LatexCatsuitGirlNude", chance=0.25})
table.insert(ZombiesZoneDefinition.Rich, {name = "LatexCatsuitGirlBlack", chance=0.25})
table.insert(ZombiesZoneDefinition.Rich, {name = "LatexCatsuitGirlRed", chance=0.25})
table.insert(ZombiesZoneDefinition.Rich, {name = "LatexCatsuitGirlFull", chance=0.25})

table.insert(ZombiesZoneDefinition.HotelRich, {name = "LatexCatsuitGirlNude", chance=1})
table.insert(ZombiesZoneDefinition.HotelRich, {name = "LatexCatsuitGirlBlack", chance=1})
table.insert(ZombiesZoneDefinition.HotelRich, {name = "LatexCatsuitGirlRed", chance=1})
table.insert(ZombiesZoneDefinition.HotelRich, {name = "LatexCatsuitGirlFull", chance=1})

table.insert(ZombiesZoneDefinition.FancyHotel, {name = "LatexCatsuitGirlNude", chance=1})
table.insert(ZombiesZoneDefinition.FancyHotel, {name = "LatexCatsuitGirlBlack", chance=1})
table.insert(ZombiesZoneDefinition.FancyHotel, {name = "LatexCatsuitGirlRed", chance=1})
table.insert(ZombiesZoneDefinition.FancyHotel, {name = "LatexCatsuitGirlFull", chance=1})

table.insert(ZombiesZoneDefinition.CountryClub, {name = "LatexCatsuitGirlNude", chance=0.5})
table.insert(ZombiesZoneDefinition.CountryClub, {name = "LatexCatsuitGirlBlack", chance=0.5})
table.insert(ZombiesZoneDefinition.CountryClub, {name = "LatexCatsuitGirlRed", chance=0.5})
table.insert(ZombiesZoneDefinition.CountryClub, {name = "LatexCatsuitGirlFull", chance=0.5})


if ZombiesZoneDefinition.Stripclub then
    table.insert(ZombiesZoneDefinition.Stripclub, {name = "LatexCatsuitGirlNude", chance=75})
    table.insert(ZombiesZoneDefinition.Stripclub, {name = "LatexCatsuitGirlBlack", chance=75})
    table.insert(ZombiesZoneDefinition.Stripclub, {name = "LatexCatsuitGirlRed", chance=75})
    table.insert(ZombiesZoneDefinition.Stripclub, {name = "LatexCatsuitGirlFull", chance=75})
else
    ZombiesZoneDefinition.Stripclub = {
        chanceToSpawn = 100,
        StripperBlackM = {
            name="StripperBlack",
            toSpawn=2,
            gender="female",
            mandatory="true",
        },
        StripperNakedM = {
            name="StripperNaked",
            toSpawn=1,
            gender="female",
            mandatory="true",
        },
        StripperPinkM = {
            name="StripperPink",
            toSpawn=2,
            gender="female",
            mandatory="true",
        },
        StripperBlack = {
            name="StripperBlack",
            gender="female",
            chance=75,
        },
        StripperNaked = {
            name="StripperNaked",
            gender="female",
            chance=75,
        },
        StripperPink = {
            name="StripperPink",
            gender="female",
            chance=75,
        },
        WaiterStripper = {
            name="WaiterStripper",
            gender="female",
            chance=75,
        },
        LatexCatsuitGirlNude = {
            name="LatexCatsuitGirlNude",
            gender="female",
            chance=75,
        },
        LatexCatsuitGirlBlack = {
            name="LatexCatsuitGirlBlack",
            gender="female",
            chance=75,
        },
        LatexCatsuitGirlRed = {
            name="LatexCatsuitGirlRed",
            gender="female",
            chance=75,
        },
        LatexCatsuitGirlFull = {
            name="LatexCatsuitGirlFull",
            gender="female",
            chance=75,
        },
        Classy = {
            name="Classy",
            gender="male",
            chance=75,
        },
    }
end

if ZombiesZoneDefinition.Nightclub then
    table.insert(ZombiesZoneDefinition.Nightclub, {name = "LatexCatsuitGirlNude", chance=50})
    table.insert(ZombiesZoneDefinition.Nightclub, {name = "LatexCatsuitGirlBlack", chance=50})
    table.insert(ZombiesZoneDefinition.Nightclub, {name = "LatexCatsuitGirlRed", chance=50})
    table.insert(ZombiesZoneDefinition.Nightclub, {name = "LatexCatsuitGirlFull", chance=50})
else
    ZombiesZoneDefinition.Nightclub = {
        chanceToSpawn = 100,
        HookerM = {
            name="Hooker",
            toSpawn=3,
            gender="female",
            mandatory="true",
        },
        Hooker = {
            name="Hooker",
            gender="female",
            chance=75,
        },
        LatexCatsuitGirlNude = {
            name="LatexCatsuitGirlNude",
            gender="female",
            chance=50,
        },
        LatexCatsuitGirlBlack = {
            name="LatexCatsuitGirlBlack",
            gender="female",
            chance=50,
        },
        LatexCatsuitGirlRed = {
            name="LatexCatsuitGirlRed",
            gender="female",
            chance=50,
        },
        LatexCatsuitGirlFull = {
            name="LatexCatsuitGirlFull",
            gender="female",
            chance=50,
        },
        Classy = {
            name="Classy",
            chance=75,
        },
    }
end