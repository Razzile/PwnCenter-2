//
//  FirstViewController.m
//  PwnCenter 2
//
//  Created by callum taylor on 29/11/2015.
//  Copyright © 2015 razzile. All rights reserved.
//

#import "FirstViewController.h"

@interface GKBubbleView : UIView {
    BOOL  _animating;
    float  _animationAngle;
    float  _animationRadiansPerSecond;
    BOOL  _animationReversed;
    float  _animationScale;
    int  _bubbleType;
    UIImageView * _highlightView;
    UIImageView * _imageView;
    float  _moveAnimationAngle;
    float  _moveAnimationRadiansPerSecond;
    float  _moveAnimationScale;
    int  _numFaces;
    int  _numVertices;
    float  _touchAnimationAngle;
    BOOL  _touchAnimationCanEnd;
    float  _touchAnimationElapsed;
    BOOL  _touchAnimationRunning;
}

@property (nonatomic) BOOL animating;
@property (nonatomic) float animationAngle;
@property (nonatomic) float animationRadiansPerSecond;
@property (nonatomic) int bubbleType;
@property (nonatomic, retain) UIImageView *highlightView;
@property (nonatomic, retain) UIImageView *imageView;
@property (nonatomic) float moveAnimationAngle;
@property (nonatomic) float moveAnimationRadiansPerSecond;
@property (nonatomic) float moveAnimationScale;
@property (nonatomic) int numFaces;
@property (nonatomic) int numVertices;
@property (nonatomic) float touchAnimationAngle;
@property (nonatomic) BOOL touchAnimationCanEnd;
@property (nonatomic) float touchAnimationElapsed;
@property (nonatomic) BOOL touchAnimationRunning;

- (BOOL)animating;
- (float)animationAngle;
- (float)animationRadiansPerSecond;
- (float)animationScaleForCurrentZ;
- (void)applyAnimationToVertices:(struct CAMeshVertex { struct CGPoint { float x_1_1_1; float x_1_1_2; } x1; struct CAPoint3D { float x_2_1_1; float x_2_1_2; float x_2_1_3; } x2; }*)arg1;
- (int)bubbleType;
- (void)chooseMoveAnimation;
- (void)choosePointAnimations;
- (void)dealloc;
- (id)highlightView;
- (id)imageView;
- (id)initWithFrame:(CGRect)arg1;
- (CGSize)intrinsicContentSize;
- (float)moveAnimationAngle;
- (float)moveAnimationRadiansPerSecond;
- (float)moveAnimationScale;
- (int)numFaces;
- (int)numVertices;
- (CGPoint)offsetForVertexAtIndex:(int)arg1;
- (BOOL)randomBOOL;
- (float)randomFloatBetweenMin:(float)arg1 andMax:(float)arg2;
- (void)setAnimating:(BOOL)arg1;
- (void)setAnimationAngle:(float)arg1;
- (void)setAnimationRadiansPerSecond:(float)arg1;
- (void)setAnimationStateBasedOnBubble:(id)arg1;
- (void)setBubbleType:(int)arg1;
- (void)setHighlightView:(id)arg1;
- (void)setImageView:(id)arg1;
- (void)setMoveAnimationAngle:(float)arg1;
- (void)setMoveAnimationRadiansPerSecond:(float)arg1;
- (void)setMoveAnimationScale:(float)arg1;
- (void)setNumFaces:(int)arg1;
- (void)setNumVertices:(int)arg1;
- (void)setTouchAnimationAngle:(float)arg1;
- (void)setTouchAnimationCanEnd:(BOOL)arg1;
- (void)setTouchAnimationElapsed:(float)arg1;
- (void)setTouchAnimationRunning:(BOOL)arg1;
- (void)setupVerticesAndFacesAnimated:(BOOL)arg1;
- (float)touchAnimationAngle;
- (BOOL)touchAnimationCanEnd;
- (float)touchAnimationElapsed;
- (BOOL)touchAnimationRunning;
- (void)touchBegan;
- (void)touchEnded;
- (void)update:(double)arg1;

