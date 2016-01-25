.class public Lcom/aviary/android/feather/effects/TiltShiftPanel;
.super Lcom/aviary/android/feather/effects/AbstractContentPanel;
.source "TiltShiftPanel.java"

# interfaces
.implements Lcom/aviary/android/feather/widget/AviaryHighlightImageButton$OnCheckedChangeListener;
.implements Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch$OnTiltShiftDrawListener;
.implements Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$OnDrawableChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aviary/android/feather/effects/TiltShiftPanel$GenerateResultTask;,
        Lcom/aviary/android/feather/effects/TiltShiftPanel$BackgroundDrawThread;,
        Lcom/aviary/android/feather/effects/TiltShiftPanel$DrawQueue;
    }
.end annotation


# static fields
.field static BRUSH_MULTIPLIER:F


# instance fields
.field mActions:Lcom/aviary/android/feather/headless/moa/MoaActionList;

.field private mBackgroundDrawThread:Lcom/aviary/android/feather/effects/TiltShiftPanel$BackgroundDrawThread;

.field private mCircleButton:Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;

.field private mFilter:Lcom/aviary/android/feather/library/filters/TiltShiftFilter;

.field private mRectButton:Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;

.field mTiltShiftMode:Lcom/aviary/android/feather/headless/filters/NativeToolFilter$TiltShiftMode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const/high16 v0, 0x40000000    # 2.0f

    sput v0, Lcom/aviary/android/feather/effects/TiltShiftPanel;->BRUSH_MULTIPLIER:F

    return-void
.end method

.method public constructor <init>(Lcom/aviary/android/feather/library/services/IAviaryController;Lcom/aviary/android/feather/library/content/ToolEntry;)V
    .locals 1
    .param p1, "context"    # Lcom/aviary/android/feather/library/services/IAviaryController;
    .param p2, "entry"    # Lcom/aviary/android/feather/library/content/ToolEntry;

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/aviary/android/feather/effects/AbstractContentPanel;-><init>(Lcom/aviary/android/feather/library/services/IAviaryController;Lcom/aviary/android/feather/library/content/ToolEntry;)V

    .line 55
    invoke-static {}, Lcom/aviary/android/feather/headless/moa/MoaActionFactory;->actionList()Lcom/aviary/android/feather/headless/moa/MoaActionList;

    move-result-object v0

    iput-object v0, p0, Lcom/aviary/android/feather/effects/TiltShiftPanel;->mActions:Lcom/aviary/android/feather/headless/moa/MoaActionList;

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/aviary/android/feather/effects/TiltShiftPanel;)Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/aviary/android/feather/effects/TiltShiftPanel;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/aviary/android/feather/effects/TiltShiftPanel;->mCircleButton:Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;

    return-object v0
.end method

.method static synthetic access$100(Lcom/aviary/android/feather/effects/TiltShiftPanel;)Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/aviary/android/feather/effects/TiltShiftPanel;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/aviary/android/feather/effects/TiltShiftPanel;->mRectButton:Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;

    return-object v0
.end method

.method static synthetic access$200(Lcom/aviary/android/feather/effects/TiltShiftPanel;)Lcom/aviary/android/feather/library/filters/TiltShiftFilter;
    .locals 1
    .param p0, "x0"    # Lcom/aviary/android/feather/effects/TiltShiftPanel;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/aviary/android/feather/effects/TiltShiftPanel;->mFilter:Lcom/aviary/android/feather/library/filters/TiltShiftFilter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/aviary/android/feather/effects/TiltShiftPanel;)Lcom/aviary/android/feather/effects/TiltShiftPanel$BackgroundDrawThread;
    .locals 1
    .param p0, "x0"    # Lcom/aviary/android/feather/effects/TiltShiftPanel;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/aviary/android/feather/effects/TiltShiftPanel;->mBackgroundDrawThread:Lcom/aviary/android/feather/effects/TiltShiftPanel$BackgroundDrawThread;

    return-object v0
.end method


