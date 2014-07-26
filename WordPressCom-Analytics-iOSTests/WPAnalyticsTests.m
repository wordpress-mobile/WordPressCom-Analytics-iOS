#import <Specta/Specta.h>
#define EXP_SHORTHAND
#import <Expecta/Expecta.h>
#import <OCMock/OCMock.h>
#import "TestAnalyticsTracker.h"

SpecBegin(WPAnalyticsSpecs)

beforeEach(^{
    [WPAnalytics clearTrackers];
});

describe(@"beginSession", ^{
    
    it(@"should not be called if tracker isn't registered", ^{
        id trackerMock = OCMStrictClassMock([TestAnalyticsTracker class]);
        [[trackerMock reject] beginSession];
        [WPAnalytics beginSession];
        [trackerMock verify];
    });
    
    it(@"should be called if tracker is registered", ^{
        id trackerMock = OCMStrictClassMock([TestAnalyticsTracker class]);
        [[trackerMock expect] beginSession];
        [WPAnalytics registerTracker:trackerMock];
        [WPAnalytics beginSession];
        [trackerMock verify];
    });
    
    it(@"should be called on multiple trackers if registered", ^{
        id trackerMock = OCMStrictClassMock([TestAnalyticsTracker class]);
        id trackerMock2 = OCMStrictClassMock([TestAnalyticsTracker class]);
        [[trackerMock expect] beginSession];
        [[trackerMock2 expect] beginSession];
        [WPAnalytics registerTracker:trackerMock];
        [WPAnalytics registerTracker:trackerMock2];
        [WPAnalytics beginSession];
        [trackerMock verify];
        [trackerMock2 verify];
    });
});

describe(@"endSession", ^{
    it(@"should not be called if tracker isn't registered", ^{
        id trackerMock = OCMStrictClassMock([TestAnalyticsTracker class]);
        [[trackerMock reject] endSession];
        [WPAnalytics endSession];
        [trackerMock verify];
    });
    
    it(@"should be called if tracker is registered", ^{
        id trackerMock = OCMStrictClassMock([TestAnalyticsTracker class]);
        [[trackerMock expect] endSession];
        [WPAnalytics registerTracker:trackerMock];
        [WPAnalytics endSession];
        [trackerMock verify];
    });
    
    it(@"should be called on multiple trackers if registered", ^{
        id trackerMock = OCMStrictClassMock([TestAnalyticsTracker class]);
        id trackerMock2 = OCMStrictClassMock([TestAnalyticsTracker class]);
        [[trackerMock expect] endSession];
        [[trackerMock2 expect] endSession];
        [WPAnalytics registerTracker:trackerMock];
        [WPAnalytics registerTracker:trackerMock2];
        [WPAnalytics endSession];
        [trackerMock verify];
        [trackerMock2 verify];
    });
});

describe(@"refreshMetadata", ^{
    it(@"should not be called if tracker isn't registered", ^{
        id trackerMock = OCMStrictClassMock([TestAnalyticsTracker class]);
        [[trackerMock reject] refreshMetadata];
        [WPAnalytics refreshMetadata];
        [trackerMock verify];
    });
    
    it(@"should be called if tracker is registered", ^{
        id trackerMock = OCMStrictClassMock([TestAnalyticsTracker class]);
        [[trackerMock expect] refreshMetadata];
        [WPAnalytics registerTracker:trackerMock];
        [WPAnalytics refreshMetadata];
        [trackerMock verify];
    });
    
    it(@"should be called on multiple trackers if registered", ^{
        id trackerMock = OCMStrictClassMock([TestAnalyticsTracker class]);
        id trackerMock2 = OCMStrictClassMock([TestAnalyticsTracker class]);
        [[trackerMock expect] refreshMetadata];
        [[trackerMock2 expect] refreshMetadata];
        [WPAnalytics registerTracker:trackerMock];
        [WPAnalytics registerTracker:trackerMock2];
        [WPAnalytics refreshMetadata];
        [trackerMock verify];
        [trackerMock2 verify];
    });
});

describe(@"track:", ^{
    it(@"should not be called if tracker isn't registered", ^{
        id trackerMock = OCMStrictClassMock([TestAnalyticsTracker class]);
        [[trackerMock reject] track:WPAnalyticsStatApplicationOpened];
        [WPAnalytics track:WPAnalyticsStatApplicationOpened];
        [trackerMock verify];
    });
    
    it(@"should be called if tracker is registered", ^{
        id trackerMock = OCMStrictClassMock([TestAnalyticsTracker class]);
        [[trackerMock expect] track:WPAnalyticsStatApplicationOpened];
        [WPAnalytics registerTracker:trackerMock];
        [WPAnalytics track:WPAnalyticsStatApplicationOpened];
        [trackerMock verify];
    });
    
    it(@"should be called on multiple trackers if registered", ^{
        id trackerMock = OCMStrictClassMock([TestAnalyticsTracker class]);
        id trackerMock2 = OCMStrictClassMock([TestAnalyticsTracker class]);
        [[trackerMock expect] track:WPAnalyticsStatApplicationOpened];
        [[trackerMock2 expect] track:WPAnalyticsStatApplicationOpened];
        [WPAnalytics registerTracker:trackerMock];
        [WPAnalytics registerTracker:trackerMock2];
        [WPAnalytics track:WPAnalyticsStatApplicationOpened];
        [trackerMock verify];
        [trackerMock2 verify];
    });
});

describe(@"track:withProperties:", ^{
    it(@"should not be called if tracker isn't registered", ^{
        id trackerMock = OCMStrictClassMock([TestAnalyticsTracker class]);
        [[trackerMock reject] track:WPAnalyticsStatApplicationOpened withProperties:@{}];
        [WPAnalytics track:WPAnalyticsStatApplicationOpened];
        [trackerMock verify];
    });
    
    it(@"should be called if tracker is registered", ^{
        id trackerMock = OCMStrictClassMock([TestAnalyticsTracker class]);
        [[trackerMock expect] track:WPAnalyticsStatApplicationOpened withProperties:@{}];
        [WPAnalytics registerTracker:trackerMock];
        [WPAnalytics track:WPAnalyticsStatApplicationOpened withProperties:@{}];
        [trackerMock verify];
    });
    
    it(@"should be called on multiple trackers if registered", ^{
        id trackerMock = OCMStrictClassMock([TestAnalyticsTracker class]);
        id trackerMock2 = OCMStrictClassMock([TestAnalyticsTracker class]);
        [[trackerMock expect] track:WPAnalyticsStatApplicationOpened withProperties:@{}];
        [[trackerMock2 expect] track:WPAnalyticsStatApplicationOpened withProperties:@{}];
        [WPAnalytics registerTracker:trackerMock];
        [WPAnalytics registerTracker:trackerMock2];
        [WPAnalytics track:WPAnalyticsStatApplicationOpened withProperties:@{}];
        [trackerMock verify];
        [trackerMock2 verify];
    });
});

SpecEnd