@end

@class GKTextStyle;

@interface GKLabel : UILabel {
    float  _actualFontShrinkageFactor;
    GKTextStyle * _appliedStyle;
    GKTextStyle * _baseStyle;
    BOOL  _shouldEnforcePreferredWidth;
    BOOL  _shouldInhibitReplay;
    BOOL  _usingAttributedText;
}

@property (nonatomic) float actualFontShrinkageFactor;
@property (nonatomic, retain) GKTextStyle *appliedStyle;
@property (nonatomic, retain) GKTextStyle *baseStyle;
@property (readonly, copy) NSString *debugDescription;
@property (readonly, copy) NSString *description;
@property (readonly) unsigned int hash;
@property (nonatomic) BOOL shouldEnforcePreferredWidth;
@property (nonatomic) BOOL shouldInhibitReplay;
@property (readonly) Class superclass;
@property (nonatomic, readonly) BOOL usingAttributedText;

+ (void)initialize;

- (float)actualFontShrinkageFactor;
- (id)appliedStyle;
- (void)applyTextStyle:(id)arg1;
- (id)baseStyle;
- (void)dealloc;
- (id)initWithFrame:(CGRect)arg1;
- (void)replayAndApplyStyleUnlessInhibited;
- (void)replayAndApplyStyleWithSystemContentChange:(BOOL)arg1;
- (void)setActualFontShrinkageFactor:(float)arg1;
- (void)setAppliedStyle:(id)arg1;
- (void)setAttributedText:(id)arg1;
- (void)setBaseStyle:(id)arg1;
- (void)setBounds:(struct CGRect { struct CGPoint { float x_1_1_1; float x_1_1_2; } x1; struct CGSize { float x_2_1_1; float x_2_1_2; } x2; })arg1;
- (void)setShouldEnforcePreferredWidth:(BOOL)arg1;
- (void)setShouldInhibitReplay:(BOOL)arg1;
- (void)setText:(id)arg1;
- (BOOL)shouldEnforcePreferredWidth;
- (BOOL)shouldInhibitReplay;
- (CGSize)shrinkFontToFitSize:(struct CGSize { float x1; float x2; })arg1;
- (void)shrinkFontToFitWidth;
- (void)updateConstraints;
- (BOOL)usingAttributedText;

@end

@interface GKBubbleControl : UIControl <NSCopying> {
    BOOL  _animateOnTouch;
    BOOL  _animatingIn;
    GKBubbleView * _bubbleView;
    UIView * _contentView;
    NSLayoutConstraint * _contentViewHeightConstraint;
    NSLayoutConstraint * _contentViewWidthConstraint;
    NSString * _debuggingTag;
    NSLayoutConstraint * _maxHeightConstraint;
    NSLayoutConstraint * _maxWidthConstraint;
    float  _maximumDimension;
}

@property (nonatomic) BOOL animateOnTouch;
@property (nonatomic) int bubbleType;
@property (nonatomic, retain) GKBubbleView *bubbleView;
@property (nonatomic, retain) UIView *contentView;
@property (nonatomic, retain) NSLayoutConstraint *contentViewHeightConstraint;
@property (nonatomic, retain) NSLayoutConstraint *contentViewWidthConstraint;
@property (nonatomic, retain) NSString *debuggingTag;
@property (nonatomic, retain) NSLayoutConstraint *maxHeightConstraint;
@property (nonatomic, retain) NSLayoutConstraint *maxWidthConstraint;
@property (nonatomic) float maximumDimension;
@property (nonatomic, readonly) CGSize projectedContentSize;
@property (nonatomic) CGRect screenFrame;
@property (nonatomic, readonly) CGPoint screenPosition;
@property (nonatomic, readonly) CGSize screenSize;
@property (getter=isSharedBubble, nonatomic, readonly) BOOL sharedBubble;


