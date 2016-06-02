//
//  AppDelegate.m
//  ios-prework-objc-assessment
//
//  Created by Joel Bell on 5/23/16.
//  Copyright © 2016 Joel Bell. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    NSArray *numbersArray = @[];
    NSArray *lettersArray = @[];
    NSDictionary *alphabetDictionary = @{};
        
    numbersArray = [self generateArrayOfNumbers];
    lettersArray = [self generateArrayOfletters];
    alphabetDictionary = [self generateNumbersAndLettersDictionaryWithNumbers:numbersArray letters:lettersArray];
        
    NSLog(@"%@", alphabetDictionary);
        
    NSMutableArray *mutableLetterArray = [lettersArray mutableCopy];
    [mutableLetterArray removeAllObjects];
    
    for (NSNumber *key in alphabetDictionary)
    {
        [mutableLetterArray addObject:alphabetDictionary[key]];
    }
        
    NSLog(@"%@\n%@", numbersArray, mutableLetterArray);
    return YES;
}
-(NSArray *)generateArrayOfNumbers
{
    NSMutableArray *mutNumArray = [[NSMutableArray alloc]init];
    for (NSInteger i = 1; i <= 26; i++)
    {
        NSNumber *num = @(i);
        [mutNumArray addObject: num];
    }
    NSLog(@"%@", mutNumArray);
    return mutNumArray;
}
-(NSArray *)generateArrayOfletters
{
    NSMutableArray *mutLetArray = [[NSMutableArray alloc] init];

    for (char az = 'a'; az <= 'z'; az++)
    {
        NSString *letter = [NSString stringWithFormat:@"%c", az];
        [mutLetArray addObject:letter];
    }
        NSLog(@"%@", mutLetArray);
        return mutLetArray;
}
- (NSDictionary *) generateNumbersAndLettersDictionaryWithNumbers: (NSArray*)numbersArray letters: (NSArray *)lettersArray
{
    NSMutableDictionary *dict = [[NSMutableDictionary alloc]init];
        
    [dict setObject:numbersArray forKey: lettersArray];
    return dict;
}
@end
