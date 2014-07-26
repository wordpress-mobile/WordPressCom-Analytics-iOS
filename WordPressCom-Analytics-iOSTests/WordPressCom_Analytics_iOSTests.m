//
//  WordPressCom_Analytics_iOSTests.m
//  WordPressCom-Analytics-iOSTests
//
//  Created by Sendhil Panchadsaram on 7/25/14.
//  Copyright (c) 2014 WordPress. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "WPAnalytics.h"

@interface WordPressCom_Analytics_iOSTests : XCTestCase

@end

@implementation WordPressCom_Analytics_iOSTests

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample
{
    [WPAnalytics sayHello];
    XCTAssertTrue(true, @"");
}

@end
