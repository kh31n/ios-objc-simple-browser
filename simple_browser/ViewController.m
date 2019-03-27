//
//  ViewController.m
//  simple_browser
//
//  Created by 川合弘敏 on 2016/05/27.
//  Copyright © 2016年 川合弘敏. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _searchBar.delegate = self;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void)searchBarSearchButtonClicked:(UISearchBar *)searchBar{
    [_searchBar resignFirstResponder];
}

- (void)searchBar:(UISearchBar *)searchBar textDidChange:(NSString *)searchText{
    NSString *searchEngineUrl = @"https://www.google.co.jp/search?q=";
    NSString *searchUrl = [NSString stringWithFormat:@"%@%@", searchEngineUrl, searchText];
    NSURL *Url = [NSURL URLWithString:searchUrl.encodedURLString];
    NSURLRequest *req = [NSURLRequest requestWithURL:Url];
    [_webView loadRequest:req];
}
@end
