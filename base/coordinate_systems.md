
<a id='Coordinate-Systems'></a>

<a id='Coordinate-Systems-1'></a>

# Coordinate Systems


Currently there are two different custom position and three velocity types implemented, based on a total of three coordinate systems (CS):


  * fixed, cartesian coordinate system (CCS, subscript "c")
  * fixed, spherical coordinate system (SCS, subscript "s")
  * rotating (local) cartesian (spherical) coordinate system (CSCS, subscript "cs")


<a id='API'></a>

<a id='API-1'></a>

## API

<a id='Main.ExESS.CartesianPosition' href='#Main.ExESS.CartesianPosition'>#</a>
**`Main.ExESS.CartesianPosition`** &mdash; *Type*.



```julia
[1] CartesianPosition(x::Real, y::Real, z::Real)
[2] CartesianPosition(X::Vector{<:Real})
[3] CartesianPosition(xc::CartesianPosition)
[4] CartesianPosition(xs::SphericalPosition)
```

Defines a three dimensional, fixed, cartesian position vector. The vector can be created based on positional or vectorial input for `x`, `y`, and `z`, or using a positional vector in another coordinate system like `SphericalPosition`, which automatically converts the vector into cartesian coordinates. ```

<a id='Main.ExESS.CartesianSphericalVelocity' href='#Main.ExESS.CartesianSphericalVelocity'>#</a>
**`Main.ExESS.CartesianSphericalVelocity`** &mdash; *Type*.



```julia
[1] CartesianSphericalVelocity(x::Real, y::Real, z::Real)
[2] CartesianSphericalVelocity(V::Vector{<:Real})
[3] CartesianSphericalVelocity(vcs::CartesianSphericalVelocity)
[4] CartesianSphericalVelocity(xc::CartesianPosition, vc::CartesianVelocity)
[5] CartesianSphericalVelocity(xs::SphericalPosition, vc::CartesianVelocity)
[6] CartesianSphericalVelocity(xc::CartesianPosition, vs::SphericalVelocity)
[7] CartesianSphericalVelocity(xs::SphericalPosition, vs::SphericalVelocity)
```

Three dimensional velocity vector in a local cartesian coordinate system along spherical directions. The x-axis points along the radial position, based on the respective body's center. The y-axis points towards positive longitude and the z-axis towards positive latitude.

The velocity vector can be created through direct input for `x`, `y`, and `z`, or 

<a id='Main.ExESS.CartesianVelocity' href='#Main.ExESS.CartesianVelocity'>#</a>
**`Main.ExESS.CartesianVelocity`** &mdash; *Type*.



```julia
[1] CartesianVelocity(x::Real, y::Real, z::Real)
[2] CartesianVelocity(V::Vector{<:Real})
[3] CartesianVelocity(vc::CartesianVelocity)
[4] CartesianVelocity(xc::CartesianPosition, vcs::CartesianSphericalVelocity)
[5] CartesianVelocity(xs::SphericalPosition, vcs::SphericalVelocity)
[6] CartesianVelocity(xc::CartesianPosition, vs::CartesianSphericalVelocity)
[7] CartesianVelocity(xs::SphericalPosition, vs::SphericalVelocity)
```

<a id='Main.ExESS.SphericalPosition' href='#Main.ExESS.SphericalPosition'>#</a>
**`Main.ExESS.SphericalPosition`** &mdash; *Type*.



```julia
[1] SphericalPosition(r::Real, theta::Real, phi::Real)
[2] SphericalPosition(X::Vector{<:Real})
[3] SphericalPosition(xs::SphericalPosition)
[4] SphericalPosition(xc::CartesianPosition)
```

<a id='Main.ExESS.SphericalVelocity' href='#Main.ExESS.SphericalVelocity'>#</a>
**`Main.ExESS.SphericalVelocity`** &mdash; *Type*.



```julia
[1] SphericalVelocity(r::Real, theta::Real, phi::Real)
[2] SphericalVelocity(V::Vector{<:Real})
[3] SphericalVelocity(vs::SphericalVelocity)
[4] SphericalVelocity(xc::CartesianPosition, vc::CartesianVelocity)
[5] SphericalVelocity(xs::SphericalPosition, vc::CartesianVelocity)
[6] SphericalVelocity(xc::CartesianPosition, vcs::CartesianSphericalVelocity)
[7] SphericalVelocity(xs::SphericalPosition, vcs::CartesianSphericalVelocity)
```


<a id='Base-Extensions'></a>

<a id='Base-Extensions-1'></a>

### `Base` Extensions

<a id='Base.:+' href='#Base.:+'>#</a>
**`Base.:+`** &mdash; *Function*.



```julia
[1] Base.:+(a::T, b::T) where {T<:AbstractPosVel}
[2] Base.:+(a::T, b::S) where {T<:AbstractPosition, S<:AbstractPosition}
[3] Base.:+(a::T, b::Vector{<:Real}) where {T<:AbstractPosVel}
[4] Base.:+(a::Vector{<:Real}, b::T) where {T<:AbstractPosVel}
```

Base extension to add simple addition of custom position and velocity vectors. 

<a id='Base.:-' href='#Base.:-'>#</a>
**`Base.:-`** &mdash; *Function*.



```julia
[1] Base.:-(a::T, b::T) where {T<:AbstractPosVel}
[2] Base.:-(a::T, b::S) where {T<:AbstractPosition, S<:AbstractPosition}
[3] Base.:-(a::T, b::Vector{<:Real}) where {T<:AbstractPosVel}
[4] Base.:-(a::Vector{<:Real}, b::T) where {T<:AbstractPosVel}
```

Base extension to add simple subtraction of custom position and velocity vectors. 

<a id='Base.:*' href='#Base.:*'>#</a>
**`Base.:*`** &mdash; *Function*.



```julia
[1] Base.:*(a::T, b::Real) where {T<:Union{CartesianPosition, CartesianVelocity, CartesianSphericalVelocity}}
[2] Base.:*(a::Real, b::T) where {T<:Union{CartesianPosition, CartesianVelocity, CartesianSphericalVelocity}}
[3] Base.:*(a::T, b::T) where {T<:Union{CartesianPosition, CartesianVelocity, CartesianSphericalVelocity}}
[4] Base.:*(a::T, b::S) where {T<:AbstractPosition, S<:AbstractPosition}
```

Base extension to add multiplication of custom position and velocity vectors. 

<a id='Base.get' href='#Base.get'>#</a>
**`Base.get`** &mdash; *Function*.



```julia
[1] Base.get(a::T) where {T<:Union{CartesianPosition, CartesianVelocity, CartesianSphericalVelocity}}
[2] Base.get(a::T) where {T<:Union{SphericalPosition, SphericalVelocity}}
```

Base extension of the `get` function used to return the fields of the specialized  vectors in their usual order $x, y, z$ and $r, \theta, \phi$.

<a id='Base.isapprox' href='#Base.isapprox'>#</a>
**`Base.isapprox`** &mdash; *Function*.



```julia
[1] Base.isapprox(a::T, b::T; rtol=1e-6) where {T<:AbstractPosVel}
[2] Base.isapprox(a::T, b::S; rtol=1e-6) where {T<:AbstractPosition, S<:AbstractPosition}
```

Base extension of the `isapprox` (or `≈`) function to compare specialized vectors. The function can handle two inputs of the same type for all special types as well as a comparison between all positional types interchangingly.

<a id='Base.isequal' href='#Base.isequal'>#</a>
**`Base.isequal`** &mdash; *Function*.



```julia
[1] Base.isequal(a::T, b::T; rtol=1e-6) where {T<:AbstractPosVel}
[2] Base.isequal(a::T, b::S; rtol=1e-6) where {T<:AbstractPosition, S<:AbstractPosition}
```

Base extension of the `isequal` (or `==`) function to compare specialized vectors. The function can handle two inputs of the same type for all special types as well as a comparison between all positional types interchangingly.


<a id='LinearAlgebra-Extensions'></a>

<a id='LinearAlgebra-Extensions-1'></a>

### `LinearAlgebra` Extensions


!!! warning "Missing docstring."
    Missing docstring for `dot`. Check Documenter's build log for details.



!!! warning "Missing docstring."
    Missing docstring for `norm`. Check Documenter's build log for details.


