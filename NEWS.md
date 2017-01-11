# bcmaps 0.6.2

* `fix_self_intersect` has been renamed to `fix_geo_problems` (but kept as an alias for now)
* `fix_geo_problems` can often also fix orphaned holes in addition to self-intersections.

# bcmaps 0.6.0

* Added `watersheds` dataset (#15, @markjohnsonubc)
* Added a `NEWS.md` file to track changes to the package.

# bcmaps 0.5.0

Added two new functions to create and work with SpatailPolygonsDataFrames with nested data frames:

- `self_union` performs a union on a single `SpatialPolygons*` object to take into account overlaps. Polygon attributes are combined in a nested dataframe.
- `get_poly_attribute` allows you to easily parse a nested data frame column (created by `self_union`) to extract or calculate the attributes you want

# bcmaps 0.4.0

Added a couple of convenience functions:

- `transform_bc_albers()` transforms a Spatial object to BC Albers projection
- `fix_self_intersect()` checks for and repairs self-intersecting polygons

# bcmaps 0.3.0

Added 3 Natural Resource layers (areas, regions and districts)

# bcmaps 0.2.0

Added high resolution BC boundaries (`bc_bound_hres`)

# bcmaps 0.1.0

Added `bc_area` function