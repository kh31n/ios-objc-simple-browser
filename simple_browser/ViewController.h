//
//  ViewController.h
//  simple_browser
//
//  Created by 川合弘敏 on 2016/05/27.
//  Copyright © 2016年 川合弘敏. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NSStringPunycodeAdditions.h"

@interface ViewController : UIViewController<UISearchBarDelegate>
@property (weak, nonatomic) IBOutlet UISearchBar *searchBar;
@property (weak, nonatomic) IBOutlet UIWebView *webView;

@end

