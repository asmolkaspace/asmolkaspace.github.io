
<a id='Utility'></a>

<a id='Utility-1'></a>

# Utility


The base of [`ExESS`](../index.md#ExESS) is complimented with a set of utility functions shown below.


<a id='Manual'></a>

<a id='Manual-1'></a>

## Manual


Due to the large order of magnitude in some of the calculations of astronomical quantities, numerical issues like round-off issues can arise. This is especially detrimental for functions with a limited parameter space, like the inverse trigonometric functions for sine and cosine, which are only defined for $x \in [-1,1]$. To prevent a program failure, the function [`limit_acos`](utils.md#Main.ExESS.limit_acos) is implemented to handle input outside of the predefined parameter space for the `acos()` function


```julia-repl


julia> acos(-2)
ERROR: DomainError with -2.0:
acos(x) not defined for |x| > 1

Some of the types have been truncated in the stacktrace for improved reading. To emit complete information
in the stack trace, evaluate `TruncatedStacktraces.VERBOSE[] = true` and re-run the code.

julia> acos(-1)
3.141592653589793

julia> acos(0)
1.5707963267948966

julia> acos(1)
0.0

julia> acos(2)
ERROR: DomainError with 2.0:
acos(x) not defined for |x| > 1

Some of the types have been truncated in the stacktrace for improved reading. To emit complete information
in the stack trace, evaluate `TruncatedStacktraces.VERBOSE[] = true` and re-run the code.

julia> limit_acos(-2)
3.1415927f0

julia> limit_acos(-1)
3.1415927f0

julia> limit_acos(0)
1.5707964f0

julia> limit_acos(1)
0.0f0

julia> limit_acos(2)
0.0f0
```


!!! note "Caution"
    The [`limit_acos`](utils.md#Main.ExESS.limit_acos) function shall be used with caution, as it bypasses the natural domain check of `acos()`. Make sure that the use of [`limit_acos`](utils.md#Main.ExESS.limit_acos) is necessary and that the necessity originates from numerical issues, leading only sometimes to input values with an absolute value bigger than one.



<a id='API'></a>

<a id='API-1'></a>

## API

<a id='Main.ExESS.limit_acos' href='#Main.ExESS.limit_acos'>#</a>
**`Main.ExESS.limit_acos`** &mdash; *Function*.



```julia
[1] limit_acos(x::Real)::Float32
```

Extends the `acos` function for input outside of `[-1,1]` through clipping.

