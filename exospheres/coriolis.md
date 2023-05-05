
<a id='Coriolis'></a>

<a id='Coriolis-1'></a>

# Coriolis


For many applications on extraterrestrial bodies, the rotation of the body is changing the velocities and landing coordinates.


<a id='Manual'></a>

<a id='Manual-1'></a>

## Manual


The coriolis functions 


```julia
# load and use ExESS package
include(joinpath(PATH_TO_PKG, "src", "ExESS.jl"))
using .ExESS

# variable setup
P = LUNAR_DAY       # rotational period of the Moon in seconds
t = 100             # flight duration in seconds
r = LUNAR_RADIUS    # mean radius of the Moon in meter

# coriolis functions
coriolis_longitude(t, P)
coriolis_velocity(r, P)
```


<a id='Examples'></a>

<a id='Examples-1'></a>

## Examples


<a id='API'></a>

<a id='API-1'></a>

## API

<a id='Main.ExESS.coriolis_longitude' href='#Main.ExESS.coriolis_longitude'>#</a>
**`Main.ExESS.coriolis_longitude`** &mdash; *Function*.



```julia
[1] coriolis_longitude(t::Real, P::Real)::Float32
```

Calculates the longitudinal shift due to the rotation of a body, based on the passed time  `t` and the rotational period `P`.

<a id='Main.ExESS.coriolis_velocity' href='#Main.ExESS.coriolis_velocity'>#</a>
**`Main.ExESS.coriolis_velocity`** &mdash; *Function*.



```julia
[1] coriolis_velocity(r::Real, P::Real)::Vector{Float32}
[2] coriolis_velocity(r::Real, P::Real, lat::Real)::Vector{Float32}
```

Calculates the velocity vector resulting from the coriolis effect.

---

**`[1]`** Based on the radius to the center of rotation `r` and the rotational period `P`.

---

**`[2]`** Based on the radius of the sphere `r`, the latitude from the equator (plane of  rotation) `lat`, and the rotational period `P`.

<a id='Main.ExESS.rotational_velocity' href='#Main.ExESS.rotational_velocity'>#</a>
**`Main.ExESS.rotational_velocity`** &mdash; *Function*.



```julia
[1] rotational_velocity(r::Real, P::Real)::Float32
[2] rotational_velocity(r::Real, P::Real, lat::Real)::Float32
```

Calculates the rotational velocity.

---

**`[1]`** Based on the radius to the center of rotation `r` and the rotational period `P`.

---

**`[2]`** Based on the radius of the sphere `r`, the latitude from the equator (plane of  rotation) `lat`, and the rotational period `P`.