# virtual methods
.method protected createFilter()Lcom/aviary/android/feather/library/filters/TiltShiftFilter;
    .locals 1

    .prologue
    .line 255
    sget-object v0, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->TILT_SHIFT:Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    invoke-static {v0}, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory;->get(Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;)Lcom/aviary/android/feather/headless/filters/IFilter;

    move-result-object v0

    check-cast v0, Lcom/aviary/android/feather/library/filters/TiltShiftFilter;

    return-object v0
.end method

.method protected generateContentView(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    .line 260
    sget v0, Lcom/aviary/android/feather/R$layout;->aviary_content_focus:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected generateOptionView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 265
    sget v0, Lcom/aviary/android/feather/R$layout;->aviary_panel_focus:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method public onActivate()V
    .locals 5

    .prologue
    .line 90
    invoke-super {p0}, Lcom/aviary/android/feather/effects/AbstractContentPanel;->onActivate()V

    .line 92
    iget-object v0, p0, Lcom/aviary/android/feather/effects/TiltShiftPanel;->mBitmap:Landroid/graphics/Bitmap;

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1}, Lcom/aviary/android/feather/library/utils/BitmapUtils;->copy(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/aviary/android/feather/effects/TiltShiftPanel;->mPreview:Landroid/graphics/Bitmap;

    .line 93
    iget-object v0, p0, Lcom/aviary/android/feather/effects/TiltShiftPanel;->mBackgroundDrawThread:Lcom/aviary/android/feather/effects/TiltShiftPanel$BackgroundDrawThread;

    invoke-virtual {v0}, Lcom/aviary/android/feather/effects/TiltShiftPanel$BackgroundDrawThread;->start()V

    .line 95
    iget-object v0, p0, Lcom/aviary/android/feather/effects/TiltShiftPanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    check-cast v0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;

    invoke-virtual {v0, p0}, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->setOnDrawStartListener(Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch$OnTiltShiftDrawListener;)V

    .line 96
    iget-object v0, p0, Lcom/aviary/android/feather/effects/TiltShiftPanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    sget-object v1, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$DisplayType;->FIT_IF_BIGGER:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$DisplayType;

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->setDisplayType(Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$DisplayType;)V

    .line 97
    iget-object v0, p0, Lcom/aviary/android/feather/effects/TiltShiftPanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    iget-object v1, p0, Lcom/aviary/android/feather/effects/TiltShiftPanel;->mPreview:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v4, 0x41000000    # 8.0f

    invoke-virtual {v0, v1, v2, v3, v4}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->setImageBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;FF)V

    .line 98
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/TiltShiftPanel;->contentReady()V

    .line 99
    return-void
.end method

.method public onCancelled()V
    .locals 0

    .prologue
    .line 180
    invoke-super {p0}, Lcom/aviary/android/feather/effects/AbstractContentPanel;->onCancelled()V

    .line 181
    return-void
.end method

