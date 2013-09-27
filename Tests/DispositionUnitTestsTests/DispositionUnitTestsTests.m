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

- (void)testSetWidth
{
    CGFloat targetWidth = 600;
    CGRect newRect = kOriginalRect;
    CGRectSetWidth(&newRect, targetWidth);
    
    XCTAssertEqual(newRect.size.width, targetWidth, @"size.width failed to be set");
}

- (void)testSetHeight
{
    CGFloat targetHeight = 230;
    CGRect newRect = kOriginalRect;
    CGRectSetHeight(&newRect, targetHeight);
    
    XCTAssertEqual(newRect.size.height, targetHeight, @"size.height failed to be set");
}

- (void)testSetSize
{
    CGSize newSize = { 640, 380 };
    CGRect newRect = kOriginalRect;
    CGRectSetSize(&newRect, newSize);
    BOOL isNewSizeEqualToRectSize = CGSizeEqualToSize(newRect.size, newSize);
    
    XCTAssertTrue(isNewSizeEqualToRectSize, @"size failed to be set");
}


- (void)testSetOrigin
{
    CGPoint newOrigin = { 99, 1024 };
    CGRect newRect = kOriginalRect;
    CGRectSetOrigin(&newRect, newOrigin);
    BOOL isNewPointEqualToRectOrigin = CGPointEqualToPoint(newRect.origin, newOrigin);
    
    XCTAssertTrue(isNewPointEqualToRectOrigin, @"origin failed to be set");
    
}

- (void)testSetX
{
    CGFloat targetOriginX = -56;
    CGRect newRect = kOriginalRect;
    CGRectSetX(&newRect, targetOriginX);
    
    XCTAssertEqual(newRect.origin.x, targetOriginX, @"origin.x failed to be set");
}

- (void)testSetY
{
    CGFloat targetOriginY = 9999;
    CGRect newRect = kOriginalRect;
    CGRectSetY(&newRect, targetOriginY);
    
    XCTAssertEqual(newRect.origin.y, targetOriginY, @"origin.y failed to be set");
}



@end
