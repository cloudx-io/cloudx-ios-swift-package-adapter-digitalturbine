# CloudX Digital Turbine adapter Swift package

This repository distributes the Digital Turbine adapter for the CloudX iOS SDK.

## Requirements

- iOS 13 or later
- Xcode 15 or later
- CloudX Core 3.9.1 or later

## Installation

Add this package in Xcode:

```text
https://github.com/cloudx-io/cloudx-ios-swift-package-adapter-digitalturbine.git
```

Select an exact package version from the compatibility table. Add the
`CloudXDigitalTurbineAdapter` product to the app target.

Add `-ObjC` to the app target's **Other Linker Flags**. The package uses this
flag to retain the adapter registration code.

| Package version | CloudX adapter | Digital Turbine SDK |
| --- | --- | --- |
| `8040800.0.0` | `8.4.8.0` | `8.4.8` |

The package installs CloudX Core and Digital Turbine SDK as dependencies. Import
`CloudXCore` in the application. The adapter registers when the application
loads.

## Versioning

CloudX adapter versions have four components. Swift package versions use three.
The package tag joins the adapter components into the major number. For example,
adapter `8.4.8.0` uses package version `8040800.0.0`.

## License

The CloudX adapter uses the Business Source License 1.1. See [LICENSE](LICENSE).