+ (void)initialize;
+ (float)maximumDimensionBasedOnDeviceAdjustForTallness:(BOOL)arg1;
+ (float)maximumDimensionWhenContainedInViewWithSize:(struct CGSize { float x1; float x2; })arg1;

- (BOOL)animateOnTouch;
- (void)bounceAfterDelay:(double)arg1 fromZ:(float)arg2 toZ:(float)arg3;
- (BOOL)bouncing;
- (int)bubbleType;
- (id)bubbleView;
- (id)contentView;
- (id)contentViewHeightConstraint;
- (id)contentViewWidthConstraint;
- (id)contentsWrapperView;
- (id)copyWithZone:(struct _NSZone { }*)arg1;
- (void)dealloc;
- (id)debuggingTag;
- (id)description;
- (void)didTouchDown;
- (void)didTouchUp;
- (id)initWithFrame:(CGRect)arg1;
- (BOOL)isSharedBubble;
- (id)maxHeightConstraint;
- (id)maxWidthConstraint;
- (float)maximumDimension;
- (id)pathForHitTesting;
- (BOOL)pointInside:(struct CGPoint { float x1; float x2; })arg1 withEvent:(id)arg2;
- (CGSize)projectedContentSize;
- (CGRect)screenFrame;
- (CGPoint)screenPosition;
- (CGSize)screenSize;
- (void)setAnimateOnTouch:(BOOL)arg1;
- (void)setBubbleType:(int)arg1;
- (void)setBubbleView:(id)arg1;
- (void)setContentView:(id)arg1;
- (void)setContentViewHeightConstraint:(id)arg1;
- (void)setContentViewWidthConstraint:(id)arg1;
- (void)setDebuggingTag:(id)arg1;
- (void)setHidden:(BOOL)arg1;
- (void)setMaxHeightConstraint:(id)arg1;
- (void)setMaxWidthConstraint:(id)arg1;
- (void)setMaximumDimension:(float)arg1;
@end

@interface GKTextBubbleControl : GKBubbleControl {
    GKTextStyle * _overrideTextStyle;
    BOOL  _smallText;
    NSString * _text;
    GKLabel * _textLabel;
    GKLabel * _textStyle;
}

@property (nonatomic, retain) NSAttributedString *attributedText;
@property (nonatomic, retain) GKTextStyle *overrideTextStyle;
@property (nonatomic) BOOL smallText;
@property (nonatomic, retain) NSString *text;
@property (nonatomic, retain) GKLabel *textLabel;
@property (nonatomic, retain) GKLabel *textStyle;

- (void)_updateTextLabel;
- (id)attributedText;
- (id)copyWithZone:(struct _NSZone { }*)arg1;
- (void)dealloc;
- (id)initWithFrame:(CGRect)arg1;
- (void)layoutSubviews;
- (id)overrideTextStyle;
- (void)setAttributedText:(id)arg1;
- (void)setOverrideTextStyle:(id)arg1;
- (void)setSmallText:(BOOL)arg1;
- (void)setText:(id)arg1;
- (void)setTextLabel:(id)arg1;
- (void)setTextStyle:(id)arg1;
- (BOOL)smallText;
- (id)text;
- (id)textLabel;
- (id)textStyle;
- (void)updateTextFieldsFor3DScaling;

@end

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIView *container = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    container.center = self.view.center;
    
//    GKBubbleView *bubbleView = [[objc_getClass("GKBubbleView") alloc] initWithFrame:container.frame];
//    bubbleView.center = self.view.center;
//    [bubbleView setAnimating:YES];

    GKTextBubbleControl *view = [[objc_getClass("GKTextBubbleControl") alloc] initWithFrame:container.frame];
    [view.textLabel setText:@"Test"];
    [view.textStyle setTextColor:[UIColor whiteColor]];
    [view.bubbleView setAnimating:YES];
    [container addSubview:view];
    
    [self.view addSubview:container];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
