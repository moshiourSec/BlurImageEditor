//
//  CropViewController.m
//  BlurImageEditor
//
//  Created by Md. Sarowar Faruk on 6/16/16.
//  Copyright © 2016 Md. Sarowar Faruk. All rights reserved.
//

#import "CropViewController.h"
#import "CLImageEditor.h"

@interface CropViewController ()<CLImageEditorDelegate>

@end

@implementation CropViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.imageViewFromLibrary.image = self.image;
}
-(IBAction)backButton:(id)sender
{
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark- UIImageController delegate

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info
{
    UIImage *image = [info objectForKey:UIImagePickerControllerOriginalImage];
    
    CLImageEditor *editor = [[CLImageEditor alloc] initWithImage:image];
    editor.delegate = self;
    
    [picker pushViewController:editor animated:YES];
}

- (IBAction)editAction:(id)sender {
    
    
    CLImageEditor *editor = [[CLImageEditor alloc] initWithImage:self.imageViewFromLibrary.image];
    editor.delegate = self;
    
    [self presentViewController:editor animated:YES completion:nil];
}

#pragma mark- CLImageEditor delegate

- (void)imageEditor:(CLImageEditor *)editor didFinishEdittingWithImage:(UIImage *)image
{
    self.imageViewFromLibrary.image = image;
    [editor dismissViewControllerAnimated:YES completion:nil];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
