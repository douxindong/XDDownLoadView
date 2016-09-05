//
//  ViewController.m
//  downLoad-View
//
//  Created by 窦心东 on 16/9/5.
//  Copyright © 2016年 窦心东. All rights reserved.
//

#import "ViewController.h"
#import "XDDownloadView.h"
@interface ViewController (){
    NSTimer *_timer;
    double _timeCount;
    CGFloat _progress;
}
@property (nonatomic, strong) XDDownloadView *downloadView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title  = @"XDDownloadAnimation";
    self.view.backgroundColor = XNColor(41, 158, 139, 1);
    
    [self initData];
    
    [self.view addSubview:({
        XDDownloadView *downloadView = [[XDDownloadView alloc] initWithFrame:CGRectMake(CGRectGetWidth(self.view.frame)/2-50, CGRectGetHeight(self.view.frame)/2-50, 100, 100)];
        //        downloadView.didClickBlock = ^{
        //
        //            _timer = [NSTimer scheduledTimerWithTimeInterval:0.05 target:self selector:@selector(timeDown) userInfo:nil repeats:YES];
        //        };
        [downloadView addTarget:self action:@selector(updateProgress) forControlEvents:UIControlEventTouchUpInside];
        downloadView.progressWidth = 4;
        self.downloadView = downloadView;
        self.downloadView;
    })];
    
}

- (void)initData{
    _timeCount = 200.0;
    _progress = 0.0;
}

// 模拟网络请求数据进度
- (void)timeDown{
    _timeCount -= 1;
    _progress += 0.005;
    self.downloadView.progress  = _progress;
    
    if (_timeCount <= 0) {
        
        [self initData];
        [_timer invalidate];
        _timer = nil;
    }
}

- (void)updateProgress{
    _timer = [NSTimer scheduledTimerWithTimeInterval:0.05 target:self selector:@selector(timeDown) userInfo:nil repeats:YES];
}

@end
