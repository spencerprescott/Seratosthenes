//
//  SEPrimesGeneratorTests.m
//  Seratosthenes
//
//  Created by Spencer Prescott on 11/19/16.
//  Copyright © 2016 Spencer Prescott. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "SEPrimesGenerator.h"

@interface SEPrimesGeneratorTests : XCTestCase
@property (strong, nonatomic) SEPrimesGenerator *generator;
@end

@implementation SEPrimesGeneratorTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    self.generator = [SEPrimesGenerator new];
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testVaildPrimeNumbers {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    self.generator.limit = @100;
    NSArray *primes =  @[@2, @3, @5, @7, @11, @13, @17, @19, @23, @29, @31, @37, @41, @43, @47, @53, @59, @61, @67, @71, @73, @79, @83, @89, @97];
    XCTAssertEqualObjects(self.generator.primeNumbers, primes);
}

@end
