
<a id='Orbital-Mechanics'></a>

<a id='Orbital-Mechanics-1'></a>

# Orbital Mechanics


The following functions are based on the following two works:


  * [Walter, U., 2018. Astronautics, The Physics of Space Flight. 3 ed., Springer Cham.](https://doi.org/10.1007/978-3-319-74373-8)
  * [N. Schörghofer, User guide, planetary-code-collection: Thermal and ice evolution models for planetary surfaces, 2002-2022](https://github.com/nschorgh/Planetary-Code-Collection)


The general form of every function in this orbital mechanics library is `<output-name>_<input-symbol-1>[_<input-symbol-2>][...]`. Thus, there are multiple ways of calculating the desired output.


| Name                       | Equation(s)                                                                                                      | Function                                                                                     |
|:-------------------------- |:---------------------------------------------------------------------------------------------------------------- |:-------------------------------------------------------------------------------------------- |
| Azimuth angle              | $\alpha(\textbf{v}) = \cos^{-1} \left( \frac{v_2}{\sqrt{v_1^2 + v_2^2}} \right)$                                 | [`azimuth_angle_v`](orbital_mechanics.md#Main.ExESS.azimuth_angle_v)                         |
| Eccentric Anomaly          | $E(e, \theta) = 2 \cdot \tan^{-1} \left( \sqrt{\frac{1-e}{1+e}} \cdot \tan\left(\frac{\theta}{2}\right) \right)$ | [`eccentric_anomaly_e_theta`](orbital_mechanics.md#Main.ExESS.eccentric_anomaly_e_theta)     |
| Eccentric Anomaly          | $E_0(e, M) = M \\ E_{n+1}(e, M) = M + e \cdot \sin E_n$                                                          | [`eccentric_anomaly_e_M`](orbital_mechanics.md#Main.ExESS.eccentric_anomaly_e_M)             |
| Eccentricity               | $e(f_2, \alpha) = \sqrt{1 - 4 \cdot f_2 \cdot (1 - f_2) \cdot \sin^2\alpha }$                                    | [`eccentricity_f2_alpha`](orbital_mechanics.md#Main.ExESS.eccentricity_f2_alpha)             |
| Eccentricity               | $e(f_2, \textbf{v}) = e(f_2, \alpha(\textbf{v}))$                                                                | [`eccentricity_f2_v`](orbital_mechanics.md#Main.ExESS.eccentricity_f2_v)                     |
| Eccentricity               | $e(r, m, \textbf{v}) = e(f_2(r, m, \textbf{v}), \alpha(\textbf{v}))$                                             | [`eccentricity_r_m_v`](orbital_mechanics.md#Main.ExESS.eccentricity_r_m_v)                   |
| Escape velocity            | $v_{esc}(r, m)=\sqrt{\frac{2 \cdot G m}{r}}$                                                                     | [`escape_velocity_r_m`](orbital_mechanics.md#Main.ExESS.escape_velocity_r_m)                 |
| Squared $v_{esc}$ fraction | $f_2(v_{esc}, \textbf{v}) = \left( \frac{\|\textbf{v}\|}{v_{esc}} \right)^2$                                     | [`fvesc2_vesc_v`](orbital_mechanics.md#Main.ExESS.fvesc2_vesc_v)                             |
| Squared $v_{esc}$ fraction | $f_2(r, m, \textbf{v}) = f_2(v_{esc}(r, m), \textbf{v})$                                                         | [`fvesc2_r_m_v`](orbital_mechanics.md#Main.ExESS.fvesc2_r_m_v)                               |
| Ground distance            | $d(R, d\theta) = d\theta \cdot R$                                                                                | [`ground_distance_R_dtheta`](orbital_mechanics.md#Main.ExESS.ground_distance_R_dtheta)       |
| Ground distance            | $d(R, a, e) = d(R, \theta(R, a, e))$                                                                             | [`ground_distance_R_a_e`](orbital_mechanics.md#Main.ExESS.ground_distance_R_a_e)             |
| Mean anomaly               | $M(e, E) = E - e \cdot \sin E$                                                                                   | [`mean_anomaly_e_E`](orbital_mechanics.md#Main.ExESS.mean_anomaly_e_E)                       |
| Mean anomaly               | $M(e, \theta) = M(e, E(e, \theta))$                                                                              | [`mean_anomaly_e_theta`](orbital_mechanics.md#Main.ExESS.mean_anomaly_e_theta)               |
| Orbital period             | $P(a, m) = 2\pi \cdot \sqrt{\frac{a^3}{Gm}}$                                                                     | [`orbit_period_a_m`](orbital_mechanics.md#Main.ExESS.orbit_period_a_m)                       |
| Orbit time                 | $t(M, P) = M \cdot \frac{P}{2\pi}$                                                                               | [`orbit_time_M_P`](orbital_mechanics.md#Main.ExESS.orbit_time_M_P)                           |
| Orbit time                 | $t(e, E, P) = t(M(e, E), P)$                                                                                     | [`orbit_time_e_E_P`](orbital_mechanics.md#Main.ExESS.orbit_time_e_E_P)                       |
| Orbit time                 | $t(e, \theta, P) = t(e, E(e, \theta), P)$                                                                        | [`orbit_time_e_theta_P`](orbital_mechanics.md#Main.ExESS.orbit_time_e_theta_P)               |
| Semi-latus rectum          | $p(a, e) = a \cdot (1 - e^2)$                                                                                    | [`semi_latus_rectum_a_e`](orbital_mechanics.md#Main.ExESS.semi_latus_rectum_a_e)             |
| Semi-latus rectum          | $p(r, e, \theta) = r \cdot (1 + e \cdot \cos \theta)$                                                            | [`semi_latus_rectum_r_e_theta`](orbital_mechanics.md#Main.ExESS.semi_latus_rectum_r_e_theta) |
| Semi-major axis            | $a(r, f_2)  = \frac{r}{2 \cdot (1 - f_2)}$                                                                       | [`semi_major_axis_r_f2`](orbital_mechanics.md#Main.ExESS.semi_major_axis_r_f2)               |
| Semi-major axis            | $a(r, m, \textbf{v})  = a(r, f_2(r, m, \textbf{v}))$                                                             | [`semi_major_axis_r_m_v`](orbital_mechanics.md#Main.ExESS.semi_major_axis_r_m_v)             |
| Semi-major axis            | $a(p, e) = \frac{p}{1 - e^2}$                                                                                    | [`semi_major_axis_p_e`](orbital_mechanics.md#Main.ExESS.semi_major_axis_p_e)                 |
| Semi-major axis            | $a(r, e, \theta) = \frac{r \cdot (1 + e\cdot\cos\theta)}{1 - e^2}$                                               | [`semi_major_axis_r_e_theta`](orbital_mechanics.md#Main.ExESS.semi_major_axis_r_e_theta)     |
| True anomaly               | $\theta(r, a, e) = \cos^{-1} \left( \frac{1}{e} \cdot \left( \frac{a}{r} \cdot (1 - e^2) - 1 \right) \right)$    | [`true_anomaly_r_a_e`](orbital_mechanics.md#Main.ExESS.true_anomaly_r_a_e)                   |
| True anomaly               | $\theta(e, f_2) = \cos^{-1} \left( \frac{1}{e} \cdot \left( \frac{1 - e^2}{2 - 2 \cdot f_2} - 1 \right) \right)$ | [`true_anomaly_e_f2`](orbital_mechanics.md#Main.ExESS.true_anomaly_e_f2)                     |
| Zenith angle               | $\beta(\textbf{v}) = \tan^{-1} \left( \frac{\sqrt{v_1^2 + v_2^2}}{v_3} \right)$                                  | [`zenith_angle_v`](orbital_mechanics.md#Main.ExESS.zenith_angle_v)                           |


!!! note "Symbols"
    Note that the bold letter $\textbf{v}$ denotes the velocity **vector**. In these cases the program assumes that the vector is three-dimensional.



<a id='API'></a>

<a id='API-1'></a>

## API

<a id='Main.ExESS.azimuth_angle_v' href='#Main.ExESS.azimuth_angle_v'>#</a>
**`Main.ExESS.azimuth_angle_v`** &mdash; *Function*.



```julia
[1] azimuth_angle_v(v::AbstractVector)::Float32
[2] azimuth_angle_v(v::CartesianSphericalVelocity)::Float32
```

Calculates the azimuth angle of the launch velocity vector `v`.

$$
    \alpha(\textbf{v}) = \cos^{-1} \left( \frac{v_2}{\sqrt{v_1^2 + v_2^2}} \right)
$$

  * $\alpha$: azimuth angle
  * $\textbf{v} = \left[ v_1, v_2, v_3 \right]^T$: velocity vector

<a id='Main.ExESS.eccentric_anomaly_e_M' href='#Main.ExESS.eccentric_anomaly_e_M'>#</a>
**`Main.ExESS.eccentric_anomaly_e_M`** &mdash; *Function*.



```julia
[1] eccentric_anomaly_e_M(e::Real, M::Real, N=10)::Float32
```

Calculates the eccentric anomaly given the orbit's eccentricity `e` and the mean anomaly `M`,  which triggers a numerical approximation with `N` steps.

**Alternative Functions**

  * `eccentric_anomaly_e_theta`

<a id='Main.ExESS.eccentric_anomaly_e_theta' href='#Main.ExESS.eccentric_anomaly_e_theta'>#</a>
**`Main.ExESS.eccentric_anomaly_e_theta`** &mdash; *Function*.



```julia
[1] eccentric_anomaly_e_theta(e::Real, theta::Real)::Float32
```

Calculates the eccentric anomaly given the orbit's eccentricity `e` and the true anomaly `theta`. The result is normalized to `[0,2π)`.

**Alternative Functions**

  * `eccentric_anomaly_e_M`

<a id='Main.ExESS.eccentricity_f2_alpha' href='#Main.ExESS.eccentricity_f2_alpha'>#</a>
**`Main.ExESS.eccentricity_f2_alpha`** &mdash; *Function*.



```julia
[1] eccentricity_f2_alpha(f2::Real, alpha::Real)::Float32
```

Calculates the eccentricity of an elliptical trajetory based on the squared escape velocity fraction `f2`, and the zenith launch angle `alpha`.

**Alternative Functions**

  * `eccentricity_f2_v`
  * `eccentricity_r_m_v`

<a id='Main.ExESS.eccentricity_f2_v' href='#Main.ExESS.eccentricity_f2_v'>#</a>
**`Main.ExESS.eccentricity_f2_v`** &mdash; *Function*.



```julia
[1] eccentricity_f2_v(f2::Real, v::AbstractVector)::Float32
[2] eccentricity_f2_v(f2::Real, v::CartesianSphericalVelocity)::Float32
```

Calculates the eccentricity of an elliptical trajetory based on the squared escape velocity fraction `f2`, and the velocity vector `v`.

**Alternative Functions**

  * `eccentricity_f2_alpha`
  * `eccentricity_r_m_v`

<a id='Main.ExESS.eccentricity_r_m_v' href='#Main.ExESS.eccentricity_r_m_v'>#</a>
**`Main.ExESS.eccentricity_r_m_v`** &mdash; *Function*.



```julia
[1] eccentricity_r_m_v(r::Real, m::Real, v::AbstractVector)::Float32
[2] eccentricity_r_m_v(r::Real, m::Real, v::CartesianSphericalVelocity)::Float32
```

Calculates the eccentricity of an elliptical trajetory based on the orbital radius `r`, the body's mass `m`, and the velocity vector `v`.

**Alternative Functions**

  * `eccentricity_f2_alpha`
  * `eccentricity_f2_v`

<a id='Main.ExESS.escape_velocity_r_m' href='#Main.ExESS.escape_velocity_r_m'>#</a>
**`Main.ExESS.escape_velocity_r_m`** &mdash; *Function*.



```julia
[1] escape_velocity_r_m(r::Real, m::Real)::Float32
```

Calculates the magnitude of the escape velocity for an orbital radius `r` and body mass `m`.

<a id='Main.ExESS.flight_time_t0_t1' href='#Main.ExESS.flight_time_t0_t1'>#</a>
**`Main.ExESS.flight_time_t0_t1`** &mdash; *Function*.



```julia
[1] flight_time_t0_t1(t0::Real, t1::Real)::Float32
```

Calculates the time of flight between the two orbital times `t0` and `t1`.

**Alternative Functions**

  * `flight_time_t0_P`
  * `flight_time_e_theta0_theta1_P`
  * `flight_time_e_theta0_P`

<a id='Main.ExESS.flight_time_t0_P' href='#Main.ExESS.flight_time_t0_P'>#</a>
**`Main.ExESS.flight_time_t0_P`** &mdash; *Function*.



```julia
[1] flight_time_t0_P(t0::Real, P::Real)::Float32
```

Calculates the time of flight, given a symmetrical trajectory with a starting orbital time of `t0` and a landing orbital time of `P-t0`, with the orbital period `P`. 

**Alternative Functions**

  * `flight_time_t0_t1`
  * `flight_time_e_theta0_theta1_P`
  * `flight_time_e_theta0_P`

<a id='Main.ExESS.flight_time_e_theta0_theta1_P' href='#Main.ExESS.flight_time_e_theta0_theta1_P'>#</a>
**`Main.ExESS.flight_time_e_theta0_theta1_P`** &mdash; *Function*.



```julia
[1] flight_time_e_theta0_theta1_P(e::Real, theta0::Real, theta1::Real, P::Real)::Float32
```

Calculates the time of flight between the two orbital positions `theta0` and `theta1`, given the eccentricity `e` and period `P` of the orbit.

**Alternative Functions**

  * `flight_time_t0_t1`
  * `flight_time_t0_P`
  * `flight_time_e_theta0_P`

<a id='Main.ExESS.flight_time_e_theta0_P' href='#Main.ExESS.flight_time_e_theta0_P'>#</a>
**`Main.ExESS.flight_time_e_theta0_P`** &mdash; *Function*.



```julia
[1] flight_time_e_theta0_P(e::Real, theta0::Real, P::Real)::Float32
```

Calculates the time of flight, given a symmetrical trajectory between the two orbital  positions `theta0` and `2π - theta0`, given the eccentricity `e` and period `P` of the orbit.

**Alternative Functions**

  * `flight_time_t0_t1`
  * `flight_time_t0_P`
  * `flight_time_e_theta0_theta1_P`

<a id='Main.ExESS.fvesc2_vesc_v' href='#Main.ExESS.fvesc2_vesc_v'>#</a>
**`Main.ExESS.fvesc2_vesc_v`** &mdash; *Function*.



```julia
[1] fvesc2_vesc_v(vesc::Real, v::AbstractVector)::Float32
[2] fvesc2_vesc_v(vesc::Real, v::CartesianSphericalVelocity)::Float32
```

Calculates the squared fraction of the velocity vector `v` with respect to the escape velocity `vesc`.

**Alternative Functions**

  * `fvesc2_r_m_v`
  * `fvesc2_r_a`
  * `fvesc2_e_theta`

<a id='Main.ExESS.fvesc2_r_m_v' href='#Main.ExESS.fvesc2_r_m_v'>#</a>
**`Main.ExESS.fvesc2_r_m_v`** &mdash; *Function*.



```julia
[1] fvesc2_r_m_v(r::Real, m::Real, v::AbstractVector)::Float32
[2] fvesc2_r_m_v(r::Real, m::Real, v::CartesianSphericalVelocity)::Float32
```

Calculates the squared fraction of the velocity vector `v`, based on the orbital radius  `r` and the body's mass `m`.

**Alternative Functions**

  * `fvesc2_vesc_v`
  * `fvesc2_r_a`
  * `fvesc2_e_theta`

<a id='Main.ExESS.fvesc2_r_a' href='#Main.ExESS.fvesc2_r_a'>#</a>
**`Main.ExESS.fvesc2_r_a`** &mdash; *Function*.



```julia
[1] fvesc2_r_a(r::Real, a::Real)::Float32
```

Calculates the squared fraction of the velocity at the radial position `r` on an orbit defined through the semi-major axis `a`.

**Alternative Functions**

  * `fvesc2_vesc_v`
  * `fvesc2_r_m_v`
  * `fvesc2_e_theta`

<a id='Main.ExESS.fvesc2_e_theta' href='#Main.ExESS.fvesc2_e_theta'>#</a>
**`Main.ExESS.fvesc2_e_theta`** &mdash; *Function*.



```julia
[1] fvesc2_e_theta(e::Real, theta::Real)::Float32
```

Calculates the squared fraction of the velocity at the angular position `theta` on an orbit defined through the eccentricity `e`.

**Alternative Functions**

  * `fvesc2_vesc_v`
  * `fvesc2_r_m_v`
  * `fvesc2_r_a`

<a id='Main.ExESS.ground_distance_R_dtheta' href='#Main.ExESS.ground_distance_R_dtheta'>#</a>
**`Main.ExESS.ground_distance_R_dtheta`** &mdash; *Function*.



```julia
[1] ground_distance_R_dtheta(R::Real, dtheta::Real)::Float32
```

Calculates the ground flight distance covered by an angle `dtheta` of an elliptical orbit,  which intersects with a body of radius `R`.

**Alternative Functions**

  * `ground_distance_R_a_e`

<a id='Main.ExESS.ground_distance_R_a_e' href='#Main.ExESS.ground_distance_R_a_e'>#</a>
**`Main.ExESS.ground_distance_R_a_e`** &mdash; *Function*.



```julia
[1] ground_distance_R_a_e(R::Real, a::Real, e::Real)::Float32
```

Calculates the ground flight distance covered based on the radius of the body `R`, the  orbit's semi-major axis `a`, and the eccentricity `e`.

**Alternative Functions**

  * `ground_distance_R_dtheta`

<a id='Main.ExESS.mean_anomaly_e_E' href='#Main.ExESS.mean_anomaly_e_E'>#</a>
**`Main.ExESS.mean_anomaly_e_E`** &mdash; *Function*.



```julia
[1] mean_anomaly_e_E(e::Real, E::Real)::Float32
```

Calculates the mean anomaly, given the orbit's eccentricity `e` and the eccentric anomaly `E`.

**Alternative Functions**

  * `mean_anomaly_e_theta`

<a id='Main.ExESS.mean_anomaly_e_theta' href='#Main.ExESS.mean_anomaly_e_theta'>#</a>
**`Main.ExESS.mean_anomaly_e_theta`** &mdash; *Function*.



```julia
[1] mean_anomaly_e_theta(e::Real, theta::Real)::Float32
```

Calculates the mean anomaly, given the orbit's eccentricity `e` and the true anomaly `theta`.

**Alternative Functions**

  * `mean_anomaly_e_E`

<a id='Main.ExESS.orbit_period_a_m' href='#Main.ExESS.orbit_period_a_m'>#</a>
**`Main.ExESS.orbit_period_a_m`** &mdash; *Function*.



```julia
[1] orbit_period_a_m(a::Real, m::Real)::Float32
```

Calculates the period of an elliptical orbit, based on the semi-major axis `a`, and the body's mass `m`.

<a id='Main.ExESS.orbit_time_M_P' href='#Main.ExESS.orbit_time_M_P'>#</a>
**`Main.ExESS.orbit_time_M_P`** &mdash; *Function*.



```julia
[1] orbit_time_M_P(M::Real, P::Real)::Float32
```

Calculates the time at the position of an orbit defined through the mean anomaly `M`, as  well as the orbital period `P`.

**Alternative Functions**

  * `orbit_time_e_E_P`
  * `orbit_time_e_theta_P`

<a id='Main.ExESS.orbit_time_e_E_P' href='#Main.ExESS.orbit_time_e_E_P'>#</a>
**`Main.ExESS.orbit_time_e_E_P`** &mdash; *Function*.



```julia
[1] orbit_time_e_E_P(e::Real, E::Real, P::Real)::Float32
```

Calculates the time at the position of an orbit defined through the eccentric anomaly `E`,  the eccentricity `e`, and the orbital period `P`.

**Alternative Functions**

  * `orbit_time_M_P`
  * `orbit_time_e_theta_P`

<a id='Main.ExESS.orbit_time_e_theta_P' href='#Main.ExESS.orbit_time_e_theta_P'>#</a>
**`Main.ExESS.orbit_time_e_theta_P`** &mdash; *Function*.



```julia
[1] orbit_time_e_theta_P(e::Real, theta::Real, P::Real)::Float32
```

Calculates the time at the position of an orbit defined through the true anomaly `theta`,  the eccentricity `e`, and the orbital period `P`.

**Alternative Functions**

  * `orbit_time_M_P`
  * `orbit_time_e_E_P`

<a id='Main.ExESS.semi_latus_rectum_a_e' href='#Main.ExESS.semi_latus_rectum_a_e'>#</a>
**`Main.ExESS.semi_latus_rectum_a_e`** &mdash; *Function*.



```julia
[1] semi_latus_rectum_a_e(a::Real, e::Real)::Float32
```

Calculates the semi-latus-rectum of the elliptical trajetory defined through the semi-major axis `a` and the eccentricity `e`.

**Alternative Functions**

  * `semi_latus_rectum_r_e_theta`

<a id='Main.ExESS.semi_latus_rectum_r_e_theta' href='#Main.ExESS.semi_latus_rectum_r_e_theta'>#</a>
**`Main.ExESS.semi_latus_rectum_r_e_theta`** &mdash; *Function*.



```julia
[1] semi_latus_rectum_r_e_theta(r::Real, e::Real, theta::Real)::Float32
```

Calculates the semi-latus-rectum of the elliptical trajetory based on the orbital radius `r`, the eccentricity `e`, and the true anomaly `theta`

**Alternative Functions**

  * `semi_latus_rectum_a_e`

<a id='Main.ExESS.semi_major_axis_r_f2' href='#Main.ExESS.semi_major_axis_r_f2'>#</a>
**`Main.ExESS.semi_major_axis_r_f2`** &mdash; *Function*.



```julia
[1] semi_major_axis_r_f2(r::Real, f2::Real)::Float32
```

Calculates the semi-major axis of an elliptical orbit with the current orbital  radius `r` and the trajectory's squared escape velocity fraction `f2`.

**Alternative Functions**

  * `semi_major_axis_r_m_v`
  * `semi_major_axis_p_e`
  * `semi_major_axis_r_e_theta`

<a id='Main.ExESS.semi_major_axis_r_m_v' href='#Main.ExESS.semi_major_axis_r_m_v'>#</a>
**`Main.ExESS.semi_major_axis_r_m_v`** &mdash; *Function*.



```julia
[1] semi_major_axis_r_m_v(r::Real, m::Real, v::AbstractVector)::Float32
[2] semi_major_axis_r_m_v(r::Real, m::Real, v::CartesianSphericalVelocity)::Float32
```

Calculates the semi-major axis of an elliptical orbit with the current orbital  radius `r`, the body's mass `m`, and the velocity vector `v`.

**Alternative Functions**

  * `semi_major_axis_r_f2`
  * `semi_major_axis_p_e`
  * `semi_major_axis_r_e_theta`

<a id='Main.ExESS.semi_major_axis_p_e' href='#Main.ExESS.semi_major_axis_p_e'>#</a>
**`Main.ExESS.semi_major_axis_p_e`** &mdash; *Function*.



```julia
[1] semi_major_axis_p_e(p::Real, e::Real)::Float32
```

Calculates the semi-major axis of an elliptical orbit with the semi-latus rectum `p` and  eccentricity `e`.

**Alternative Functions**

  * `semi_major_axis_r_f2`
  * `semi_major_axis_r_m_v`
  * `semi_major_axis_r_e_theta`

<a id='Main.ExESS.semi_major_axis_r_e_theta' href='#Main.ExESS.semi_major_axis_r_e_theta'>#</a>
**`Main.ExESS.semi_major_axis_r_e_theta`** &mdash; *Function*.



```julia
[1] semi_major_axis_r_e_theta(r::Real, e::Real, theta::Real)::Float32
```

Calculates the semi-major axis of an elliptical orbit with the oribital radius `r`, the eccentricity `e`, and the true anomaly `theta`.

**Alternative Functions**

  * `semi_major_axis_r_f2`
  * `semi_major_axis_r_m_v`
  * `semi_major_axis_p_e`

<a id='Main.ExESS.true_anomaly_r_a_e' href='#Main.ExESS.true_anomaly_r_a_e'>#</a>
**`Main.ExESS.true_anomaly_r_a_e`** &mdash; *Function*.



```julia
[1] true_anomaly_r_a_e(r::Real, a::Real, e::Real)::Float32
```

Calculates the true anomaly at the radial position `r` based on the semi-major axis `a`, and the eccentricity of the orbit `e`.

**Alternative Functions**

  * `true_anomaly_e_f2`
  * `true_anomaly_f2_v`

<a id='Main.ExESS.true_anomaly_e_f2' href='#Main.ExESS.true_anomaly_e_f2'>#</a>
**`Main.ExESS.true_anomaly_e_f2`** &mdash; *Function*.



```julia
[1] true_anomaly_e_f2(e::Real, f2::Real)::Float32
```

Calculates the true anomaly based on the eccentricity of the orbit `e` and the current squared escape velocity fraction `f2`.

**Alternative Functions**

  * `true_anomaly_r_a_e`
  * `true_anomaly_f2_v`

<a id='Main.ExESS.true_anomaly_f2_v' href='#Main.ExESS.true_anomaly_f2_v'>#</a>
**`Main.ExESS.true_anomaly_f2_v`** &mdash; *Function*.



```julia
[1] true_anomaly_f2_v(f2::Real, v::AbstractVector)::Float32
[2] true_anomaly_f2_v(f2::Real, v::CartesianSphericalVelocity)::Float32
```

Calculates the true anomaly based on the current velocity vector `v` and the current squared escape velocity fraction `f2`.

**Alternative Functions**

  * `true_anomaly_r_a_e`
  * `true_anomaly_e_f2`

<a id='Main.ExESS.zenith_angle_v' href='#Main.ExESS.zenith_angle_v'>#</a>
**`Main.ExESS.zenith_angle_v`** &mdash; *Function*.



```julia
[1] zenith_angle_v(v::AbstractVector)::Float32
[2] zenith_angle_v(v::CartesianSphericalVelocity)::Float32
```

Calculates the zenith launch angle based on the launch velocity vector `v`.

