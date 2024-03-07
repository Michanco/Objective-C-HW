//
//  main.m
//  HomeWork01
//
//  Created by Michanco Slesarev on 06.03.2024.
//

#import <Foundation/Foundation.h>
#import <math.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@" Enter coefficients a b c ");
        double a, b, c, discr;
        scanf("%lf", &a);
        scanf("%lf", &b);
        scanf("%lf", &c);
        discr = b * b - 4 * a * c;
        if (discr < 0) {
            NSLog(@"The equation has no roots");
        } else if (discr == 0){
            NSLog(@"The equation has one root X = %f", -b/(2 * a));
        } else {
            NSLog(@"The equation has two roots X1 = %f X2 = %f", (-b + sqrt(discr)) / (2 * a), (-b - sqrt(discr)) / (2 * a));
        }
        double max = a;
        if (b > max) {
            max = b;
        }
        if (c > max) {
            max = c;
        }
        NSLog(@"Maximum coefficient - %.2f", max);
    }
    return 0;
}
