//
//  AceView.h
//  Ace
//
//  Created by Valentin Jacquemin on 07.07.11.
//  Copyright 2011 Logica. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface AceView : UIView {
    UILabel* _topLeftNumber;
    UILabel* _bottomRightNumber;
    UIImageView* _topLeftHeart;
    UIImageView* _bottomRightHeart;
    UIImageView* _centerHeart;
    
    BOOL bouncing;
}

@end
