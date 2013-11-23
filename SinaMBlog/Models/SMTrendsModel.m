//
//  SMPublicTimelineModel.m
//  SinaMBlogNimbus
//
//  Created by Lee jimney on 10/30/13.
//  Copyright (c) 2013 jimneylee. All rights reserved.
//

#import "SMTrendsModel.h"
#import "SMTrendsEntity.h"
#import "SMTrendCell.h"

@implementation SMTrendsModel 

///////////////////////////////////////////////////////////////////////////////////////////////////
- (id)initWithDelegate:(id<NITableViewModelDelegate>)delegate
{
	self = [super initWithDelegate:delegate];
	if (self) {
        
	}
	return self;
}

///////////////////////////////////////////////////////////////////////////////////////////////////
- (NSString*)relativePath
{
    return [SMAPIClient relativePathForWeeklyTrendsList];
}

///////////////////////////////////////////////////////////////////////////////////////////////////
- (NSString*)listString
{
	return JSON_TREND_LIST;
}

///////////////////////////////////////////////////////////////////////////////////////////////////
- (Class)objectClass
{
	return [SMTrendsEntity class];
}

///////////////////////////////////////////////////////////////////////////////////////////////////
- (Class)cellClass
{
    return [SMTrendCell class];
}

@end
