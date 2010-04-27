//
//  UAGithubUsersParser.m
//  UAGithubEngine
//
//  Created by Owain Hunt on 02/04/2010.
//  Copyright 2010 Owain R Hunt. All rights reserved.
//

#import "UAGithubUsersParser.h"


@implementation UAGithubUsersParser

- (id)initWithXML:(NSData *)theXML delegate:(id)theDelegate connectionIdentifier:(NSString *)theIdentifier requestType:(UAGithubRequestType)reqType 
{
	
	if (self = [super initWithXML:theXML delegate:theDelegate connectionIdentifier:theIdentifier requestType:reqType])
	{
		numberElements = [NSArray arrayWithObjects:@"collaborators", @"space", @"private-repos", @"disk-usage", @"public-gist-count", @"public-repo-count", @"following-count", @"id", @"private-gist-count", @"owned-private-repo-count", @"total-private-repo-count", @"followers-count", nil];
		dateElements = [NSArray arrayWithObject:@"created-at"];
		dictionaryElements = [NSArray arrayWithObjects:@"plan", nil];
		baseElement = @"user";
	}
	
	[parser parse];
	
	return self;
}

@end
