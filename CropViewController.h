//
//  CropViewController.h
//  BlurImageEditor
//
//  Created by Md. Sarowar Faruk on 6/16/16.
//  Copyright © 2016 Md. Sarowar Faruk. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CropViewController : UIViewController

@property (strong,nonatomic) UIImage *image;

@property (weak, nonatomic) IBOutlet UIImageView *imageViewFromLibrary;
@property (weak, nonatomic) IBOutlet UIButton *backButton;

@end
