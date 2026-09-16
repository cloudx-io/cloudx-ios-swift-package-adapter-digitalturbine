import CloudXDigitalTurbineAdapter
import CloudXDigitalTurbineAdapterPackage
import XCTest

final class CloudXDigitalTurbineAdapterSwiftTests: XCTestCase {
    func testAdapterIsLinkedAndRegistered() {
        XCTAssertEqual(CLXDigitalTurbineAdapterVersion, "8.4.10.0")
        XCTAssertNotNil(NSClassFromString("CLXDigitalTurbineInitializer"))
    }
}
