//
//  __Tests.m
//  团购Tests
//
//  Created by bbq on 15/5/5.
//  Copyright (c) 2015年 com.google.www. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>

@interface __Tests : XCTestCase

@end

@implementation __Tests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    XCTAssert(YES, @"Pass");
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
