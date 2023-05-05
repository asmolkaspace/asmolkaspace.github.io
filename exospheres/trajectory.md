
<a id='Trajectory'></a>

<a id='Trajectory-1'></a>

# Trajectory


<a id='Manual'></a>

<a id='Manual-1'></a>

## Manual


<a id='Examples'></a>

<a id='Examples-1'></a>

## Examples


<a id='API'></a>

<a id='API-1'></a>

## API

<a id='Main.ExESS.trajectory' href='#Main.ExESS.trajectory'>#</a>
**`Main.ExESS.trajectory`** &mdash; *Function*.



```julia
[1] trajectory(x0::CartesianPosition, v0::CartesianVelocity, m::Real, q::Real,
               force::Function, rspan::Tuple{Real, Real};
               alg=Tsit5(), tspan=(0f0,1f10), kwargs...)::ODESolution
```

Calculates the trajectory of a particle with mass `m`, charge `q`, starting at initial position `x0` with a launch velocity of `v0`, and traveling through a force field defined through the `force` function. For more information, see the documentation to the internal `_trajectory_` function.

The function returns the `ODESolution` object of the `DifferentialEquations.jl` package.

<a id='Main.ExESS.trajectory_lunar_gravity' href='#Main.ExESS.trajectory_lunar_gravity'>#</a>
**`Main.ExESS.trajectory_lunar_gravity`** &mdash; *Function*.



```julia
[1] trajectory_lunar_gravity(x0::CartesianPosition, v0::CartesianVelocity; reltol=1f-3)::ODESolution
```

Specialized version of the [`trajectory`](trajectory.md#Main.ExESS.trajectory) function to apply only for the calculation of trajectories on the Moon under the sole influence of its graviational well.

The solver automatically saves additional timesteps at the transition from Sun to shadow, and vice-versa.

<a id='Main.ExESS.gett' href='#Main.ExESS.gett'>#</a>
**`Main.ExESS.gett`** &mdash; *Function*.



```julia
[1] gett(traj::ODESolution, idx::Integer)::Float32
[2] gettall(traj::ODESolution)::Vector{Float32}
```

Returns the time of the `ODESolution` object, the trajectory `traj`, at the solution index `idx`, or at all saved time stamps.

<a id='Main.ExESS.getvc' href='#Main.ExESS.getvc'>#</a>
**`Main.ExESS.getvc`** &mdash; *Function*.



```julia
[1] getvc(traj::ODESolution, idx::Integer)::CartesianPosition
[2] getvc(traj::ODESolution)::Vector{CartesianPosition}
```

Returns the cartesian velocity of the `ODESolution` object, the trajectory `traj`, at the  solution index `idx`, or at all saved time stamps. 

<a id='Main.ExESS.getvs' href='#Main.ExESS.getvs'>#</a>
**`Main.ExESS.getvs`** &mdash; *Function*.



```julia
[1] getvs(traj::ODESolution, idx::Integer)::SphericalVelocity
[2] getvs(traj::ODESolution)::Vector{SphericalVelocity}
```

Returns the cartesian velocity of the `ODESolution` object, the trajectory `traj`, at the  solution index `idx`, or at all saved time stamps. 

<a id='Main.ExESS.getxc' href='#Main.ExESS.getxc'>#</a>
**`Main.ExESS.getxc`** &mdash; *Function*.



```julia
[1] getxc(traj::ODESolution, idx::Integer)::CartesianPosition
[2] getxc(traj::ODESolution)::Vector{CartesianPosition}
```

Returns the cartesian position of the `ODESolution` object, the trajectory `traj`, at the  solution index `idx`, or at all saved time stamps. 

<a id='Main.ExESS.getxs' href='#Main.ExESS.getxs'>#</a>
**`Main.ExESS.getxs`** &mdash; *Function*.



```julia
[1] getxs(traj::ODESolution, idx::Integer)::SphericalPosition
[2] getxs(traj::ODESolution)::Vector{SphericalPosition}
```

Returns the spherical position of the `ODESolution` object, the trajectory `traj`, at the  solution index `idx`, or at all saved time stamps. 

