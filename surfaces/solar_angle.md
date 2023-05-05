
<a id='Solar-Angle'></a>

<a id='Solar-Angle-1'></a>

# Solar Angle


For many processes regarding the surface of the extraterrestrial body, the incidence angle of the sunlight is an important factor. 


<a id='Manual'></a>

<a id='Manual-1'></a>

## Manual


Without any knowledge about the topology, the function [`solar_angle`](solar_angle.md#Main.ExESS.solar_angle) assumes that the body is a perfect sphere and that the angle between the surface normal at a certain position given as a subsolar longitude $\theta$ and latitude $\phi$ can be calculated as


$$
\alpha = \cos^{-1} \left( \cos(\theta) \cdot \cos(\phi) \right).
$$


Note that both angular arguments must be given in radians, with the results also being returned in radians.


```julia
lng = rand()*2*pi - pi
lat = rand()*pi - pi/2
solar_angle(lng, lat)
```


Additionally, the function can be called directly on a grid


```julia
using .ExESS
grid = Struct_2D_sGrid(180, 45)
solar_anlge(grid) # == solar_angle.(grid.lngs, grid.lats)
```


<a id='Examples'></a>

<a id='Examples-1'></a>

## Examples


<a id='API'></a>

<a id='API-1'></a>

## API

<a id='Main.ExESS.solar_angle' href='#Main.ExESS.solar_angle'>#</a>
**`Main.ExESS.solar_angle`** &mdash; *Function*.



```julia
[1] solar_angle(lng::Real, lat::Real)::Float32
[2] solar_angle(xs::SphericalPosition)::Float32
[3] solar_angle(grid::AbstractGrid)::Vector{Float32}
```

Calculate the solar incidence angle based in selenocentric coordinates given as `lng` and `lat` in radians. Providing a `grid` as the input argument automatically extracts the angular coordinates and returns all solar angles as a vector.

