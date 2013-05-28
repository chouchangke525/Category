//
//  UIViewController+TestCategory.m
//  Category
//
//  Created by Yu Yichen on 5/28/13.
//
//

#import "UIViewController+TestCategory.h"

@implementation UIViewController (TestCategory)
-(NSData *) screenShot: (CGRect *) myImageArea;

@end

@implementation UIViewController (TestCategory)
-(void) screenShot: (CGRect *) myImageArea
{
UIGraphicsBeginImageContext(self.view.bounds.size);
[self.view.window.layer renderInContext:UIGraphicsGetCurrentContext()];
UIImage *viewImage = UIGraphicsGetImageFromCurrentImageContext();
UIGraphicsEndImageContext();


CGImageRef imageRef = CGImageCreateWithImageInRect([viewImage CGImage], myImageArea);
UIImage *imageInFrame = [UIImage imageWithCGImage:imageRef];



NSData *photoData=UIImageJPEGRepresentation(imageInFrame, 0.8);
return photoData;
}

@end