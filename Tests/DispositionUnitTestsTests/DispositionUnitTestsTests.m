//
//  DispositionUnitTestsTests.m
//  DispositionUnitTestsTests
//
//  Created by Hector Zarate on 9/25/13.
//  Copyright (c) 2013 Hector Zarate. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "CGRect+Disposition.h"

const CGRect kOriginalRect = { 0.0, 10.0, 100.0, 300.0 };

@interface DispositionUnitTestsTests : XCTestCase



@end

@implementation DispositionUnitTestsTests

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

- (void)testWidth
{
    CGFloat targetWidth = 600;
    CGRect newRect = kOriginalRect;
    CGRectSetWidth(&newRect, targetWidth);
    
    
    XCTAssertEqual(newRect.size.width, targetWidth, @"size.width failed to be set");
    
}

@end
