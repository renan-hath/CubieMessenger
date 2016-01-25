.class public Lcom/aviary/android/feather/effects/DrawingPanel;
.super Lcom/aviary/android/feather/effects/AbstractContentPanel;
.source "DrawingPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw$OnDrawPathListener;
.implements Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw$OnDrawStartListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aviary/android/feather/effects/DrawingPanel$GalleryColorAdapter;,
        Lcom/aviary/android/feather/effects/DrawingPanel$GallerySizeAdapter;,
        Lcom/aviary/android/feather/effects/DrawingPanel$DrawinTool;
    }
.end annotation


# instance fields
.field mAction:Lcom/aviary/android/feather/headless/moa/MoaAction;

.field mActionList:Lcom/aviary/android/feather/headless/moa/MoaActionList;

.field private mBlur:I

.field private mBrushColorIndex:I

.field mBrushColors:[I

.field private mBrushSizeIndex:I

.field mBrushSizes:[I

.field private mColor:I

.field private mConfig:Lcom/aviary/android/feather/library/services/ConfigService;

.field mCurrentOperation:Lcom/aviary/android/feather/headless/moa/MoaGraphicsOperationParameter;

.field mDrawable:Lcom/aviary/android/feather/graphics/PreviewFillColorDrawable;

.field mEraserDrawable:Lcom/aviary/android/feather/graphics/PreviewSpotDrawable;

.field protected mGalleryColor:Lcom/aviary/android/feather/widget/AviaryGallery;

.field protected mGallerySize:Lcom/aviary/android/feather/widget/AviaryGallery;

.field mHeight:I

.field protected mLensButton:Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;

.field mOperations:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/aviary/android/feather/headless/moa/MoaGraphicsOperationParameter;",
            ">;"
        }
    .end annotation
.end field

.field private mPaint:Landroid/graphics/Paint;

.field protected mSelectedColorPosition:I

.field protected mSelectedSizePosition:I

.field private mSelectedTool:Lcom/aviary/android/feather/effects/DrawingPanel$DrawinTool;

.field private mSize:I

.field mToast:Landroid/widget/Toast;

.field mWidth:I

.field private maxBrushSize:I

.field private maxRadiusSize:F

.field private minBrushSize:I

.field private minRadiusSize:F


# direct methods
.method public constructor <init>(Lcom/aviary/android/feather/library/services/IAviaryController;Lcom/aviary/android/feather/library/content/ToolEntry;)V
    .locals 1
    .param p1, "context"    # Lcom/aviary/android/feather/library/services/IAviaryController;
    .param p2, "entry"    # Lcom/aviary/android/feather/library/content/ToolEntry;

    .prologue
    const/4 v0, 0x0

    .line 97
    invoke-direct {p0, p1, p2}, Lcom/aviary/android/feather/effects/AbstractContentPanel;-><init>(Lcom/aviary/android/feather/library/services/IAviaryController;Lcom/aviary/android/feather/library/content/ToolEntry;)V

    .line 63
    iput v0, p0, Lcom/aviary/android/feather/effects/DrawingPanel;->mSelectedSizePosition:I

    .line 68
    iput v0, p0, Lcom/aviary/android/feather/effects/DrawingPanel;->mColor:I

    .line 69
    const/16 v0, 0xa

    iput v0, p0, Lcom/aviary/android/feather/effects/DrawingPanel;->mSize:I

    .line 70
    const/4 v0, 0x1

    iput v0, p0, Lcom/aviary/android/feather/effects/DrawingPanel;->mBlur:I

    .line 98
    return-void
.end method

.method static synthetic access$000(Lcom/aviary/android/feather/effects/DrawingPanel;)I
    .locals 1
    .param p0, "x0"    # Lcom/aviary/android/feather/effects/DrawingPanel;

    .prologue
    .line 52
    iget v0, p0, Lcom/aviary/android/feather/effects/DrawingPanel;->mSize:I

    return v0
.end method

.method static synthetic access$002(Lcom/aviary/android/feather/effects/DrawingPanel;I)I
    .locals 0
    .param p0, "x0"    # Lcom/aviary/android/feather/effects/DrawingPanel;
    .param p1, "x1"    # I

    .prologue
    .line 52
    iput p1, p0, Lcom/aviary/android/feather/effects/DrawingPanel;->mSize:I

    return p1
.end method

.method static synthetic access$100(Lcom/aviary/android/feather/effects/DrawingPanel;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lcom/aviary/android/feather/effects/DrawingPanel;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/aviary/android/feather/effects/DrawingPanel;->mPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$200(Lcom/aviary/android/feather/effects/DrawingPanel;)Lcom/aviary/android/feather/effects/DrawingPanel$DrawinTool;
    .locals 1
    .param p0, "x0"    # Lcom/aviary/android/feather/effects/DrawingPanel;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/aviary/android/feather/effects/DrawingPanel;->getSelectedTool()Lcom/aviary/android/feather/effects/DrawingPanel$DrawinTool;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/aviary/android/feather/effects/DrawingPanel;Lcom/aviary/android/feather/effects/DrawingPanel$DrawinTool;)V
    .locals 0
    .param p0, "x0"    # Lcom/aviary/android/feather/effects/DrawingPanel;
    .param p1, "x1"    # Lcom/aviary/android/feather/effects/DrawingPanel$DrawinTool;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/aviary/android/feather/effects/DrawingPanel;->setSelectedTool(Lcom/aviary/android/feather/effects/DrawingPanel$DrawinTool;)V

    return-void
.end method

.method static synthetic access$400(Lcom/aviary/android/feather/effects/DrawingPanel;)V
    .locals 0
    .param p0, "x0"    # Lcom/aviary/android/feather/effects/DrawingPanel;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/aviary/android/feather/effects/DrawingPanel;->updateToast()V

    return-void
.end method

.method static synthetic access$500(Lcom/aviary/android/feather/effects/DrawingPanel;)I
    .locals 1
    .param p0, "x0"    # Lcom/aviary/android/feather/effects/DrawingPanel;

    .prologue
    .line 52
    iget v0, p0, Lcom/aviary/android/feather/effects/DrawingPanel;->mColor:I

    return v0
.end method

.method static synthetic access$502(Lcom/aviary/android/feather/effects/DrawingPanel;I)I
    .locals 0
    .param p0, "x0"    # Lcom/aviary/android/feather/effects/DrawingPanel;
    .param p1, "x1"    # I

    .prologue
    .line 52
    iput p1, p0, Lcom/aviary/android/feather/effects/DrawingPanel;->mColor:I

    return p1
.end method

.method static synthetic access$600(Lcom/aviary/android/feather/effects/DrawingPanel;)F
    .locals 1
    .param p0, "x0"    # Lcom/aviary/android/feather/effects/DrawingPanel;

    .prologue
    .line 52
    iget v0, p0, Lcom/aviary/android/feather/effects/DrawingPanel;->minRadiusSize:F

    return v0
.end method

.method static synthetic access$700(Lcom/aviary/android/feather/effects/DrawingPanel;)I
    .locals 1
    .param p0, "x0"    # Lcom/aviary/android/feather/effects/DrawingPanel;

    .prologue
    .line 52
    iget v0, p0, Lcom/aviary/android/feather/effects/DrawingPanel;->minBrushSize:I

    return v0
.end method

.method static synthetic access$800(Lcom/aviary/android/feather/effects/DrawingPanel;)I
    .locals 1
    .param p0, "x0"    # Lcom/aviary/android/feather/effects/DrawingPanel;

    .prologue
    .line 52
    iget v0, p0, Lcom/aviary/android/feather/effects/DrawingPanel;->maxBrushSize:I

    return v0
.end method

.method static synthetic access$900(Lcom/aviary/android/feather/effects/DrawingPanel;)F
    .locals 1
    .param p0, "x0"    # Lcom/aviary/android/feather/effects/DrawingPanel;

    .prologue
    .line 52
    iget v0, p0, Lcom/aviary/android/feather/effects/DrawingPanel;->maxRadiusSize:F

    return v0
.end method

.method private getSelectedTool()Lcom/aviary/android/feather/effects/DrawingPanel$DrawinTool;
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/aviary/android/feather/effects/DrawingPanel;->mSelectedTool:Lcom/aviary/android/feather/effects/DrawingPanel$DrawinTool;

    return-object v0
.end method

.method private initPaint(Landroid/graphics/Paint;)Landroid/graphics/Paint;
    .locals 3
    .param p1, "original"    # Landroid/graphics/Paint;

    .prologue
    const/4 v0, 0x1

    .line 370
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setDither(Z)V

    .line 371
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 372
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 373
    iget v0, p0, Lcom/aviary/android/feather/effects/DrawingPanel;->mColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 374
    iget v0, p0, Lcom/aviary/android/feather/effects/DrawingPanel;->mSize:I

    mul-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 375
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 376
    sget-object v0, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 377
    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 378
    new-instance v0, Landroid/graphics/BlurMaskFilter;

    iget v1, p0, Lcom/aviary/android/feather/effects/DrawingPanel;->mBlur:I

    int-to-float v1, v1

    sget-object v2, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v0, v1, v2}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 379
    return-object p1
.end method

.method private makeToast()Landroid/widget/Toast;
    .locals 4

    .prologue
    .line 292
    new-instance v2, Lcom/aviary/android/feather/graphics/PreviewFillColorDrawable;

    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/DrawingPanel;->getContext()Lcom/aviary/android/feather/library/services/IAviaryController;

    move-result-object v3

    invoke-interface {v3}, Lcom/aviary/android/feather/library/services/IAviaryController;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/aviary/android/feather/graphics/PreviewFillColorDrawable;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/aviary/android/feather/effects/DrawingPanel;->mDrawable:Lcom/aviary/android/feather/graphics/PreviewFillColorDrawable;

    .line 293
    new-instance v2, Lcom/aviary/android/feather/graphics/PreviewSpotDrawable;

    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/DrawingPanel;->getContext()Lcom/aviary/android/feather/library/services/IAviaryController;

    move-result-object v3

    invoke-interface {v3}, Lcom/aviary/android/feather/library/services/IAviaryController;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/aviary/android/feather/graphics/PreviewSpotDrawable;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/aviary/android/feather/effects/DrawingPanel;->mEraserDrawable:Lcom/aviary/android/feather/graphics/PreviewSpotDrawable;

    .line 294
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/DrawingPanel;->getContext()Lcom/aviary/android/feather/library/services/IAviaryController;

    move-result-object v2

    invoke-interface {v2}, Lcom/aviary/android/feather/library/services/IAviaryController;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/aviary/android/feather/utils/UIUtils;->makeCustomToast(Landroid/content/Context;)Landroid/widget/Toast;

    move-result-object v1

    .line 295
    .local v1, "t":Landroid/widget/Toast;
    invoke-virtual {v1}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v2

    sget v3, Lcom/aviary/android/feather/R$id;->image:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 296
    .local v0, "image":Landroid/widget/ImageView;
    iget-object v2, p0, Lcom/aviary/android/feather/effects/DrawingPanel;->mDrawable:Lcom/aviary/android/feather/graphics/PreviewFillColorDrawable;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 297
    return-object v1
.end method

.method private resetBitmap()V
    .locals 6

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/DrawingPanel;->getContext()Lcom/aviary/android/feather/library/services/IAviaryController;

    move-result-object v1

    invoke-interface {v1}, Lcom/aviary/android/feather/library/services/IAviaryController;->getCurrentImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 175
    .local v0, "current":Landroid/graphics/Matrix;
    iget-object v1, p0, Lcom/aviary/android/feather/effects/DrawingPanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    iget-object v2, p0, Lcom/aviary/android/feather/effects/DrawingPanel;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    const/high16 v4, -0x40800000    # -1.0f

    const/high16 v5, 0x41000000    # 8.0f

    invoke-virtual {v1, v2, v3, v4, v5}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->setImageBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;FF)V

    .line 176
    iget-object v1, p0, Lcom/aviary/android/feather/effects/DrawingPanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    check-cast v1, Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw;

    sget-object v2, Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw$TouchMode;->DRAW:Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw$TouchMode;

    invoke-virtual {v1, v2}, Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw;->setDrawMode(Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw$TouchMode;)V

    .line 177
    return-void
