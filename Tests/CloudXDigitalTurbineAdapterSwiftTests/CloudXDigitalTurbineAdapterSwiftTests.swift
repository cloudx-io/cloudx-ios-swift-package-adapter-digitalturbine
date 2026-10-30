import CloudXDigitalTurbineAdapter
import CloudXDigitalTurbineAdapterPackage
import XCTest

final class CloudXDigitalTurbineAdapterSwiftTests: XCTestCase {
    func testAdapterIsLinkedAndRegistered() {
        XCTAssertEqual(CLXDigitalTurbineAdapterVersion, "8.5.1.0")
        XCTAssertNotNil(NSClassFromString("CLXDigitalTurbineInitializer"))
    }
}
