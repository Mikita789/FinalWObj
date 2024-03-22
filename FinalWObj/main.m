//
//  main.m
//  FinalWObj
//
//  Created by Никита Попов on 22.03.24.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Решение квадратного уравнения ax^2+bx+c=0");
        NSLog(@"Введите коэффициенты a, b и c:");
        
        double a, b, c;
        scanf("%lf %lf %lf", &a, &b, &c);
        
        double discriminant = b * b - 4 * a * c;
        
        if (discriminant > 0) {
            double x1 = (-b + sqrt(discriminant)) / (2 * a);
            double x2 = (-b - sqrt(discriminant)) / (2 * a);
            NSLog(@"У уравнения два корня: x1 = %.2f, x2 = %.2f", x1, x2);
        } else if (discriminant == 0) {
            double x = -b / (2 * a);
            NSLog(@"У уравнения один корень: x = %.2f", x);
        } else {
            NSLog(@"У уравнения нет действительных корней");
        }    }
    return 0;
}
