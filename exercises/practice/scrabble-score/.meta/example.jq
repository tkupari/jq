(
    []
    | .[65]=1      # A
    | .[66]=3      # B
    | .[67]=3      # C
    | .[68]=2      # D
    | .[69]=1      # E
    | .[70]=4      # F
    | .[71]=2      # G
    | .[72]=4      # H
    | .[73]=1      # I
    | .[74]=8      # J
    | .[75]=5      # K
    | .[76]=1      # L
    | .[77]=3      # M
    | .[78]=1      # N
    | .[79]=1      # O
    | .[80]=3      # P
    | .[81]=10     # Q
    | .[82]=1      # R
    | .[83]=1      # S
    | .[84]=1      # T
    | .[85]=1      # U
    | .[86]=4      # V
    | .[87]=4      # W
    | .[88]=8      # X
    | .[89]=4      # Y
    | .[90]=10     # Z
) as $tiles
| ascii_upcase
| . + " "               # no empty strings
| explode
| map($tiles[.] // 0)
| add