.method public onCheckedChanged(Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;ZZ)V
    .locals 7
    .param p1, "button"    # Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;
    .param p2, "isChecked"    # Z
    .param p3, "fromUser"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 113
    iget-object v1, p0, Lcom/aviary/android/feather/effects/TiltShiftPanel;->mLogger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    new-array v2, v6, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onCheckedChanged: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", fromUser: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-interface {v1, v2}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 115
    invoke-virtual {p1}, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->getId()I

    move-result v0

    .line 118
    .local v0, "id":I
    if-nez p2, :cond_1

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    iget-object v1, p0, Lcom/aviary/android/feather/effects/TiltShiftPanel;->mRectButton:Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;

    invoke-virtual {v1}, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->getId()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 123
    iget-object v1, p0, Lcom/aviary/android/feather/effects/TiltShiftPanel;->mLogger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "rect"

    aput-object v3, v2, v5

    invoke-interface {v1, v2}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->log([Ljava/lang/Object;)V

    .line 124
    sget-object v1, Lcom/aviary/android/feather/headless/filters/NativeToolFilter$TiltShiftMode;->Linear:Lcom/aviary/android/feather/headless/filters/NativeToolFilter$TiltShiftMode;

    iput-object v1, p0, Lcom/aviary/android/feather/effects/TiltShiftPanel;->mTiltShiftMode:Lcom/aviary/android/feather/headless/filters/NativeToolFilter$TiltShiftMode;

    .line 125
    iget-object v1, p0, Lcom/aviary/android/feather/effects/TiltShiftPanel;->mCircleButton:Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;

    invoke-virtual {v1, v5}, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->setChecked(Z)V

    .line 132
    :cond_2
    :goto_1
    if-nez p3, :cond_4

    .line 133
    iget-object v1, p0, Lcom/aviary/android/feather/effects/TiltShiftPanel;->mLogger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "return"

    aput-object v3, v2, v5

    invoke-interface {v1, v2}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->log([Ljava/lang/Object;)V

    goto :goto_0

    .line 126
    :cond_3
    iget-object v1, p0, Lcom/aviary/android/feather/effects/TiltShiftPanel;->mCircleButton:Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;

    invoke-virtual {v1}, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->getId()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 127
    iget-object v1, p0, Lcom/aviary/android/feather/effects/TiltShiftPanel;->mLogger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "circle"

    aput-object v3, v2, v5

    invoke-interface {v1, v2}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->log([Ljava/lang/Object;)V

    .line 128
    sget-object v1, Lcom/aviary/android/feather/headless/filters/NativeToolFilter$TiltShiftMode;->Radial:Lcom/aviary/android/feather/headless/filters/NativeToolFilter$TiltShiftMode;

    iput-object v1, p0, Lcom/aviary/android/feather/effects/TiltShiftPanel;->mTiltShiftMode:Lcom/aviary/android/feather/headless/filters/NativeToolFilter$TiltShiftMode;

    .line 129
    iget-object v1, p0, Lcom/aviary/android/feather/effects/TiltShiftPanel;->mRectButton:Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;

    invoke-virtual {v1, v5}, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->setChecked(Z)V

    goto :goto_1

    .line 137
    :cond_4
    iget-object v1, p0, Lcom/aviary/android/feather/effects/TiltShiftPanel;->mTiltShiftMode:Lcom/aviary/android/feather/headless/filters/NativeToolFilter$TiltShiftMode;

    sget-object v2, Lcom/aviary/android/feather/headless/filters/NativeToolFilter$TiltShiftMode;->Radial:Lcom/aviary/android/feather/headless/filters/NativeToolFilter$TiltShiftMode;

    if-ne v1, v2, :cond_5

    .line 138
    iget-object v1, p0, Lcom/aviary/android/feather/effects/TiltShiftPanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    check-cast v1, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;

    sget-object v2, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch$TiltShiftDrawMode;->Radial:Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch$TiltShiftDrawMode;

    invoke-virtual {v1, v2}, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->setTiltShiftDrawMode(Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch$TiltShiftDrawMode;)V

    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->TILT_SHIFT:Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    invoke-virtual {v2}, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->name()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": CircleClicked"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/aviary/android/feather/library/tracking/Tracker;->recordTag(Ljava/lang/String;)Z

    goto :goto_0

    .line 140
    :cond_5
    iget-object v1, p0, Lcom/aviary/android/feather/effects/TiltShiftPanel;->mTiltShiftMode:Lcom/aviary/android/feather/headless/filters/NativeToolFilter$TiltShiftMode;

    sget-object v2, Lcom/aviary/android/feather/headless/filters/NativeToolFilter$TiltShiftMode;->Linear:Lcom/aviary/android/feather/headless/filters/NativeToolFilter$TiltShiftMode;

    if-ne v1, v2, :cond_0

    .line 141
    iget-object v1, p0, Lcom/aviary/android/feather/effects/TiltShiftPanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    check-cast v1, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;

    sget-object v2, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch$TiltShiftDrawMode;->Linear:Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch$TiltShiftDrawMode;

    invoke-virtual {v1, v2}, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->setTiltShiftDrawMode(Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch$TiltShiftDrawMode;)V

    .line 142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->TILT_SHIFT:Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    invoke-virtual {v2}, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->name()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": RectangleClicked"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/aviary/android/feather/library/tracking/Tracker;->recordTag(Ljava/lang/String;)Z

    goto/16 :goto_0
.end method

.method protected onComplete(Landroid/graphics/Bitmap;Lcom/aviary/android/feather/headless/moa/MoaActionList;)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "actions"    # Lcom/aviary/android/feather/headless/moa/MoaActionList;

    .prologue
    .line 241
    iget-object v0, p0, Lcom/aviary/android/feather/effects/TiltShiftPanel;->mTiltShiftMode:Lcom/aviary/android/feather/headless/filters/NativeToolFilter$TiltShiftMode;

    sget-object v1, Lcom/aviary/android/feather/headless/filters/NativeToolFilter$TiltShiftMode;->Radial:Lcom/aviary/android/feather/headless/filters/NativeToolFilter$TiltShiftMode;

    if-ne v0, v1, :cond_0

    .line 242
    iget-object v0, p0, Lcom/aviary/android/feather/effects/TiltShiftPanel;->mTrackingAttributes:Ljava/util/HashMap;

    const-string/jumbo v1, "shape"

    const-string/jumbo v2, "Circle"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/aviary/android/feather/effects/AbstractContentPanel;->onComplete(Landroid/graphics/Bitmap;Lcom/aviary/android/feather/headless/moa/MoaActionList;)V

    .line 247
    return-void

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/aviary/android/feather/effects/TiltShiftPanel;->mTrackingAttributes:Ljava/util/HashMap;

    const-string/jumbo v1, "shape"

    const-string/jumbo v2, "Rectangle"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public onCreate(Landroid/graphics/Bitmap;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "options"    # Landroid/os/Bundle;

    .prologue
    .line 64
    invoke-super {p0, p1, p2}, Lcom/aviary/android/feather/effects/AbstractContentPanel;->onCreate(Landroid/graphics/Bitmap;Landroid/os/Bundle;)V

    .line 66
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/TiltShiftPanel;->getOptionView()Landroid/view/ViewGroup;

    move-result-object v1

    sget v2, Lcom/aviary/android/feather/R$id;->aviary_button_rectangle:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;

    iput-object v1, p0, Lcom/aviary/android/feather/effects/TiltShiftPanel;->mRectButton:Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;

    .line 67
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/TiltShiftPanel;->getOptionView()Landroid/view/ViewGroup;

    move-result-object v1

    sget v2, Lcom/aviary/android/feather/R$id;->aviary_button_circle:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;

    iput-object v1, p0, Lcom/aviary/android/feather/effects/TiltShiftPanel;->mCircleButton:Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;

    .line 68
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/TiltShiftPanel;->getContentView()Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/aviary/android/feather/R$id;->aviary_image:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;

    iput-object v1, p0, Lcom/aviary/android/feather/effects/TiltShiftPanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    .line 70
    iget-object v1, p0, Lcom/aviary/android/feather/effects/TiltShiftPanel;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/aviary/android/feather/effects/TiltShiftPanel;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/aviary/android/feather/effects/TiltShiftPanel;->mPreview:Landroid/graphics/Bitmap;

    .line 71
    iget-object v1, p0, Lcom/aviary/android/feather/effects/TiltShiftPanel;->mPreview:Landroid/graphics/Bitmap;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 73
    iget-object v0, p0, Lcom/aviary/android/feather/effects/TiltShiftPanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    check-cast v0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;

    .line 74
    .local v0, "image":Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;
    invoke-virtual {v0, p0}, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->setOnDrawableChangedListener(Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$OnDrawableChangeListener;)V

    .line 75
    sget-object v1, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$DisplayType;->FIT_IF_BIGGER:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$DisplayType;

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->setDisplayType(Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$DisplayType;)V

    .line 78
    iget-object v1, p0, Lcom/aviary/android/feather/effects/TiltShiftPanel;->mCircleButton:Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;

    invoke-virtual {v1, p0}, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->setOnCheckedChangeListener(Lcom/aviary/android/feather/widget/AviaryHighlightImageButton$OnCheckedChangeListener;)V

    .line 79
    iget-object v1, p0, Lcom/aviary/android/feather/effects/TiltShiftPanel;->mRectButton:Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;

    invoke-virtual {v1, p0}, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->setOnCheckedChangeListener(Lcom/aviary/android/feather/widget/AviaryHighlightImageButton$OnCheckedChangeListener;)V

    .line 82
    new-instance v1, Lcom/aviary/android/feather/effects/TiltShiftPanel$BackgroundDrawThread;

    const-string/jumbo v2, "filter-thread"

    const/4 v3, 0x5

    invoke-direct {v1, p0, v2, v3}, Lcom/aviary/android/feather/effects/TiltShiftPanel$BackgroundDrawThread;-><init>(Lcom/aviary/android/feather/effects/TiltShiftPanel;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/aviary/android/feather/effects/TiltShiftPanel;->mBackgroundDrawThread:Lcom/aviary/android/feather/effects/TiltShiftPanel$BackgroundDrawThread;

    .line 85
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/TiltShiftPanel;->createFilter()Lcom/aviary/android/feather/library/filters/TiltShiftFilter;

    move-result-object v1

    iput-object v1, p0, Lcom/aviary/android/feather/effects/TiltShiftPanel;->mFilter:Lcom/aviary/android/feather/library/filters/TiltShiftFilter;

    .line 86
    return-void
.end method

.method public onDeactivate()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 149
    iget-object v0, p0, Lcom/aviary/android/feather/effects/TiltShiftPanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->setOnDrawableChangedListener(Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$OnDrawableChangeListener;)V

    .line 150
    iget-object v0, p0, Lcom/aviary/android/feather/effects/TiltShiftPanel;->mCircleButton:Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;

    invoke-virtual {v0, p0}, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->setOnCheckedChangeListener(Lcom/aviary/android/feather/widget/AviaryHighlightImageButton$OnCheckedChangeListener;)V

    .line 151
    iget-object v0, p0, Lcom/aviary/android/feather/effects/TiltShiftPanel;->mRectButton:Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;

    invoke-virtual {v0, p0}, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->setOnCheckedChangeListener(Lcom/aviary/android/feather/widget/AviaryHighlightImageButton$OnCheckedChangeListener;)V

    .line 153
    iget-object v0, p0, Lcom/aviary/android/feather/effects/TiltShiftPanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    check-cast v0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->setOnDrawStartListener(Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch$OnTiltShiftDrawListener;)V

    .line 155
    iget-object v0, p0, Lcom/aviary/android/feather/effects/TiltShiftPanel;->mBackgroundDrawThread:Lcom/aviary/android/feather/effects/TiltShiftPanel$BackgroundDrawThread;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/aviary/android/feather/effects/TiltShiftPanel;->mBackgroundDrawThread:Lcom/aviary/android/feather/effects/TiltShiftPanel$BackgroundDrawThread;

    invoke-virtual {v0}, Lcom/aviary/android/feather/effects/TiltShiftPanel$BackgroundDrawThread;->clear()V

    .line 159
    iget-object v0, p0, Lcom/aviary/android/feather/effects/TiltShiftPanel;->mBackgroundDrawThread:Lcom/aviary/android/feather/effects/TiltShiftPanel$BackgroundDrawThread;

    invoke-virtual {v0}, Lcom/aviary/android/feather/effects/TiltShiftPanel$BackgroundDrawThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/aviary/android/feather/effects/TiltShiftPanel;->mBackgroundDrawThread:Lcom/aviary/android/feather/effects/TiltShiftPanel$BackgroundDrawThread;

    invoke-virtual {v0}, Lcom/aviary/android/feather/effects/TiltShiftPanel$BackgroundDrawThread;->quit()V

    .line 161
    :goto_0
    iget-object v0, p0, Lcom/aviary/android/feather/effects/TiltShiftPanel;->mBackgroundDrawThread:Lcom/aviary/android/feather/effects/TiltShiftPanel$BackgroundDrawThread;

    invoke-virtual {v0}, Lcom/aviary/android/feather/effects/TiltShiftPanel$BackgroundDrawThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/aviary/android/feather/effects/TiltShiftPanel;->mLogger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "isAlive..."

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->log([Ljava/lang/Object;)V

    goto :goto_0

    .line 167
    :cond_0
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/TiltShiftPanel;->onProgressEnd()V

    .line 168
    invoke-super {p0}, Lcom/aviary/android/feather/effects/AbstractContentPanel;->onDeactivate()V

    .line 169
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 173
    invoke-super {p0}, Lcom/aviary/android/feather/effects/AbstractContentPanel;->onDestroy()V

    .line 174
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aviary/android/feather/effects/TiltShiftPanel;->mBackgroundDrawThread:Lcom/aviary/android/feather/effects/TiltShiftPanel$BackgroundDrawThread;

    .line 175
    iget-object v0, p0, Lcom/aviary/android/feather/effects/TiltShiftPanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    invoke-virtual {v0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->clear()V

    .line 176
    return-void
.end method

.method protected onDispose()V
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aviary/android/feather/effects/TiltShiftPanel;->mContentReadyListener:Lcom/aviary/android/feather/effects/AbstractPanel$OnContentReadyListener;

    .line 106
    iget-object v0, p0, Lcom/aviary/android/feather/effects/TiltShiftPanel;->mFilter:Lcom/aviary/android/feather/library/filters/TiltShiftFilter;

    invoke-virtual {v0}, Lcom/aviary/android/feather/library/filters/TiltShiftFilter;->dispose()V

    .line 107
    invoke-super {p0}, Lcom/aviary/android/feather/effects/AbstractContentPanel;->onDispose()V

    .line 108
    return-void
.end method

.method public onDrawEnd()V
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/aviary/android/feather/effects/TiltShiftPanel;->mBackgroundDrawThread:Lcom/aviary/android/feather/effects/TiltShiftPanel$BackgroundDrawThread;

    invoke-virtual {v0}, Lcom/aviary/android/feather/effects/TiltShiftPanel$BackgroundDrawThread;->pathEnd()V

    .line 197
    return-void
.end method

.method public onDrawStart([FLcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch$TiltShiftDrawMode;FFFFFF)V
    .locals 9
    .param p1, "points"    # [F
    .param p2, "mode"    # Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch$TiltShiftDrawMode;
    .param p3, "radius"    # F
    .param p4, "angle"    # F
    .param p5, "left"    # F
    .param p6, "top"    # F
    .param p7, "right"    # F
    .param p8, "bottom"    # F

    .prologue
    .line 185
    iget-object v0, p0, Lcom/aviary/android/feather/effects/TiltShiftPanel;->mBackgroundDrawThread:Lcom/aviary/android/feather/effects/TiltShiftPanel$BackgroundDrawThread;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/aviary/android/feather/effects/TiltShiftPanel$BackgroundDrawThread;->drawStart([FLcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch$TiltShiftDrawMode;FFFFFF)V

    .line 186
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/aviary/android/feather/effects/TiltShiftPanel;->setIsChanged(Z)V

    .line 187
    return-void
.end method

.method public onDrawableChanged(Landroid/graphics/drawable/Drawable;)V
    .locals 5
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 202
    iget-object v0, p0, Lcom/aviary/android/feather/effects/TiltShiftPanel;->mLogger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onDrawableChanged: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 204
    iget-object v0, p0, Lcom/aviary/android/feather/effects/TiltShiftPanel;->mCircleButton:Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;

    invoke-virtual {v0}, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 205
    sget-object v0, Lcom/aviary/android/feather/headless/filters/NativeToolFilter$TiltShiftMode;->Radial:Lcom/aviary/android/feather/headless/filters/NativeToolFilter$TiltShiftMode;

    iput-object v0, p0, Lcom/aviary/android/feather/effects/TiltShiftPanel;->mTiltShiftMode:Lcom/aviary/android/feather/headless/filters/NativeToolFilter$TiltShiftMode;

    .line 210
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/TiltShiftPanel;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/aviary/android/feather/effects/TiltShiftPanel$1;

    invoke-direct {v1, p0}, Lcom/aviary/android/feather/effects/TiltShiftPanel$1;-><init>(Lcom/aviary/android/feather/effects/TiltShiftPanel;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 225
    return-void

    .line 206
    :cond_1
    iget-object v0, p0, Lcom/aviary/android/feather/effects/TiltShiftPanel;->mRectButton:Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;

    invoke-virtual {v0}, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    sget-object v0, Lcom/aviary/android/feather/headless/filters/NativeToolFilter$TiltShiftMode;->Linear:Lcom/aviary/android/feather/headless/filters/NativeToolFilter$TiltShiftMode;

    iput-object v0, p0, Lcom/aviary/android/feather/effects/TiltShiftPanel;->mTiltShiftMode:Lcom/aviary/android/feather/headless/filters/NativeToolFilter$TiltShiftMode;

    goto :goto_0
.end method

.method public onDrawing([FFFFFFF)V
    .locals 8
    .param p1, "points"    # [F
    .param p2, "radius"    # F
    .param p3, "angle"    # F
    .param p4, "left"    # F
    .param p5, "top"    # F
    .param p6, "right"    # F
    .param p7, "bottom"    # F

    .prologue
    .line 191
    iget-object v0, p0, Lcom/aviary/android/feather/effects/TiltShiftPanel;->mBackgroundDrawThread:Lcom/aviary/android/feather/effects/TiltShiftPanel$BackgroundDrawThread;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/aviary/android/feather/effects/TiltShiftPanel$BackgroundDrawThread;->draw([FFFFFFF)V

    .line 192
    return-void
.end method

.method protected onGenerateResult()V
    .locals 3

    .prologue
    .line 229
    iget-object v1, p0, Lcom/aviary/android/feather/effects/TiltShiftPanel;->mBackgroundDrawThread:Lcom/aviary/android/feather/effects/TiltShiftPanel$BackgroundDrawThread;

    invoke-virtual {v1}, Lcom/aviary/android/feather/effects/TiltShiftPanel$BackgroundDrawThread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/aviary/android/feather/effects/TiltShiftPanel;->mBackgroundDrawThread:Lcom/aviary/android/feather/effects/TiltShiftPanel$BackgroundDrawThread;

    invoke-virtual {v1}, Lcom/aviary/android/feather/effects/TiltShiftPanel$BackgroundDrawThread;->isCompleted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 230
    iget-object v1, p0, Lcom/aviary/android/feather/effects/TiltShiftPanel;->mBackgroundDrawThread:Lcom/aviary/android/feather/effects/TiltShiftPanel$BackgroundDrawThread;

    invoke-virtual {v1}, Lcom/aviary/android/feather/effects/TiltShiftPanel$BackgroundDrawThread;->finish()V

    .line 231
    new-instance v0, Lcom/aviary/android/feather/effects/TiltShiftPanel$GenerateResultTask;

    invoke-direct {v0, p0}, Lcom/aviary/android/feather/effects/TiltShiftPanel$GenerateResultTask;-><init>(Lcom/aviary/android/feather/effects/TiltShiftPanel;)V

    .line 232
    .local v0, "task":Lcom/aviary/android/feather/effects/TiltShiftPanel$GenerateResultTask;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/effects/TiltShiftPanel$GenerateResultTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 236
    .end local v0    # "task":Lcom/aviary/android/feather/effects/TiltShiftPanel$GenerateResultTask;
    :goto_0
    return-void

    .line 234
    :cond_0
    iget-object v1, p0, Lcom/aviary/android/feather/effects/TiltShiftPanel;->mPreview:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/aviary/android/feather/effects/TiltShiftPanel;->mFilter:Lcom/aviary/android/feather/library/filters/TiltShiftFilter;

    invoke-virtual {v2}, Lcom/aviary/android/feather/library/filters/TiltShiftFilter;->getActions()Lcom/aviary/android/feather/headless/moa/MoaActionList;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/aviary/android/feather/effects/TiltShiftPanel;->onComplete(Landroid/graphics/Bitmap;Lcom/aviary/android/feather/headless/moa/MoaActionList;)V

    goto :goto_0
.end method

.method public bridge synthetic setEnabled(Z)V
    .locals 0

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/aviary/android/feather/effects/AbstractContentPanel;->setEnabled(Z)V

    return-void
.end method
