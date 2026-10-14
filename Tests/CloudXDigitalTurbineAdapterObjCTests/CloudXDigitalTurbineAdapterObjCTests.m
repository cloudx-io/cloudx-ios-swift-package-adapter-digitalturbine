@import CloudXDigitalTurbineAdapter;
@import CloudXDigitalTurbineAdapterPackage;
@import XCTest;

@interface CloudXDigitalTurbineAdapterObjCTests : XCTestCase
@end

@implementation CloudXDigitalTurbineAdapterObjCTests

- (void)testAdapterIsLinkedAndRegistered {
    XCTAssertEqualObjects(CLXDigitalTurbineAdapterVersion, @"8.4.10.1");
    XCTAssertNotNil(NSClassFromString(@"CLXDigitalTurbineInitializer"));
}

@end
