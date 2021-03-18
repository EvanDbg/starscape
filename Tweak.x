#import <UIKit/UIKit.h>
#import "Starscape.h"

%hook NCNotificationShortLookView
    -(void)layoutSubviews {
        %orig;
        for(UIView *view in self.subviews) {
            if([view isKindOfClass:%c(MTMaterialView)]) {
                view.hidden = YES;
            }
        } 

        self.layer.shadowRadius  = 5.0f;
        self.layer.shadowColor   = [UIColor blackColor].CGColor;
        self.layer.shadowOffset  = CGSizeMake(0.0f, 0.0f);
        self.layer.shadowOpacity = 0.95f;
        self.layer.masksToBounds = NO;

        UIColor *white = [UIColor whiteColor];
        UIColor *black = [UIColor colorWithRed: 0.12 green: 0.13 blue: 0.16 alpha: 1.00];
        

        if (self.traitCollection.userInterfaceStyle == UIUserInterfaceStyleLight) {
            self.backgroundColor = white;
        }
        else if (self.traitCollection.userInterfaceStyle == UIUserInterfaceStyleDark) {
            self.backgroundColor = black;
        }
    }
%end

//Moo-sic
%hook CSAdjunctItemView
    -(void)layoutSubviews {
        %orig;
        for(UIView *view in self.subviews) {
            if([view isMemberOfClass:%c(PLPlatterView)]) {
                for(UIView *view2 in view.subviews) {
                    if([view2 isKindOfClass:%c(MTMaterialView)]) {
                        view2.hidden = YES;
                    }
                } 
            }
        } 

        self.layer.shadowRadius  = 5.0f;
        self.layer.shadowColor   = [UIColor blackColor].CGColor;
        self.layer.shadowOffset  = CGSizeMake(0.0f, 0.0f);
        self.layer.shadowOpacity = 0.95f;
        self.layer.masksToBounds = NO;

        UIColor *white = [UIColor whiteColor];
        UIColor *black = [UIColor colorWithRed: 0.12 green: 0.13 blue: 0.16 alpha: 1.00];
        

        if (self.traitCollection.userInterfaceStyle == UIUserInterfaceStyleLight) {
            self.backgroundColor = white;
        }
        else if (self.traitCollection.userInterfaceStyle == UIUserInterfaceStyleDark) {
            self.backgroundColor = black;
        }
    }
%end