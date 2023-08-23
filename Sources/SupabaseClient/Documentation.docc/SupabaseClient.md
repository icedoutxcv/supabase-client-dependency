# supabase-client-dependency

A dependency that adds some niceties around the `Supabase` database and includes an `auth` client.

## Overview

A [swift-dependencies](https://github.com/pointfreeco/swift-dependencies) client for supabase integrations.

This dependency wraps the [supabase-swift](https://github.com/supabase-community/supabase-swift) client,
database, and auth for convenience methods for use in `TCA` based apps.

This package adds some niceties around database queries as well as holds onto an `auth` client.

In general you use this package / dependency to build your database clients for usage in a
[swift-composable-architecture](https://github.com/pointfreeco/swift-composable-architecture) based application.


## Topics

- <doc:GettingStarted>

### Structures

- ``SupabaseClientDependency``
- ``SupabaseClientDependency/Auth``
- ``SupabaseClientDependency/Configuration``
- ``SupabaseClientDependency/Filter``
- ``SupabaseClientDependency/Order``
- ``Credentials``

### Protocols

- ``ColumnRepresentable``
- ``TableRepresentable``