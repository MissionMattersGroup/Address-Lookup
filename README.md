# Address-Lookup
Managed package for address lookup utilities

Address-Lookup (MAL on the Jira boards) represents a warehouse for all address-related services and utilities for Mission Matters Group.  At its inception, it's primary utility is to pull the name of a County in which a physical address resides.  This is done via a pair of API calls against data.gov-discovered datasources.

The first call requests the latitude/longitude for a given address from the Census Bureau.  The second uses these geospatial coordinates to obtain the name of the county from the Federal Communications Commission, which maintains a datasource with the needed values.

Ostensibly, Address-Lookup could be extended to obtain additional information regarding multiple geospatial points, such as creating service boundaries, and/or determining whether a point (address) was within such a boundary.  Alternatively, it could be used in a larger context to inform decisions concerning the scheduling of service providers based on that providers' usual place of employment of residence.
