//
//  CGRect+Disposition.h
//  DispositionUnitTests
//
//  Created by Hector Zarate on 9/25/13.
//  Copyright (c) 2013 Hector Zarate. All rights reserved.
//

#include <CoreGraphics/CGBase.h>
#include <CoreFoundation/CFDictionary.h>

#pragma mark - Headers

static inline void CGRectSetSize(CGRect *rect, CGSize size);
static inline void CGRectSetWidth(CGRect *rect, CGFloat width);
static inline void CGRectSetHeight(CGRect *rect, CGFloat height);

static inline void CGRectSetOrigin(CGRect *rect, CGPoint originPoint);
static inline void CGRectSetX(CGRect *rect, CGFloat x);
static inline void CGRectSetY(CGRect *rect, CGFloat y);

#pragma mark - Implementation: Size


static inline void CGRectSetSize(CGRect *rect, CGSize size)
{
    (*rect).size.height = size.height;
    (*rect).size.width = size.width;
}

static inline void CGRectSetWidth(CGRect *rect, CGFloat width)
{
    (*rect).size.width = width;
}


static inline void CGRectSetHeight(CGRect *rect, CGFloat height)
{
    (*rect).size.height = height;
}


#pragma mark - Implementation: Origin


static inline void CGRectSetOrigin(CGRect *rect, CGPoint originPoint)
{
    (*rect).origin.x = originPoint.x;
    (*rect).origin.y = originPoint.y;
}


static inline void CGRectSetX(CGRect *rect, CGFloat x)
{
    (*rect).origin.x = x;
}


static inline void CGRectSetY(CGRect *rect, CGFloat y)
{
    (*rect).origin.y = y;
}