.end method

.method private setSelectedTool(Lcom/aviary/android/feather/effects/DrawingPanel$DrawinTool;)V
    .locals 5
    .param p1, "which"    # Lcom/aviary/android/feather/effects/DrawingPanel$DrawinTool;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 324
    sget-object v0, Lcom/aviary/android/feather/effects/DrawingPanel$3;->$SwitchMap$com$aviary$android$feather$effects$DrawingPanel$DrawinTool:[I

    invoke-virtual {p1}, Lcom/aviary/android/feather/effects/DrawingPanel$DrawinTool;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    .line 342
    :goto_0
    iget-object v3, p0, Lcom/aviary/android/feather/effects/DrawingPanel;->mLensButton:Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;

    sget-object v0, Lcom/aviary/android/feather/effects/DrawingPanel$DrawinTool;->Zoom:Lcom/aviary/android/feather/effects/DrawingPanel$DrawinTool;

    if-ne p1, v0, :cond_0

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->setSelected(Z)V

    .line 343
    sget-object v0, Lcom/aviary/android/feather/effects/DrawingPanel$DrawinTool;->Zoom:Lcom/aviary/android/feather/effects/DrawingPanel$DrawinTool;

    if-eq p1, v0, :cond_1

    :goto_2
    invoke-virtual {p0, v1}, Lcom/aviary/android/feather/effects/DrawingPanel;->setPanelEnabled(Z)V

    .line 344
    iput-object p1, p0, Lcom/aviary/android/feather/effects/DrawingPanel;->mSelectedTool:Lcom/aviary/android/feather/effects/DrawingPanel$DrawinTool;

    .line 345
    return-void

    .line 326
    :pswitch_0
    iget-object v0, p0, Lcom/aviary/android/feather/effects/DrawingPanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    check-cast v0, Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw;

    sget-object v3, Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw$TouchMode;->DRAW:Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw$TouchMode;

    invoke-virtual {v0, v3}, Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw;->setDrawMode(Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw$TouchMode;)V

    .line 327
    iget-object v0, p0, Lcom/aviary/android/feather/effects/DrawingPanel;->mPaint:Landroid/graphics/Paint;

    const/16 v3, 0xff

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 328
    iget-object v0, p0, Lcom/aviary/android/feather/effects/DrawingPanel;->mPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto :goto_0

    .line 332
    :pswitch_1
    iget-object v0, p0, Lcom/aviary/android/feather/effects/DrawingPanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    check-cast v0, Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw;

    sget-object v3, Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw$TouchMode;->DRAW:Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw$TouchMode;

    invoke-virtual {v0, v3}, Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw;->setDrawMode(Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw$TouchMode;)V

    .line 333
    iget-object v0, p0, Lcom/aviary/android/feather/effects/DrawingPanel;->mPaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 334
    iget-object v0, p0, Lcom/aviary/android/feather/effects/DrawingPanel;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_0

    .line 338
    :pswitch_2
    iget-object v0, p0, Lcom/aviary/android/feather/effects/DrawingPanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    check-cast v0, Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw;

    sget-object v3, Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw$TouchMode;->IMAGE:Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw$TouchMode;

    invoke-virtual {v0, v3}, Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw;->setDrawMode(Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw$TouchMode;)V

    goto :goto_0

    :cond_0
    move v0, v2

    .line 342
    goto :goto_1

    :cond_1
    move v1, v2

    .line 343
    goto :goto_2

    .line 324
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setupFill()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 166
    iget-object v0, p0, Lcom/aviary/android/feather/effects/DrawingPanel;->mGalleryColor:Lcom/aviary/android/feather/widget/AviaryGallery;

    iget v1, p0, Lcom/aviary/android/feather/effects/DrawingPanel;->mBrushColorIndex:I

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/widget/AviaryGallery;->setDefaultPosition(I)V

    .line 167
    iget-object v0, p0, Lcom/aviary/android/feather/effects/DrawingPanel;->mGalleryColor:Lcom/aviary/android/feather/widget/AviaryGallery;

    invoke-virtual {v0, v2}, Lcom/aviary/android/feather/widget/AviaryGallery;->setCallbackDuringFling(Z)V

    .line 168
    iget-object v0, p0, Lcom/aviary/android/feather/effects/DrawingPanel;->mGalleryColor:Lcom/aviary/android/feather/widget/AviaryGallery;

    invoke-virtual {v0, v2}, Lcom/aviary/android/feather/widget/AviaryGallery;->setAutoSelectChild(Z)V

    .line 169
    iget-object v0, p0, Lcom/aviary/android/feather/effects/DrawingPanel;->mGalleryColor:Lcom/aviary/android/feather/widget/AviaryGallery;

    new-instance v1, Lcom/aviary/android/feather/effects/DrawingPanel$GalleryColorAdapter;

    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/DrawingPanel;->getContext()Lcom/aviary/android/feather/library/services/IAviaryController;

    move-result-object v2

    invoke-interface {v2}, Lcom/aviary/android/feather/library/services/IAviaryController;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/aviary/android/feather/effects/DrawingPanel;->mBrushColors:[I

    invoke-direct {v1, p0, v2, v3}, Lcom/aviary/android/feather/effects/DrawingPanel$GalleryColorAdapter;-><init>(Lcom/aviary/android/feather/effects/DrawingPanel;Landroid/content/Context;[I)V

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/widget/AviaryGallery;->setAdapter(Landroid/widget/Adapter;)V

    .line 170
    return-void
.end method

.method private setupSize()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 159
    iget-object v0, p0, Lcom/aviary/android/feather/effects/DrawingPanel;->mGallerySize:Lcom/aviary/android/feather/widget/AviaryGallery;

    iget v1, p0, Lcom/aviary/android/feather/effects/DrawingPanel;->mBrushSizeIndex:I

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/widget/AviaryGallery;->setDefaultPosition(I)V

    .line 160
    iget-object v0, p0, Lcom/aviary/android/feather/effects/DrawingPanel;->mGallerySize:Lcom/aviary/android/feather/widget/AviaryGallery;

    invoke-virtual {v0, v2}, Lcom/aviary/android/feather/widget/AviaryGallery;->setCallbackDuringFling(Z)V

    .line 161
    iget-object v0, p0, Lcom/aviary/android/feather/effects/DrawingPanel;->mGallerySize:Lcom/aviary/android/feather/widget/AviaryGallery;

    invoke-virtual {v0, v2}, Lcom/aviary/android/feather/widget/AviaryGallery;->setAutoSelectChild(Z)V

    .line 162
    iget-object v0, p0, Lcom/aviary/android/feather/effects/DrawingPanel;->mGallerySize:Lcom/aviary/android/feather/widget/AviaryGallery;

    new-instance v1, Lcom/aviary/android/feather/effects/DrawingPanel$GallerySizeAdapter;

    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/DrawingPanel;->getContext()Lcom/aviary/android/feather/library/services/IAviaryController;

    move-result-object v2

    invoke-interface {v2}, Lcom/aviary/android/feather/library/services/IAviaryController;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/aviary/android/feather/effects/DrawingPanel;->mBrushSizes:[I

    invoke-direct {v1, p0, v2, v3}, Lcom/aviary/android/feather/effects/DrawingPanel$GallerySizeAdapter;-><init>(Lcom/aviary/android/feather/effects/DrawingPanel;Landroid/content/Context;[I)V

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/widget/AviaryGallery;->setAdapter(Landroid/widget/Adapter;)V

    .line 163
    return-void
.end method

.method private updateToast()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 301
    iget-object v5, p0, Lcom/aviary/android/feather/effects/DrawingPanel;->mGalleryColor:Lcom/aviary/android/feather/widget/AviaryGallery;

    invoke-virtual {v5}, Lcom/aviary/android/feather/widget/AviaryGallery;->getSelectedItemPosition()I

    move-result v1

    .line 302
    .local v1, "color_pos":I
    iget-object v5, p0, Lcom/aviary/android/feather/effects/DrawingPanel;->mGallerySize:Lcom/aviary/android/feather/widget/AviaryGallery;

    invoke-virtual {v5}, Lcom/aviary/android/feather/widget/AviaryGallery;->getSelectedItemPosition()I

    move-result v4

    .line 304
    .local v4, "size_pos":I
    iget-object v5, p0, Lcom/aviary/android/feather/effects/DrawingPanel;->mToast:Landroid/widget/Toast;

    if-eqz v5, :cond_0

    if-le v1, v6, :cond_0

    if-le v4, v6, :cond_0

    .line 305
    iget-object v5, p0, Lcom/aviary/android/feather/effects/DrawingPanel;->mBrushColors:[I

    aget v0, v5, v1

    .line 306
    .local v0, "color":I
    iget-object v5, p0, Lcom/aviary/android/feather/effects/DrawingPanel;->mBrushSizes:[I

    aget v3, v5, v4

    .line 308
    .local v3, "size":I
    iget-object v5, p0, Lcom/aviary/android/feather/effects/DrawingPanel;->mToast:Landroid/widget/Toast;

    invoke-virtual {v5}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v5

    sget v6, Lcom/aviary/android/feather/R$id;->image:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 310
    .local v2, "image":Landroid/widget/ImageView;
    if-eqz v0, :cond_1

    .line 311
    iget-object v5, p0, Lcom/aviary/android/feather/effects/DrawingPanel;->mDrawable:Lcom/aviary/android/feather/graphics/PreviewFillColorDrawable;

    int-to-float v6, v3

    invoke-virtual {v5, v6}, Lcom/aviary/android/feather/graphics/PreviewFillColorDrawable;->setFixedRadius(F)V

    .line 312
    iget-object v5, p0, Lcom/aviary/android/feather/effects/DrawingPanel;->mDrawable:Lcom/aviary/android/feather/graphics/PreviewFillColorDrawable;

    invoke-virtual {v5, v0}, Lcom/aviary/android/feather/graphics/PreviewFillColorDrawable;->setColor(I)V

    .line 313
    iget-object v5, p0, Lcom/aviary/android/feather/effects/DrawingPanel;->mDrawable:Lcom/aviary/android/feather/graphics/PreviewFillColorDrawable;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 318
    :goto_0
    iget-object v5, p0, Lcom/aviary/android/feather/effects/DrawingPanel;->mToast:Landroid/widget/Toast;

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 320
    .end local v0    # "color":I
    .end local v2    # "image":Landroid/widget/ImageView;
    .end local v3    # "size":I
    :cond_0
    return-void

    .line 315
    .restart local v0    # "color":I
    .restart local v2    # "image":Landroid/widget/ImageView;
    .restart local v3    # "size":I
    :cond_1
    iget-object v5, p0, Lcom/aviary/android/feather/effects/DrawingPanel;->mEraserDrawable:Lcom/aviary/android/feather/graphics/PreviewSpotDrawable;

    int-to-float v6, v3

    invoke-virtual {v5, v6}, Lcom/aviary/android/feather/graphics/PreviewSpotDrawable;->setFixedRadius(F)V

    .line 316
    iget-object v5, p0, Lcom/aviary/android/feather/effects/DrawingPanel;->mEraserDrawable:Lcom/aviary/android/feather/graphics/PreviewSpotDrawable;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method protected generateContentView(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    .line 384
    sget v0, Lcom/aviary/android/feather/R$layout;->aviary_content_draw:I

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
    .line 389
    sget v0, Lcom/aviary/android/feather/R$layout;->aviary_panel_draw:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method public onActivate()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 181
    invoke-super {p0}, Lcom/aviary/android/feather/effects/AbstractContentPanel;->onActivate()V

    .line 183
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/aviary/android/feather/widget/VibrationWidget;

    iget-object v1, p0, Lcom/aviary/android/feather/effects/DrawingPanel;->mGalleryColor:Lcom/aviary/android/feather/widget/AviaryGallery;

    aput-object v1, v0, v3

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/aviary/android/feather/effects/DrawingPanel;->mGallerySize:Lcom/aviary/android/feather/widget/AviaryGallery;

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/aviary/android/feather/effects/DrawingPanel;->disableHapticIsNecessary([Lcom/aviary/android/feather/widget/VibrationWidget;)V

    .line 185
    iget-object v0, p0, Lcom/aviary/android/feather/effects/DrawingPanel;->mGallerySize:Lcom/aviary/android/feather/widget/AviaryGallery;

    new-instance v1, Lcom/aviary/android/feather/effects/DrawingPanel$1;

    invoke-direct {v1, p0}, Lcom/aviary/android/feather/effects/DrawingPanel$1;-><init>(Lcom/aviary/android/feather/effects/DrawingPanel;)V

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/widget/AviaryGallery;->setOnItemsScrollListener(Lcom/aviary/android/feather/widget/AviaryGallery$OnItemsScrollListener;)V

    .line 207
    iget-object v0, p0, Lcom/aviary/android/feather/effects/DrawingPanel;->mGalleryColor:Lcom/aviary/android/feather/widget/AviaryGallery;

    new-instance v1, Lcom/aviary/android/feather/effects/DrawingPanel$2;

    invoke-direct {v1, p0}, Lcom/aviary/android/feather/effects/DrawingPanel$2;-><init>(Lcom/aviary/android/feather/effects/DrawingPanel;)V

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/widget/AviaryGallery;->setOnItemsScrollListener(Lcom/aviary/android/feather/widget/AviaryGallery$OnItemsScrollListener;)V

    .line 245
    iget-object v0, p0, Lcom/aviary/android/feather/effects/DrawingPanel;->mLensButton:Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;

    invoke-virtual {v0, p0}, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 247
    sget-object v0, Lcom/aviary/android/feather/effects/DrawingPanel$DrawinTool;->Draw:Lcom/aviary/android/feather/effects/DrawingPanel$DrawinTool;

    invoke-direct {p0, v0}, Lcom/aviary/android/feather/effects/DrawingPanel;->setSelectedTool(Lcom/aviary/android/feather/effects/DrawingPanel$DrawinTool;)V

    .line 249
    iget-object v0, p0, Lcom/aviary/android/feather/effects/DrawingPanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    check-cast v0, Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw;

    invoke-virtual {v0, p0}, Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw;->setOnDrawStartListener(Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw$OnDrawStartListener;)V

    .line 250
    iget-object v0, p0, Lcom/aviary/android/feather/effects/DrawingPanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    check-cast v0, Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw;

    invoke-virtual {v0, p0}, Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw;->setOnDrawPathListener(Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw$OnDrawPathListener;)V

    .line 252
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/DrawingPanel;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 253
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/DrawingPanel;->contentReady()V

    .line 254
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 273
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 275
    .local v0, "id":I
    iget-object v2, p0, Lcom/aviary/android/feather/effects/DrawingPanel;->mLensButton:Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;

    invoke-virtual {v2}, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->getId()I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 276
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v1

    .line 277
    .local v1, "selected":Z
    if-nez v1, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {p1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 279
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 280
    sget-object v2, Lcom/aviary/android/feather/effects/DrawingPanel$DrawinTool;->Zoom:Lcom/aviary/android/feather/effects/DrawingPanel$DrawinTool;

    invoke-direct {p0, v2}, Lcom/aviary/android/feather/effects/DrawingPanel;->setSelectedTool(Lcom/aviary/android/feather/effects/DrawingPanel$DrawinTool;)V

    .line 289
    .end local v1    # "selected":Z
    :cond_0
    :goto_1
    return-void

    .line 277
    .restart local v1    # "selected":Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 282
    :cond_2
    iget-object v2, p0, Lcom/aviary/android/feather/effects/DrawingPanel;->mGalleryColor:Lcom/aviary/android/feather/widget/AviaryGallery;

    invoke-virtual {v2}, Lcom/aviary/android/feather/widget/AviaryGallery;->getSelectedItemPosition()I

    move-result v2

    if-nez v2, :cond_3

    .line 283
    sget-object v2, Lcom/aviary/android/feather/effects/DrawingPanel$DrawinTool;->Erase:Lcom/aviary/android/feather/effects/DrawingPanel$DrawinTool;

    invoke-direct {p0, v2}, Lcom/aviary/android/feather/effects/DrawingPanel;->setSelectedTool(Lcom/aviary/android/feather/effects/DrawingPanel$DrawinTool;)V

    goto :goto_1

    .line 285
    :cond_3
    sget-object v2, Lcom/aviary/android/feather/effects/DrawingPanel$DrawinTool;->Draw:Lcom/aviary/android/feather/effects/DrawingPanel$DrawinTool;

    invoke-direct {p0, v2}, Lcom/aviary/android/feather/effects/DrawingPanel;->setSelectedTool(Lcom/aviary/android/feather/effects/DrawingPanel$DrawinTool;)V

    goto :goto_1
.end method

.method public onCreate(Landroid/graphics/Bitmap;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "options"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    const/high16 v3, 0x42c80000    # 100.0f

    const/4 v2, 0x0

    .line 102
    invoke-super {p0, p1, p2}, Lcom/aviary/android/feather/effects/AbstractContentPanel;->onCreate(Landroid/graphics/Bitmap;Landroid/os/Bundle;)V

    .line 104
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/DrawingPanel;->getContext()Lcom/aviary/android/feather/library/services/IAviaryController;

    move-result-object v0

    const-class v1, Lcom/aviary/android/feather/library/services/ConfigService;

    invoke-interface {v0, v1}, Lcom/aviary/android/feather/library/services/IAviaryController;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aviary/android/feather/library/services/ConfigService;

    iput-object v0, p0, Lcom/aviary/android/feather/effects/DrawingPanel;->mConfig:Lcom/aviary/android/feather/library/services/ConfigService;

    .line 106
    iget-object v0, p0, Lcom/aviary/android/feather/effects/DrawingPanel;->mConfig:Lcom/aviary/android/feather/library/services/ConfigService;

    sget v1, Lcom/aviary/android/feather/R$integer;->aviary_spot_gallery_item_min_size:I

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/library/services/ConfigService;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v3

    iput v0, p0, Lcom/aviary/android/feather/effects/DrawingPanel;->minRadiusSize:F

    .line 107
    iget-object v0, p0, Lcom/aviary/android/feather/effects/DrawingPanel;->mConfig:Lcom/aviary/android/feather/library/services/ConfigService;

    sget v1, Lcom/aviary/android/feather/R$integer;->aviary_spot_gallery_item_max_size:I

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/library/services/ConfigService;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v3

    iput v0, p0, Lcom/aviary/android/feather/effects/DrawingPanel;->maxRadiusSize:F

    .line 109
    iget-object v0, p0, Lcom/aviary/android/feather/effects/DrawingPanel;->mConfig:Lcom/aviary/android/feather/library/services/ConfigService;

    sget v1, Lcom/aviary/android/feather/R$array;->aviary_draw_brush_sizes:I

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/library/services/ConfigService;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/aviary/android/feather/effects/DrawingPanel;->mBrushSizes:[I

    .line 110
    iget-object v0, p0, Lcom/aviary/android/feather/effects/DrawingPanel;->mConfig:Lcom/aviary/android/feather/library/services/ConfigService;

    sget v1, Lcom/aviary/android/feather/R$integer;->aviary_draw_brush_index:I

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/library/services/ConfigService;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/aviary/android/feather/effects/DrawingPanel;->mBrushSizeIndex:I

    .line 112
    iget-object v0, p0, Lcom/aviary/android/feather/effects/DrawingPanel;->mConfig:Lcom/aviary/android/feather/library/services/ConfigService;

    sget v1, Lcom/aviary/android/feather/R$array;->aviary_draw_fill_colors:I

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/library/services/ConfigService;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/aviary/android/feather/effects/DrawingPanel;->mBrushColors:[I

    .line 113
    iget-object v0, p0, Lcom/aviary/android/feather/effects/DrawingPanel;->mConfig:Lcom/aviary/android/feather/library/services/ConfigService;

    sget v1, Lcom/aviary/android/feather/R$integer;->aviary_draw_fill_color_index:I

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/library/services/ConfigService;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/aviary/android/feather/effects/DrawingPanel;->mBrushColorIndex:I

    .line 115
    iget-object v0, p0, Lcom/aviary/android/feather/effects/DrawingPanel;->mBrushSizes:[I

    aget v0, v0, v2

    iput v0, p0, Lcom/aviary/android/feather/effects/DrawingPanel;->minBrushSize:I

    .line 116
    iget-object v0, p0, Lcom/aviary/android/feather/effects/DrawingPanel;->mBrushSizes:[I

    iget-object v1, p0, Lcom/aviary/android/feather/effects/DrawingPanel;->mBrushSizes:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    iput v0, p0, Lcom/aviary/android/feather/effects/DrawingPanel;->maxBrushSize:I

    .line 118
    iget-object v0, p0, Lcom/aviary/android/feather/effects/DrawingPanel;->mConfig:Lcom/aviary/android/feather/library/services/ConfigService;

    sget v1, Lcom/aviary/android/feather/R$integer;->aviary_draw_brush_softValue:I

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/library/services/ConfigService;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/aviary/android/feather/effects/DrawingPanel;->mBlur:I

    .line 120
    iget-object v0, p0, Lcom/aviary/android/feather/effects/DrawingPanel;->mBrushColors:[I

    iget v1, p0, Lcom/aviary/android/feather/effects/DrawingPanel;->mBrushColorIndex:I

    aget v0, v0, v1

    iput v0, p0, Lcom/aviary/android/feather/effects/DrawingPanel;->mColor:I

    .line 121
    iget-object v0, p0, Lcom/aviary/android/feather/effects/DrawingPanel;->mBrushSizes:[I

    iget v1, p0, Lcom/aviary/android/feather/effects/DrawingPanel;->mBrushSizeIndex:I

    aget v0, v0, v1

    iput v0, p0, Lcom/aviary/android/feather/effects/DrawingPanel;->mSize:I

    .line 123
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/DrawingPanel;->getContentView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/aviary/android/feather/R$id;->aviary_lens_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;

    iput-object v0, p0, Lcom/aviary/android/feather/effects/DrawingPanel;->mLensButton:Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;

    .line 125
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/DrawingPanel;->getOptionView()Landroid/view/ViewGroup;

    move-result-object v0

    sget v1, Lcom/aviary/android/feather/R$id;->aviary_gallery:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/aviary/android/feather/widget/AviaryGallery;

    iput-object v0, p0, Lcom/aviary/android/feather/effects/DrawingPanel;->mGallerySize:Lcom/aviary/android/feather/widget/AviaryGallery;

    .line 126
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/DrawingPanel;->getOptionView()Landroid/view/ViewGroup;

    move-result-object v0

    sget v1, Lcom/aviary/android/feather/R$id;->aviary_gallery2:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/aviary/android/feather/widget/AviaryGallery;

    iput-object v0, p0, Lcom/aviary/android/feather/effects/DrawingPanel;->mGalleryColor:Lcom/aviary/android/feather/widget/AviaryGallery;

    .line 128
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/DrawingPanel;->getContentView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/aviary/android/feather/R$id;->image:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw;

    iput-object v0, p0, Lcom/aviary/android/feather/effects/DrawingPanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    .line 129
    iget-object v0, p0, Lcom/aviary/android/feather/effects/DrawingPanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    sget-object v1, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$DisplayType;->FIT_IF_BIGGER:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$DisplayType;

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->setDisplayType(Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$DisplayType;)V

    .line 131
    invoke-direct {p0}, Lcom/aviary/android/feather/effects/DrawingPanel;->makeToast()Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/aviary/android/feather/effects/DrawingPanel;->mToast:Landroid/widget/Toast;

    .line 133
    iget-object v0, p0, Lcom/aviary/android/feather/effects/DrawingPanel;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/aviary/android/feather/effects/DrawingPanel;->mWidth:I

    .line 134
    iget-object v0, p0, Lcom/aviary/android/feather/effects/DrawingPanel;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/aviary/android/feather/effects/DrawingPanel;->mHeight:I

    .line 136
    invoke-direct {p0}, Lcom/aviary/android/feather/effects/DrawingPanel;->resetBitmap()V

    .line 138
    iput v4, p0, Lcom/aviary/android/feather/effects/DrawingPanel;->mSelectedColorPosition:I

    .line 139
    iput v2, p0, Lcom/aviary/android/feather/effects/DrawingPanel;->mSelectedSizePosition:I

    .line 142
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "draw"

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/aviary/android/feather/headless/moa/MoaActionFactory;->actionList([Ljava/lang/String;)Lcom/aviary/android/feather/headless/moa/MoaActionList;

    move-result-object v0

    iput-object v0, p0, Lcom/aviary/android/feather/effects/DrawingPanel;->mActionList:Lcom/aviary/android/feather/headless/moa/MoaActionList;

    .line 143
    iget-object v0, p0, Lcom/aviary/android/feather/effects/DrawingPanel;->mActionList:Lcom/aviary/android/feather/headless/moa/MoaActionList;

    invoke-virtual {v0, v2}, Lcom/aviary/android/feather/headless/moa/MoaActionList;->get(I)Lcom/aviary/android/feather/headless/moa/MoaAction;

    move-result-object v0

    iput-object v0, p0, Lcom/aviary/android/feather/effects/DrawingPanel;->mAction:Lcom/aviary/android/feather/headless/moa/MoaAction;

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aviary/android/feather/effects/DrawingPanel;->mOperations:Ljava/util/Collection;

    .line 145
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aviary/android/feather/effects/DrawingPanel;->mCurrentOperation:Lcom/aviary/android/feather/headless/moa/MoaGraphicsOperationParameter;

    .line 147
    iget-object v0, p0, Lcom/aviary/android/feather/effects/DrawingPanel;->mAction:Lcom/aviary/android/feather/headless/moa/MoaAction;

    const-string/jumbo v1, "previewSize"

    new-instance v2, Lcom/aviary/android/feather/headless/moa/MoaPointParameter;

    iget v3, p0, Lcom/aviary/android/feather/effects/DrawingPanel;->mWidth:I

    int-to-float v3, v3

    iget v4, p0, Lcom/aviary/android/feather/effects/DrawingPanel;->mHeight:I

    int-to-float v4, v4

    invoke-direct {v2, v3, v4}, Lcom/aviary/android/feather/headless/moa/MoaPointParameter;-><init>(FF)V

    invoke-virtual {v0, v1, v2}, Lcom/aviary/android/feather/headless/moa/MoaAction;->setValue(Ljava/lang/String;Lcom/aviary/android/feather/headless/moa/MoaParameter;)V

    .line 148
    iget-object v0, p0, Lcom/aviary/android/feather/effects/DrawingPanel;->mAction:Lcom/aviary/android/feather/headless/moa/MoaAction;

    const-string/jumbo v1, "commands"

    iget-object v2, p0, Lcom/aviary/android/feather/effects/DrawingPanel;->mOperations:Ljava/util/Collection;

    invoke-virtual {v0, v1, v2}, Lcom/aviary/android/feather/headless/moa/MoaAction;->setValue(Ljava/lang/String;Ljava/util/Collection;)V

    .line 150
    invoke-direct {p0}, Lcom/aviary/android/feather/effects/DrawingPanel;->setupFill()V

    .line 151
    invoke-direct {p0}, Lcom/aviary/android/feather/effects/DrawingPanel;->setupSize()V

    .line 154
    iget-object v0, p0, Lcom/aviary/android/feather/effects/DrawingPanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    check-cast v0, Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw;

    invoke-virtual {v0}, Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/aviary/android/feather/effects/DrawingPanel;->initPaint(Landroid/graphics/Paint;)Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/aviary/android/feather/effects/DrawingPanel;->mPaint:Landroid/graphics/Paint;

    .line 155
    iget-object v0, p0, Lcom/aviary/android/feather/effects/DrawingPanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    check-cast v0, Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw;

    iget-object v1, p0, Lcom/aviary/android/feather/effects/DrawingPanel;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw;->setPaint(Landroid/graphics/Paint;)V

    .line 156
    return-void
.end method

.method public onDeactivate()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 258
    iget-object v0, p0, Lcom/aviary/android/feather/effects/DrawingPanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    check-cast v0, Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw;

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw;->setOnDrawStartListener(Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw$OnDrawStartListener;)V

    .line 259
    iget-object v0, p0, Lcom/aviary/android/feather/effects/DrawingPanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    check-cast v0, Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw;

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw;->setOnDrawPathListener(Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw$OnDrawPathListener;)V

    .line 260
    iget-object v0, p0, Lcom/aviary/android/feather/effects/DrawingPanel;->mLensButton:Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 262
    iget-object v0, p0, Lcom/aviary/android/feather/effects/DrawingPanel;->mGalleryColor:Lcom/aviary/android/feather/widget/AviaryGallery;

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/widget/AviaryGallery;->setOnItemsScrollListener(Lcom/aviary/android/feather/widget/AviaryGallery$OnItemsScrollListener;)V

    .line 263
    iget-object v0, p0, Lcom/aviary/android/feather/effects/DrawingPanel;->mGallerySize:Lcom/aviary/android/feather/widget/AviaryGallery;

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/widget/AviaryGallery;->setOnItemsScrollListener(Lcom/aviary/android/feather/widget/AviaryGallery$OnItemsScrollListener;)V

    .line 265
    iget-object v0, p0, Lcom/aviary/android/feather/effects/DrawingPanel;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/aviary/android/feather/effects/DrawingPanel;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 268
    :cond_0
    invoke-super {p0}, Lcom/aviary/android/feather/effects/AbstractContentPanel;->onDeactivate()V

    .line 269
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 365
    invoke-super {p0}, Lcom/aviary/android/feather/effects/AbstractContentPanel;->onDestroy()V

    .line 366
    iget-object v0, p0, Lcom/aviary/android/feather/effects/DrawingPanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    invoke-virtual {v0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->clear()V

    .line 367
    return-void
.end method

.method public onDrawStart()V
    .locals 1

    .prologue
    .line 410
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/aviary/android/feather/effects/DrawingPanel;->setIsChanged(Z)V

    .line 411
    return-void
.end method

.method public onEnd()V
    .locals 2

    .prologue
    .line 439
    iget-object v0, p0, Lcom/aviary/android/feather/effects/DrawingPanel;->mOperations:Ljava/util/Collection;

    iget-object v1, p0, Lcom/aviary/android/feather/effects/DrawingPanel;->mCurrentOperation:Lcom/aviary/android/feather/headless/moa/MoaGraphicsOperationParameter;

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 440
    return-void
.end method

.method protected onGenerateResult()V
    .locals 5

    .prologue
    const/high16 v4, -0x40800000    # -1.0f

    .line 394
    const/4 v0, 0x0

    .line 396
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/aviary/android/feather/effects/DrawingPanel;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v2

    if-nez v2, :cond_0

    .line 397
    iget-object v2, p0, Lcom/aviary/android/feather/effects/DrawingPanel;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/aviary/android/feather/effects/DrawingPanel;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/aviary/android/feather/library/utils/BitmapUtils;->copy(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 402
    :goto_0
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 403
    .local v1, "canvas":Landroid/graphics/Canvas;
    iget-object v2, p0, Lcom/aviary/android/feather/effects/DrawingPanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    check-cast v2, Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw;

    invoke-virtual {v2, v1}, Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw;->commit(Landroid/graphics/Canvas;)V

    .line 404
    iget-object v2, p0, Lcom/aviary/android/feather/effects/DrawingPanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    check-cast v2, Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw;

    iget-object v3, p0, Lcom/aviary/android/feather/effects/DrawingPanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    invoke-virtual {v3}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->getDisplayMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v0, v3, v4, v4}, Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw;->setImageBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;FF)V

    .line 405
    iget-object v2, p0, Lcom/aviary/android/feather/effects/DrawingPanel;->mActionList:Lcom/aviary/android/feather/headless/moa/MoaActionList;

    invoke-virtual {p0, v0, v2}, Lcom/aviary/android/feather/effects/DrawingPanel;->onComplete(Landroid/graphics/Bitmap;Lcom/aviary/android/feather/headless/moa/MoaActionList;)V

    .line 406
    return-void

    .line 399
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    :cond_0
    iget-object v0, p0, Lcom/aviary/android/feather/effects/DrawingPanel;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public onMoveTo(FF)V
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 424
    iget-object v0, p0, Lcom/aviary/android/feather/effects/DrawingPanel;->mCurrentOperation:Lcom/aviary/android/feather/headless/moa/MoaGraphicsOperationParameter;

    new-instance v1, Lcom/aviary/android/feather/headless/moa/MoaGraphicsCommandParameter;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1, p2}, Lcom/aviary/android/feather/headless/moa/MoaGraphicsCommandParameter;-><init>(IFF)V

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/headless/moa/MoaGraphicsOperationParameter;->addCommand(Lcom/aviary/android/feather/headless/moa/MoaGraphicsCommandParameter;)V

    .line 425
    return-void
.end method

.method public onQuadTo(FFFF)V
    .locals 7
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "x1"    # F
    .param p4, "y1"    # F

    .prologue
    .line 434
    iget-object v6, p0, Lcom/aviary/android/feather/effects/DrawingPanel;->mCurrentOperation:Lcom/aviary/android/feather/headless/moa/MoaGraphicsOperationParameter;

    new-instance v0, Lcom/aviary/android/feather/headless/moa/MoaGraphicsCommandParameter;

    const/4 v1, 0x2

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/aviary/android/feather/headless/moa/MoaGraphicsCommandParameter;-><init>(IFFFF)V

    invoke-virtual {v6, v0}, Lcom/aviary/android/feather/headless/moa/MoaGraphicsOperationParameter;->addCommand(Lcom/aviary/android/feather/headless/moa/MoaGraphicsCommandParameter;)V

    .line 435
    return-void
.end method

.method public onStart()V
    .locals 7

    .prologue
    .line 416
    iget-object v1, p0, Lcom/aviary/android/feather/effects/DrawingPanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    check-cast v1, Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw;

    invoke-virtual {v1}, Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw;->getDrawingScale()F

    move-result v0

    .line 417
    .local v0, "scale":F
    const-string/jumbo v1, "draw"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "scale: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    new-instance v2, Lcom/aviary/android/feather/headless/moa/MoaGraphicsOperationParameter;

    iget v3, p0, Lcom/aviary/android/feather/effects/DrawingPanel;->mBlur:I

    iget v1, p0, Lcom/aviary/android/feather/effects/DrawingPanel;->mSize:I

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    mul-float v4, v1, v0

    iget v5, p0, Lcom/aviary/android/feather/effects/DrawingPanel;->mColor:I

    .line 419
    invoke-direct {p0}, Lcom/aviary/android/feather/effects/DrawingPanel;->getSelectedTool()Lcom/aviary/android/feather/effects/DrawingPanel$DrawinTool;

    move-result-object v1

    sget-object v6, Lcom/aviary/android/feather/effects/DrawingPanel$DrawinTool;->Erase:Lcom/aviary/android/feather/effects/DrawingPanel$DrawinTool;

    if-ne v1, v6, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-direct {v2, v3, v4, v5, v1}, Lcom/aviary/android/feather/headless/moa/MoaGraphicsOperationParameter;-><init>(IFII)V

    iput-object v2, p0, Lcom/aviary/android/feather/effects/DrawingPanel;->mCurrentOperation:Lcom/aviary/android/feather/headless/moa/MoaGraphicsOperationParameter;

    .line 420
    return-void

    .line 419
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic setEnabled(Z)V
    .locals 0

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/aviary/android/feather/effects/AbstractContentPanel;->setEnabled(Z)V

    return-void
.end method

.method public setPanelEnabled(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 348
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/DrawingPanel;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 356
    :goto_0
    return-void

    .line 350
    :cond_0
    if-eqz p1, :cond_1

    .line 351
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/DrawingPanel;->getContext()Lcom/aviary/android/feather/library/services/IAviaryController;

    move-result-object v0

    invoke-interface {v0}, Lcom/aviary/android/feather/library/services/IAviaryController;->restoreToolbarTitle()V

    .line 355
    :goto_1
    iget-object v0, p0, Lcom/aviary/android/feather/effects/DrawingPanel;->mOptionView:Landroid/view/ViewGroup;

    sget v1, Lcom/aviary/android/feather/R$id;->aviary_disable_status:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz p1, :cond_2

    const/4 v0, 0x4

    :goto_2
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 353
    :cond_1
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/DrawingPanel;->getContext()Lcom/aviary/android/feather/library/services/IAviaryController;

    move-result-object v0

    sget v1, Lcom/aviary/android/feather/R$string;->feather_zoom_mode:I

    invoke-interface {v0, v1}, Lcom/aviary/android/feather/library/services/IAviaryController;->setToolbarTitle(I)V

    goto :goto_1

    .line 355
    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method
