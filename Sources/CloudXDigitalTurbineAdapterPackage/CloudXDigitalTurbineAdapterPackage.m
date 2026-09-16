#import <CloudXDigitalTurbineAdapter/CloudXDigitalTurbineAdapter.h>

@interface CloudXDigitalTurbineAdapterPackageLoader : NSObject
@end

@implementation CloudXDigitalTurbineAdapterPackageLoader

+ (void)load {
    CloudXDigitalTurbineAdapterRegister();
}

@end
