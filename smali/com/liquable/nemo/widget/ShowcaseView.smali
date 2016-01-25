.class public Lcom/liquable/nemo/widget/ShowcaseView;
.super Landroid/widget/RelativeLayout;
.source "ShowcaseView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/widget/ShowcaseView$OnShowcaseEventListener;,
        Lcom/liquable/nemo/widget/ShowcaseView$ConfigOptions;
    }
.end annotation


# static fields
.field public static final INNER_CIRCLE_RADIUS:I = 0x5e

.field public static final INSERT_TO_DECOR:I = 0x0

.field public static final INSERT_TO_VIEW:I = 0x1

.field public static final ITEM_ACTION_HOME:I = 0x0

.field public static final ITEM_ACTION_ITEM:I = 0x3

.field public static final ITEM_ACTION_OVERFLOW:I = 0x6

.field public static final ITEM_SPINNER:I = 0x2

.field public static final ITEM_TITLE:I = 0x1

.field private static final PREFS_SHOWCASE_INTERNAL:Ljava/lang/String; = "showcase_internal"

.field public static final TYPE_NO_LIMIT:I = 0x0

.field public static final TYPE_ONE_SHOT:I = 0x1


# instance fields
.field private alignParentLeftRight:I

.field private final backColor:I

.field private final buttonText:Ljava/lang/String;

.field private detailTextColor:I

.field private hasCustomClickListener:Z

.field private isRedundant:Z

.field private legacyShowcaseX:F

.field private legacyShowcaseY:F

.field private mAlteredText:Z

.field private mBestTextPosition:[F

.field private mDynamicDetailLayout:Landroid/text/DynamicLayout;

.field private final mEndButton:Landroid/widget/Button;

.field private mEraser:Landroid/graphics/Paint;

.field private mEventListener:Lcom/liquable/nemo/widget/ShowcaseView$OnShowcaseEventListener;

.field private mOptions:Lcom/liquable/nemo/widget/ShowcaseView$ConfigOptions;

.field private mPaintDetail:Landroid/text/TextPaint;

.field private mPaintTitle:Landroid/graphics/Paint;

.field private mSubText:Ljava/lang/String;

.field private mTitleText:Ljava/lang/String;

.field private metricScale:F

.field private scaleMultiplier:F

.field private showcase:Landroid/graphics/drawable/Drawable;

.field private showcaseRadius:F

.field private showcaseX:F

.field private showcaseY:F

.field private titleTextColor:I

.field private voidedArea:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v5, 0xa

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/high16 v1, -0x40800000    # -1.0f

    .line 393
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 352
    iput v1, p0, Lcom/liquable/nemo/widget/ShowcaseView;->showcaseX:F

    .line 353
    iput v1, p0, Lcom/liquable/nemo/widget/ShowcaseView;->showcaseY:F

    .line 354
    iput v1, p0, Lcom/liquable/nemo/widget/ShowcaseView;->showcaseRadius:F

    .line 355
    iput v4, p0, Lcom/liquable/nemo/widget/ShowcaseView;->metricScale:F

    .line 356
    iput v1, p0, Lcom/liquable/nemo/widget/ShowcaseView;->legacyShowcaseX:F

    .line 357
    iput v1, p0, Lcom/liquable/nemo/widget/ShowcaseView;->legacyShowcaseY:F

    .line 358
    iput-boolean v3, p0, Lcom/liquable/nemo/widget/ShowcaseView;->isRedundant:Z

    .line 359
    iput-boolean v3, p0, Lcom/liquable/nemo/widget/ShowcaseView;->hasCustomClickListener:Z

    .line 377
    iput v2, p0, Lcom/liquable/nemo/widget/ShowcaseView;->detailTextColor:I

    .line 379
    iput v2, p0, Lcom/liquable/nemo/widget/ShowcaseView;->titleTextColor:I

    .line 385
    iput-boolean v3, p0, Lcom/liquable/nemo/widget/ShowcaseView;->mAlteredText:Z

    .line 387
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/liquable/nemo/widget/ShowcaseView;->buttonText:Ljava/lang/String;

    .line 389
    iput v4, p0, Lcom/liquable/nemo/widget/ShowcaseView;->scaleMultiplier:F

    .line 390
    const/16 v1, 0xb

    iput v1, p0, Lcom/liquable/nemo/widget/ShowcaseView;->alignParentLeftRight:I

    .line 396
    const/high16 v1, -0x34000000    # -3.3554432E7f

    iput v1, p0, Lcom/liquable/nemo/widget/ShowcaseView;->backColor:I

    .line 397
    iput v2, p0, Lcom/liquable/nemo/widget/ShowcaseView;->detailTextColor:I

    .line 398
    const v1, -0x3b07c7

    iput v1, p0, Lcom/liquable/nemo/widget/ShowcaseView;->titleTextColor:I

    .line 400
    invoke-virtual {p0}, Lcom/liquable/nemo/widget/ShowcaseView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/liquable/nemo/widget/ShowcaseView;->metricScale:F

    .line 401
    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/liquable/nemo/widget/ShowcaseView;->mEndButton:Landroid/widget/Button;

    .line 402
    iget-object v1, p0, Lcom/liquable/nemo/widget/ShowcaseView;->mEndButton:Landroid/widget/Button;

    const/16 v2, 0x23

    invoke-static {p1, v2}, Lcom/liquable/nemo/util/NemoUIs;->toPixel(Landroid/content/Context;I)I

    move-result v2

    .line 403
    invoke-static {p1, v5}, Lcom/liquable/nemo/util/NemoUIs;->toPixel(Landroid/content/Context;I)I

    move-result v3

    const/16 v4, 0x23

    .line 404
    invoke-static {p1, v4}, Lcom/liquable/nemo/util/NemoUIs;->toPixel(Landroid/content/Context;I)I

    move-result v4

    .line 405
    invoke-static {p1, v5}, Lcom/liquable/nemo/util/NemoUIs;->toPixel(Landroid/content/Context;I)I

    move-result v5

    .line 402
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/Button;->setPadding(IIII)V

    .line 407
    new-instance v0, Lcom/liquable/nemo/widget/ShowcaseView$ConfigOptions;

    invoke-direct {v0}, Lcom/liquable/nemo/widget/ShowcaseView$ConfigOptions;-><init>()V

    .line 408
    .local v0, "options":Lcom/liquable/nemo/widget/ShowcaseView$ConfigOptions;
    invoke-virtual {p0}, Lcom/liquable/nemo/widget/ShowcaseView;->getId()I

    move-result v1

    iput v1, v0, Lcom/liquable/nemo/widget/ShowcaseView$ConfigOptions;->showcaseId:I

    .line 409
    invoke-direct {p0, v0}, Lcom/liquable/nemo/widget/ShowcaseView;->setConfigOptions(Lcom/liquable/nemo/widget/ShowcaseView$ConfigOptions;)V

    .line 410
    return-void
.end method

.method static synthetic access$000(Lcom/liquable/nemo/widget/ShowcaseView;Landroid/view/ViewParent;Ljava/lang/Class;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/widget/ShowcaseView;
    .param p1, "x1"    # Landroid/view/ViewParent;
    .param p2, "x2"    # Ljava/lang/Class;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/liquable/nemo/widget/ShowcaseView;->showcaseSpinner(Landroid/view/ViewParent;Ljava/lang/Class;)V

    return-void
.end method

.method static synthetic access$100(Lcom/liquable/nemo/widget/ShowcaseView;Landroid/view/ViewParent;Ljava/lang/Class;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/widget/ShowcaseView;
    .param p1, "x1"    # Landroid/view/ViewParent;
    .param p2, "x2"    # Ljava/lang/Class;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/liquable/nemo/widget/ShowcaseView;->showcaseTitle(Landroid/view/ViewParent;Ljava/lang/Class;)V

    return-void
.end method

.method static synthetic access$200(Lcom/liquable/nemo/widget/ShowcaseView;Landroid/view/ViewParent;Ljava/lang/Class;II)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/widget/ShowcaseView;
    .param p1, "x1"    # Landroid/view/ViewParent;
    .param p2, "x2"    # Ljava/lang/Class;
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/liquable/nemo/widget/ShowcaseView;->showcaseActionItem(Landroid/view/ViewParent;Ljava/lang/Class;II)V

    return-void
.end method

.method static synthetic access$300(Lcom/liquable/nemo/widget/ShowcaseView;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/widget/ShowcaseView;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/liquable/nemo/widget/ShowcaseView;->init()V

    return-void
.end method

.method static synthetic access$400(Lcom/liquable/nemo/widget/ShowcaseView;)Lcom/liquable/nemo/widget/ShowcaseView$ConfigOptions;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/widget/ShowcaseView;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/liquable/nemo/widget/ShowcaseView;->mOptions:Lcom/liquable/nemo/widget/ShowcaseView$ConfigOptions;

    return-object v0
.end method

.method static synthetic access$502(Lcom/liquable/nemo/widget/ShowcaseView;F)F
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/widget/ShowcaseView;
    .param p1, "x1"    # F

    .prologue
    .line 36
    iput p1, p0, Lcom/liquable/nemo/widget/ShowcaseView;->showcaseX:F

    return p1
.end method

.method static synthetic access$602(Lcom/liquable/nemo/widget/ShowcaseView;F)F
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/widget/ShowcaseView;
    .param p1, "x1"    # F

    .prologue
    .line 36
    iput p1, p0, Lcom/liquable/nemo/widget/ShowcaseView;->showcaseY:F

    return p1
.end method

.method private getBestTextPosition(II)[F
    .locals 7
    .param p1, "canvasW"    # I
    .param p2, "canvasH"    # I

    .prologue
    const/high16 v5, 0x41c00000    # 24.0f

    .line 482
    iget-object v2, p0, Lcom/liquable/nemo/widget/ShowcaseView;->voidedArea:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v1, v2

    .line 483
    .local v1, "spaceTop":F
    iget-object v2, p0, Lcom/liquable/nemo/widget/ShowcaseView;->voidedArea:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v2, p2, v2

    int-to-float v2, v2

    const/high16 v3, 0x42800000    # 64.0f

    iget v4, p0, Lcom/liquable/nemo/widget/ShowcaseView;->metricScale:F

    mul-float/2addr v3, v4

    sub-float v0, v2, v3

    .line 490
    .local v0, "spaceBottom":F
    const/4 v2, 0x3

    new-array v3, v2, [F

    const/4 v2, 0x0

    iget v4, p0, Lcom/liquable/nemo/widget/ShowcaseView;->metricScale:F

    mul-float/2addr v4, v5

    aput v4, v3, v2

    const/4 v4, 0x1

    cmpl-float v2, v1, v0

    if-lez v2, :cond_0

    const/high16 v2, 0x43000000    # 128.0f

    iget v5, p0, Lcom/liquable/nemo/widget/ShowcaseView;->metricScale:F

    mul-float/2addr v2, v5

    :goto_0
    aput v2, v3, v4

    const/4 v2, 0x2

    int-to-float v4, p1

    const/high16 v5, 0x42400000    # 48.0f

    iget v6, p0, Lcom/liquable/nemo/widget/ShowcaseView;->metricScale:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    aput v4, v3, v2

    return-object v3

    :cond_0
    iget v2, p0, Lcom/liquable/nemo/widget/ShowcaseView;->metricScale:F

    mul-float/2addr v2, v5

    iget-object v5, p0, Lcom/liquable/nemo/widget/ShowcaseView;->voidedArea:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    add-float/2addr v2, v5

    goto :goto_0
.end method

.method private getConfigOptions()Lcom/liquable/nemo/widget/ShowcaseView$ConfigOptions;
    .locals 1

    .prologue
    .line 498
    iget-object v0, p0, Lcom/liquable/nemo/widget/ShowcaseView;->mOptions:Lcom/liquable/nemo/widget/ShowcaseView$ConfigOptions;

    if-nez v0, :cond_0

    .line 499
    new-instance v0, Lcom/liquable/nemo/widget/ShowcaseView$ConfigOptions;

    invoke-direct {v0}, Lcom/liquable/nemo/widget/ShowcaseView$ConfigOptions;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/widget/ShowcaseView;->mOptions:Lcom/liquable/nemo/widget/ShowcaseView$ConfigOptions;

    .line 501
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/widget/ShowcaseView;->mOptions:Lcom/liquable/nemo/widget/ShowcaseView$ConfigOptions;

    goto :goto_0
.end method

.method private init()V
    .locals 12

    .prologue
    const v11, -0xbbbbbc

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/high16 v8, 0x40000000    # 2.0f

    const/4 v7, 0x1

    .line 514
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-lt v4, v5, :cond_1

    .line 515
    const/4 v4, 0x0

    invoke-virtual {p0, v7, v4}, Lcom/liquable/nemo/widget/ShowcaseView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 520
    :goto_0
    invoke-virtual {p0}, Lcom/liquable/nemo/widget/ShowcaseView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "showcase_internal"

    invoke-virtual {v4, v5, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "hasShot"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 521
    invoke-direct {p0}, Lcom/liquable/nemo/widget/ShowcaseView;->getConfigOptions()Lcom/liquable/nemo/widget/ShowcaseView$ConfigOptions;

    move-result-object v6

    iget v6, v6, Lcom/liquable/nemo/widget/ShowcaseView$ConfigOptions;->showcaseId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 522
    .local v0, "hasShot":Z
    if-eqz v0, :cond_2

    iget-object v4, p0, Lcom/liquable/nemo/widget/ShowcaseView;->mOptions:Lcom/liquable/nemo/widget/ShowcaseView$ConfigOptions;

    iget v4, v4, Lcom/liquable/nemo/widget/ShowcaseView$ConfigOptions;->shotType:I

    if-ne v4, v7, :cond_2

    .line 524
    const/16 v4, 0x8

    invoke-virtual {p0, v4}, Lcom/liquable/nemo/widget/ShowcaseView;->setVisibility(I)V

    .line 525
    iput-boolean v7, p0, Lcom/liquable/nemo/widget/ShowcaseView;->isRedundant:Z

    .line 568
    :cond_0
    :goto_1
    return-void

    .line 517
    .end local v0    # "hasShot":Z
    :cond_1
    invoke-virtual {p0, v7}, Lcom/liquable/nemo/widget/ShowcaseView;->setDrawingCacheEnabled(Z)V

    goto :goto_0

    .line 528
    .restart local v0    # "hasShot":Z
    :cond_2
    invoke-virtual {p0}, Lcom/liquable/nemo/widget/ShowcaseView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020257

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/liquable/nemo/widget/ShowcaseView;->showcase:Landroid/graphics/drawable/Drawable;

    .line 530
    iget v4, p0, Lcom/liquable/nemo/widget/ShowcaseView;->metricScale:F

    const/high16 v5, 0x42bc0000    # 94.0f

    mul-float/2addr v4, v5

    iput v4, p0, Lcom/liquable/nemo/widget/ShowcaseView;->showcaseRadius:F

    .line 531
    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 532
    .local v2, "mBlender":Landroid/graphics/PorterDuffXfermode;
    invoke-virtual {p0, p0}, Lcom/liquable/nemo/widget/ShowcaseView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 534
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lcom/liquable/nemo/widget/ShowcaseView;->mPaintTitle:Landroid/graphics/Paint;

    .line 535
    iget-object v4, p0, Lcom/liquable/nemo/widget/ShowcaseView;->mPaintTitle:Landroid/graphics/Paint;

    iget v5, p0, Lcom/liquable/nemo/widget/ShowcaseView;->titleTextColor:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 536
    iget-object v4, p0, Lcom/liquable/nemo/widget/ShowcaseView;->mPaintTitle:Landroid/graphics/Paint;

    invoke-virtual {v4, v8, v10, v8, v11}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 537
    iget-object v4, p0, Lcom/liquable/nemo/widget/ShowcaseView;->mPaintTitle:Landroid/graphics/Paint;

    const/high16 v5, 0x41c00000    # 24.0f

    iget v6, p0, Lcom/liquable/nemo/widget/ShowcaseView;->metricScale:F

    mul-float/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 538
    iget-object v4, p0, Lcom/liquable/nemo/widget/ShowcaseView;->mPaintTitle:Landroid/graphics/Paint;

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 540
    new-instance v4, Landroid/text/TextPaint;

    invoke-direct {v4}, Landroid/text/TextPaint;-><init>()V

    iput-object v4, p0, Lcom/liquable/nemo/widget/ShowcaseView;->mPaintDetail:Landroid/text/TextPaint;

    .line 541
    iget-object v4, p0, Lcom/liquable/nemo/widget/ShowcaseView;->mPaintDetail:Landroid/text/TextPaint;

    iget v5, p0, Lcom/liquable/nemo/widget/ShowcaseView;->detailTextColor:I

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setColor(I)V

    .line 542
    iget-object v4, p0, Lcom/liquable/nemo/widget/ShowcaseView;->mPaintDetail:Landroid/text/TextPaint;

    invoke-virtual {v4, v8, v10, v8, v11}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 543
    iget-object v4, p0, Lcom/liquable/nemo/widget/ShowcaseView;->mPaintDetail:Landroid/text/TextPaint;

    const/high16 v5, 0x41800000    # 16.0f

    iget v6, p0, Lcom/liquable/nemo/widget/ShowcaseView;->metricScale:F

    mul-float/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 544
    iget-object v4, p0, Lcom/liquable/nemo/widget/ShowcaseView;->mPaintDetail:Landroid/text/TextPaint;

    invoke-virtual {v4, v7}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 546
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lcom/liquable/nemo/widget/ShowcaseView;->mEraser:Landroid/graphics/Paint;

    .line 547
    iget-object v4, p0, Lcom/liquable/nemo/widget/ShowcaseView;->mEraser:Landroid/graphics/Paint;

    const v5, 0xffffff

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 548
    iget-object v4, p0, Lcom/liquable/nemo/widget/ShowcaseView;->mEraser:Landroid/graphics/Paint;

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 549
    iget-object v4, p0, Lcom/liquable/nemo/widget/ShowcaseView;->mEraser:Landroid/graphics/Paint;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 550
    iget-object v4, p0, Lcom/liquable/nemo/widget/ShowcaseView;->mEraser:Landroid/graphics/Paint;

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 552
    iget-object v4, p0, Lcom/liquable/nemo/widget/ShowcaseView;->mOptions:Lcom/liquable/nemo/widget/ShowcaseView$ConfigOptions;

    iget-boolean v4, v4, Lcom/liquable/nemo/widget/ShowcaseView$ConfigOptions;->noButton:Z

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/liquable/nemo/widget/ShowcaseView;->mEndButton:Landroid/widget/Button;

    invoke-virtual {v4}, Landroid/widget/Button;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-nez v4, :cond_0

    .line 553
    invoke-virtual {p0}, Lcom/liquable/nemo/widget/ShowcaseView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 554
    .local v1, "lps":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v4, 0xc

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 555
    iget v4, p0, Lcom/liquable/nemo/widget/ShowcaseView;->alignParentLeftRight:I

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 556
    iget v4, p0, Lcom/liquable/nemo/widget/ShowcaseView;->metricScale:F

    const/high16 v5, 0x41400000    # 12.0f

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v3

    .line 557
    .local v3, "margin":I
    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 558
    const/4 v4, -0x2

    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 559
    const/4 v4, -0x2

    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 560
    iget-object v4, p0, Lcom/liquable/nemo/widget/ShowcaseView;->mEndButton:Landroid/widget/Button;

    invoke-virtual {v4, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 561
    iget-object v5, p0, Lcom/liquable/nemo/widget/ShowcaseView;->mEndButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/liquable/nemo/widget/ShowcaseView;->buttonText:Ljava/lang/String;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/liquable/nemo/widget/ShowcaseView;->buttonText:Ljava/lang/String;

    :goto_2
    invoke-virtual {v5, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 562
    iget-boolean v4, p0, Lcom/liquable/nemo/widget/ShowcaseView;->hasCustomClickListener:Z

    if-nez v4, :cond_3

    .line 563
    iget-object v4, p0, Lcom/liquable/nemo/widget/ShowcaseView;->mEndButton:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 565
    :cond_3
    iget-object v4, p0, Lcom/liquable/nemo/widget/ShowcaseView;->mEndButton:Landroid/widget/Button;

    invoke-virtual {p0, v4}, Lcom/liquable/nemo/widget/ShowcaseView;->addView(Landroid/view/View;)V

    goto/16 :goto_1

    .line 561
    :cond_4
    invoke-virtual {p0}, Lcom/liquable/nemo/widget/ShowcaseView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0d03b3

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_2
.end method

.method public static insertShowcaseView(FFLandroid/app/Activity;)Lcom/liquable/nemo/widget/ShowcaseView;
    .locals 6
    .param p0, "x"    # F
    .param p1, "y"    # F
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v3, 0x0

    .line 59
    move v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/liquable/nemo/widget/ShowcaseView;->insertShowcaseView(FFLandroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/liquable/nemo/widget/ShowcaseView$ConfigOptions;)Lcom/liquable/nemo/widget/ShowcaseView;

    move-result-object v0

    return-object v0
.end method

.method public static insertShowcaseView(FFLandroid/app/Activity;IILcom/liquable/nemo/widget/ShowcaseView$ConfigOptions;)Lcom/liquable/nemo/widget/ShowcaseView;
    .locals 2
    .param p0, "x"    # F
    .param p1, "y"    # F
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "title"    # I
    .param p4, "detailText"    # I
    .param p5, "options"    # Lcom/liquable/nemo/widget/ShowcaseView$ConfigOptions;

    .prologue
    .line 68
    new-instance v0, Lcom/liquable/nemo/widget/ShowcaseView;

    invoke-direct {v0, p2}, Lcom/liquable/nemo/widget/ShowcaseView;-><init>(Landroid/content/Context;)V

    .line 69
    .local v0, "sv":Lcom/liquable/nemo/widget/ShowcaseView;
    if-eqz p5, :cond_0

    .line 70
    invoke-direct {v0, p5}, Lcom/liquable/nemo/widget/ShowcaseView;->setConfigOptions(Lcom/liquable/nemo/widget/ShowcaseView$ConfigOptions;)V

    .line 72
    :cond_0
    invoke-direct {v0}, Lcom/liquable/nemo/widget/ShowcaseView;->getConfigOptions()Lcom/liquable/nemo/widget/ShowcaseView$ConfigOptions;

    move-result-object v1

    iget v1, v1, Lcom/liquable/nemo/widget/ShowcaseView$ConfigOptions;->insert:I

    if-nez v1, :cond_1

    .line 73
    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 77
    :goto_0
    invoke-virtual {v0, p0, p1}, Lcom/liquable/nemo/widget/ShowcaseView;->setShowcasePosition(FF)V

    .line 78
    invoke-virtual {v0, p3, p4}, Lcom/liquable/nemo/widget/ShowcaseView;->setText(II)V

    .line 79
    return-object v0

    .line 75
    :cond_1
    const v1, 0x1020002

    invoke-virtual {p2, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public static insertShowcaseView(FFLandroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/liquable/nemo/widget/ShowcaseView$ConfigOptions;)Lcom/liquable/nemo/widget/ShowcaseView;
    .locals 2
    .param p0, "x"    # F
    .param p1, "y"    # F
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "detailText"    # Ljava/lang/String;
    .param p5, "options"    # Lcom/liquable/nemo/widget/ShowcaseView$ConfigOptions;

    .prologue
    .line 88
    new-instance v0, Lcom/liquable/nemo/widget/ShowcaseView;

    invoke-direct {v0, p2}, Lcom/liquable/nemo/widget/ShowcaseView;-><init>(Landroid/content/Context;)V

    .line 89
    .local v0, "sv":Lcom/liquable/nemo/widget/ShowcaseView;
    if-eqz p5, :cond_0

    .line 90
    invoke-direct {v0, p5}, Lcom/liquable/nemo/widget/ShowcaseView;->setConfigOptions(Lcom/liquable/nemo/widget/ShowcaseView$ConfigOptions;)V

    .line 92
    :cond_0
    invoke-direct {v0}, Lcom/liquable/nemo/widget/ShowcaseView;->getConfigOptions()Lcom/liquable/nemo/widget/ShowcaseView$ConfigOptions;

    move-result-object v1

    iget v1, v1, Lcom/liquable/nemo/widget/ShowcaseView$ConfigOptions;->insert:I

    if-nez v1, :cond_1

    .line 93
    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 97
    :goto_0
    invoke-virtual {v0, p0, p1}, Lcom/liquable/nemo/widget/ShowcaseView;->setShowcasePosition(FF)V

    .line 98
    invoke-virtual {v0, p3, p4}, Lcom/liquable/nemo/widget/ShowcaseView;->setText(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    return-object v0

    .line 95
    :cond_1
    const v1, 0x1020002

    invoke-virtual {p2, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public static insertShowcaseView(IILandroid/app/Activity;F)Lcom/liquable/nemo/widget/ShowcaseView;
    .locals 1
    .param p0, "showcaseLayoutViewId"    # I
    .param p1, "showcaseViewId"    # I
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "scaleMultiplier"    # F

    .prologue
    .line 130
    new-instance v0, Lcom/liquable/nemo/widget/ShowcaseView$ConfigOptions;

    invoke-direct {v0}, Lcom/liquable/nemo/widget/ShowcaseView$ConfigOptions;-><init>()V

    invoke-static {p0, p1, p2, p3, v0}, Lcom/liquable/nemo/widget/ShowcaseView;->insertShowcaseView(IILandroid/app/Activity;FLcom/liquable/nemo/widget/ShowcaseView$ConfigOptions;)Lcom/liquable/nemo/widget/ShowcaseView;

    move-result-object v0

    return-object v0
.end method

.method public static insertShowcaseView(IILandroid/app/Activity;FLcom/liquable/nemo/widget/ShowcaseView$ConfigOptions;)Lcom/liquable/nemo/widget/ShowcaseView;
    .locals 7
    .param p0, "showcaseLayoutViewId"    # I
    .param p1, "showcaseViewId"    # I
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "scaleMultiplier"    # F
    .param p4, "configOptions"    # Lcom/liquable/nemo/widget/ShowcaseView$ConfigOptions;

    .prologue
    const/4 v3, 0x0

    .line 142
    invoke-virtual {p2, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 143
    .local v1, "v":Landroid/view/View;
    if-eqz v1, :cond_0

    move v0, p0

    move-object v2, p2

    move v4, v3

    move-object v5, p4

    .line 144
    invoke-static/range {v0 .. v5}, Lcom/liquable/nemo/widget/ShowcaseView;->insertShowcaseView(ILandroid/view/View;Landroid/app/Activity;IILcom/liquable/nemo/widget/ShowcaseView$ConfigOptions;)Lcom/liquable/nemo/widget/ShowcaseView;

    move-result-object v6

    .line 150
    .local v6, "showcaseView":Lcom/liquable/nemo/widget/ShowcaseView;
    invoke-virtual {v6, p3}, Lcom/liquable/nemo/widget/ShowcaseView;->setShowcaseIndicatorScale(F)V

    .line 153
    .end local v6    # "showcaseView":Lcom/liquable/nemo/widget/ShowcaseView;
    :goto_0
    return-object v6

    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public static insertShowcaseView(ILandroid/app/Activity;IILcom/liquable/nemo/widget/ShowcaseView$ConfigOptions;)Lcom/liquable/nemo/widget/ShowcaseView;
    .locals 2
    .param p0, "showcaseViewId"    # I
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "title"    # I
    .param p3, "detailText"    # I
    .param p4, "options"    # Lcom/liquable/nemo/widget/ShowcaseView$ConfigOptions;

    .prologue
    .line 107
    invoke-virtual {p1, p0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 108
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 109
    invoke-static {v0, p1, p2, p3, p4}, Lcom/liquable/nemo/widget/ShowcaseView;->insertShowcaseView(Landroid/view/View;Landroid/app/Activity;IILcom/liquable/nemo/widget/ShowcaseView$ConfigOptions;)Lcom/liquable/nemo/widget/ShowcaseView;

    move-result-object v1

    .line 111
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static insertShowcaseView(ILandroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/liquable/nemo/widget/ShowcaseView$ConfigOptions;)Lcom/liquable/nemo/widget/ShowcaseView;
    .locals 2
    .param p0, "showcaseViewId"    # I
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "detailText"    # Ljava/lang/String;
    .param p4, "options"    # Lcom/liquable/nemo/widget/ShowcaseView$ConfigOptions;

    .prologue
    .line 119
    invoke-virtual {p1, p0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 120
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 121
    invoke-static {v0, p1, p2, p3, p4}, Lcom/liquable/nemo/widget/ShowcaseView;->insertShowcaseView(Landroid/view/View;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/liquable/nemo/widget/ShowcaseView$ConfigOptions;)Lcom/liquable/nemo/widget/ShowcaseView;

    move-result-object v1

    .line 123
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static insertShowcaseView(ILandroid/view/View;Landroid/app/Activity;IILcom/liquable/nemo/widget/ShowcaseView$ConfigOptions;)Lcom/liquable/nemo/widget/ShowcaseView;
    .locals 6
    .param p0, "showcaseLayoutViewId"    # I
    .param p1, "viewToShowcase"    # Landroid/view/View;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "title"    # I
    .param p4, "detailText"    # I
    .param p5, "options"    # Lcom/liquable/nemo/widget/ShowcaseView$ConfigOptions;

    .prologue
    const/4 v3, -0x1

    .line 162
    new-instance v0, Lcom/liquable/nemo/widget/ShowcaseView;

    invoke-direct {v0, p2}, Lcom/liquable/nemo/widget/ShowcaseView;-><init>(Landroid/content/Context;)V

    .line 163
    .local v0, "showcaseView":Lcom/liquable/nemo/widget/ShowcaseView;
    invoke-virtual {p2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Lcom/liquable/nemo/widget/ShowcaseView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    .line 166
    invoke-static/range {v0 .. v5}, Lcom/liquable/nemo/widget/ShowcaseView;->insertShowcaseView(Lcom/liquable/nemo/widget/ShowcaseView;Landroid/view/View;Landroid/app/Activity;IILcom/liquable/nemo/widget/ShowcaseView$ConfigOptions;)Lcom/liquable/nemo/widget/ShowcaseView;

    move-result-object v1

    return-object v1
.end method

.method public static insertShowcaseView(Landroid/view/View;Landroid/app/Activity;)Lcom/liquable/nemo/widget/ShowcaseView;
    .locals 1
    .param p0, "showcase"    # Landroid/view/View;
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v0, 0x0

    .line 204
    invoke-static {p0, p1, v0, v0, v0}, Lcom/liquable/nemo/widget/ShowcaseView;->insertShowcaseView(Landroid/view/View;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/liquable/nemo/widget/ShowcaseView$ConfigOptions;)Lcom/liquable/nemo/widget/ShowcaseView;

    move-result-object v0

    return-object v0
.end method

.method public static insertShowcaseView(Landroid/view/View;Landroid/app/Activity;IILcom/liquable/nemo/widget/ShowcaseView$ConfigOptions;)Lcom/liquable/nemo/widget/ShowcaseView;
    .locals 6
    .param p0, "viewToShowcase"    # Landroid/view/View;
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "title"    # I
    .param p3, "detailText"    # I
    .param p4, "options"    # Lcom/liquable/nemo/widget/ShowcaseView$ConfigOptions;

    .prologue
    .line 212
    new-instance v0, Lcom/liquable/nemo/widget/ShowcaseView;

    invoke-direct {v0, p1}, Lcom/liquable/nemo/widget/ShowcaseView;-><init>(Landroid/content/Context;)V

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/liquable/nemo/widget/ShowcaseView;->insertShowcaseView(Lcom/liquable/nemo/widget/ShowcaseView;Landroid/view/View;Landroid/app/Activity;IILcom/liquable/nemo/widget/ShowcaseView$ConfigOptions;)Lcom/liquable/nemo/widget/ShowcaseView;

    move-result-object v0

    return-object v0
.end method

.method public static insertShowcaseView(Landroid/view/View;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/liquable/nemo/widget/ShowcaseView$ConfigOptions;)Lcom/liquable/nemo/widget/ShowcaseView;
    .locals 2
    .param p0, "viewToShowcase"    # Landroid/view/View;
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "detailText"    # Ljava/lang/String;
    .param p4, "options"    # Lcom/liquable/nemo/widget/ShowcaseView$ConfigOptions;

    .prologue
    .line 240
    new-instance v0, Lcom/liquable/nemo/widget/ShowcaseView;

    invoke-direct {v0, p1}, Lcom/liquable/nemo/widget/ShowcaseView;-><init>(Landroid/content/Context;)V

    .line 241
    .local v0, "sv":Lcom/liquable/nemo/widget/ShowcaseView;
    if-eqz p4, :cond_0

    .line 242
    invoke-direct {v0, p4}, Lcom/liquable/nemo/widget/ShowcaseView;->setConfigOptions(Lcom/liquable/nemo/widget/ShowcaseView$ConfigOptions;)V

    .line 244
    :cond_0
    invoke-direct {v0}, Lcom/liquable/nemo/widget/ShowcaseView;->getConfigOptions()Lcom/liquable/nemo/widget/ShowcaseView$ConfigOptions;

    move-result-object v1

    iget v1, v1, Lcom/liquable/nemo/widget/ShowcaseView$ConfigOptions;->insert:I

    if-nez v1, :cond_1

    .line 245
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 249
    :goto_0
    invoke-virtual {v0, p0}, Lcom/liquable/nemo/widget/ShowcaseView;->setShowcaseView(Landroid/view/View;)V

    .line 250
    invoke-virtual {v0, p2, p3}, Lcom/liquable/nemo/widget/ShowcaseView;->setText(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    return-object v0

    .line 247
    :cond_1
    const v1, 0x1020002

    invoke-virtual {p1, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public static insertShowcaseView(Lcom/liquable/nemo/widget/ShowcaseView;Landroid/view/View;Landroid/app/Activity;IILcom/liquable/nemo/widget/ShowcaseView$ConfigOptions;)Lcom/liquable/nemo/widget/ShowcaseView;
    .locals 1
    .param p0, "sv"    # Lcom/liquable/nemo/widget/ShowcaseView;
    .param p1, "viewToShowcase"    # Landroid/view/View;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "title"    # I
    .param p4, "detailText"    # I
    .param p5, "options"    # Lcom/liquable/nemo/widget/ShowcaseView$ConfigOptions;

    .prologue
    .line 190
    if-eqz p5, :cond_0

    .line 191
    invoke-direct {p0, p5}, Lcom/liquable/nemo/widget/ShowcaseView;->setConfigOptions(Lcom/liquable/nemo/widget/ShowcaseView$ConfigOptions;)V

    .line 193
    :cond_0
    invoke-direct {p0}, Lcom/liquable/nemo/widget/ShowcaseView;->getConfigOptions()Lcom/liquable/nemo/widget/ShowcaseView$ConfigOptions;

    move-result-object v0

    iget v0, v0, Lcom/liquable/nemo/widget/ShowcaseView$ConfigOptions;->insert:I

    if-nez v0, :cond_1

    .line 194
    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 198
    :goto_0
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/widget/ShowcaseView;->setShowcaseView(Landroid/view/View;)V

    .line 199
    invoke-virtual {p0, p3, p4}, Lcom/liquable/nemo/widget/ShowcaseView;->setText(II)V

    .line 200
    return-object p0

    .line 196
    :cond_1
    const v0, 0x1020002

    invoke-virtual {p2, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public static insertShowcaseViewWithType(IILandroid/app/Activity;IILcom/liquable/nemo/widget/ShowcaseView$ConfigOptions;)Lcom/liquable/nemo/widget/ShowcaseView;
    .locals 2
    .param p0, "type"    # I
    .param p1, "itemId"    # I
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "title"    # I
    .param p4, "detailText"    # I
    .param p5, "options"    # Lcom/liquable/nemo/widget/ShowcaseView$ConfigOptions;

    .prologue
    .line 278
    new-instance v0, Lcom/liquable/nemo/widget/ShowcaseView;

    invoke-direct {v0, p2}, Lcom/liquable/nemo/widget/ShowcaseView;-><init>(Landroid/content/Context;)V

    .line 279
    .local v0, "sv":Lcom/liquable/nemo/widget/ShowcaseView;
    if-eqz p5, :cond_0

    .line 280
    invoke-direct {v0, p5}, Lcom/liquable/nemo/widget/ShowcaseView;->setConfigOptions(Lcom/liquable/nemo/widget/ShowcaseView$ConfigOptions;)V

    .line 282
    :cond_0
    invoke-direct {v0}, Lcom/liquable/nemo/widget/ShowcaseView;->getConfigOptions()Lcom/liquable/nemo/widget/ShowcaseView$ConfigOptions;

    move-result-object v1

    iget v1, v1, Lcom/liquable/nemo/widget/ShowcaseView$ConfigOptions;->insert:I

    if-nez v1, :cond_1

    .line 283
    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 287
    :goto_0
    invoke-virtual {v0, p0, p1, p2}, Lcom/liquable/nemo/widget/ShowcaseView;->setShowcaseItem(IILandroid/app/Activity;)V

    .line 288
    invoke-virtual {v0, p3, p4}, Lcom/liquable/nemo/widget/ShowcaseView;->setText(II)V

    .line 289
    return-object v0

    .line 285
    :cond_1
    const v1, 0x1020002

    invoke-virtual {p2, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public static insertShowcaseViewWithType(IILandroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/liquable/nemo/widget/ShowcaseView$ConfigOptions;)Lcom/liquable/nemo/widget/ShowcaseView;
    .locals 2
    .param p0, "type"    # I
    .param p1, "itemId"    # I
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "detailText"    # Ljava/lang/String;
    .param p5, "options"    # Lcom/liquable/nemo/widget/ShowcaseView$ConfigOptions;

    .prologue
    .line 316
    new-instance v0, Lcom/liquable/nemo/widget/ShowcaseView;

    invoke-direct {v0, p2}, Lcom/liquable/nemo/widget/ShowcaseView;-><init>(Landroid/content/Context;)V

    .line 317
    .local v0, "sv":Lcom/liquable/nemo/widget/ShowcaseView;
    if-eqz p5, :cond_0

    .line 318
    invoke-direct {v0, p5}, Lcom/liquable/nemo/widget/ShowcaseView;->setConfigOptions(Lcom/liquable/nemo/widget/ShowcaseView$ConfigOptions;)V

    .line 320
    :cond_0
    invoke-direct {v0}, Lcom/liquable/nemo/widget/ShowcaseView;->getConfigOptions()Lcom/liquable/nemo/widget/ShowcaseView$ConfigOptions;

    move-result-object v1

    iget v1, v1, Lcom/liquable/nemo/widget/ShowcaseView$ConfigOptions;->insert:I

    if-nez v1, :cond_1

    .line 321
    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 325
    :goto_0
    invoke-virtual {v0, p0, p1, p2}, Lcom/liquable/nemo/widget/ShowcaseView;->setShowcaseItem(IILandroid/app/Activity;)V

    .line 326
    invoke-virtual {v0, p3, p4}, Lcom/liquable/nemo/widget/ShowcaseView;->setText(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    return-object v0

    .line 323
    :cond_1
    const v1, 0x1020002

    invoke-virtual {p2, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private makeVoidedRect()Z
    .locals 9

    .prologue
    .line 580
    iget-object v4, p0, Lcom/liquable/nemo/widget/ShowcaseView;->voidedArea:Landroid/graphics/Rect;

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/liquable/nemo/widget/ShowcaseView;->showcaseX:F

    iget v5, p0, Lcom/liquable/nemo/widget/ShowcaseView;->legacyShowcaseX:F

    cmpl-float v4, v4, v5

    if-nez v4, :cond_0

    iget v4, p0, Lcom/liquable/nemo/widget/ShowcaseView;->showcaseY:F

    iget v5, p0, Lcom/liquable/nemo/widget/ShowcaseView;->legacyShowcaseY:F

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_1

    .line 582
    :cond_0
    iget v4, p0, Lcom/liquable/nemo/widget/ShowcaseView;->showcaseX:F

    float-to-int v0, v4

    .local v0, "cx":I
    iget v4, p0, Lcom/liquable/nemo/widget/ShowcaseView;->showcaseY:F

    float-to-int v1, v4

    .line 583
    .local v1, "cy":I
    iget-object v4, p0, Lcom/liquable/nemo/widget/ShowcaseView;->showcase:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 584
    .local v3, "dw":I
    iget-object v4, p0, Lcom/liquable/nemo/widget/ShowcaseView;->showcase:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 586
    .local v2, "dh":I
    new-instance v4, Landroid/graphics/Rect;

    div-int/lit8 v5, v3, 0x2

    sub-int v5, v0, v5

    div-int/lit8 v6, v2, 0x2

    sub-int v6, v1, v6

    div-int/lit8 v7, v3, 0x2

    add-int/2addr v7, v0

    div-int/lit8 v8, v2, 0x2

    add-int/2addr v8, v1

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, p0, Lcom/liquable/nemo/widget/ShowcaseView;->voidedArea:Landroid/graphics/Rect;

    .line 588
    iget v4, p0, Lcom/liquable/nemo/widget/ShowcaseView;->showcaseX:F

    iput v4, p0, Lcom/liquable/nemo/widget/ShowcaseView;->legacyShowcaseX:F

    .line 589
    iget v4, p0, Lcom/liquable/nemo/widget/ShowcaseView;->showcaseY:F

    iput v4, p0, Lcom/liquable/nemo/widget/ShowcaseView;->legacyShowcaseY:F

    .line 591
    const/4 v4, 0x1

    .line 594
    .end local v0    # "cx":I
    .end local v1    # "cy":I
    .end local v2    # "dh":I
    .end local v3    # "dw":I
    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private setConfigOptions(Lcom/liquable/nemo/widget/ShowcaseView$ConfigOptions;)V
    .locals 0
    .param p1, "options"    # Lcom/liquable/nemo/widget/ShowcaseView$ConfigOptions;

    .prologue
    .line 650
    iput-object p1, p0, Lcom/liquable/nemo/widget/ShowcaseView;->mOptions:Lcom/liquable/nemo/widget/ShowcaseView$ConfigOptions;

    .line 651
    return-void
.end method

.method private showcaseActionItem(Landroid/view/ViewParent;Ljava/lang/Class;II)V
    .locals 16
    .param p1, "p"    # Landroid/view/ViewParent;
    .param p2, "absAbv"    # Ljava/lang/Class;
    .param p3, "itemType"    # I
    .param p4, "actionItemId"    # I

    .prologue
    .line 819
    :try_start_0
    const-string/jumbo v13, "mActionMenuPresenter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 820
    .local v3, "mAmpField":Ljava/lang/reflect/Field;
    const/4 v13, 0x1

    invoke-virtual {v3, v13}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 821
    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 822
    .local v2, "mAmp":Ljava/lang/Object;
    const/4 v13, 0x6

    move/from16 v0, p3

    if-ne v0, v13, :cond_1

    .line 824
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    const-string/jumbo v14, "mOverflowButton"

    invoke-virtual {v13, v14}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v10

    .line 825
    .local v10, "mObField":Ljava/lang/reflect/Field;
    const/4 v13, 0x1

    invoke-virtual {v10, v13}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 826
    invoke-virtual {v10, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    .line 827
    .local v9, "mOb":Landroid/view/View;
    if-eqz v9, :cond_0

    .line 828
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/liquable/nemo/widget/ShowcaseView;->setShowcaseView(Landroid/view/View;)V

    .line 867
    .end local v2    # "mAmp":Ljava/lang/Object;
    .end local v3    # "mAmpField":Ljava/lang/reflect/Field;
    .end local v9    # "mOb":Landroid/view/View;
    .end local v10    # "mObField":Ljava/lang/reflect/Field;
    :cond_0
    :goto_0
    return-void

    .line 832
    .restart local v2    # "mAmp":Ljava/lang/Object;
    .restart local v3    # "mAmpField":Ljava/lang/reflect/Field;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v13

    const-string/jumbo v14, "mMenuView"

    invoke-virtual {v13, v14}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 833
    .local v5, "mAmvField":Ljava/lang/reflect/Field;
    const/4 v13, 0x1

    invoke-virtual {v5, v13}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 834
    invoke-virtual {v5, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 837
    .local v4, "mAmv":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "com.actionbarsherlock"

    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 840
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    .line 841
    invoke-virtual {v13}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v13

    .line 842
    invoke-virtual {v13}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v13

    .line 843
    invoke-virtual {v13}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v13

    .line 844
    invoke-virtual {v13}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v13

    const-string/jumbo v14, "mChildren"

    .line 845
    invoke-virtual {v13, v14}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 849
    .local v7, "mChField":Ljava/lang/reflect/Field;
    :goto_1
    const/4 v13, 0x1

    invoke-virtual {v7, v13}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 850
    invoke-virtual {v7, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Ljava/lang/Object;

    move-object v0, v13

    check-cast v0, [Ljava/lang/Object;

    move-object v8, v0

    .line 851
    .local v8, "mChs":[Ljava/lang/Object;
    array-length v14, v8

    const/4 v13, 0x0

    :goto_2
    if-ge v13, v14, :cond_0

    aget-object v6, v8, v13

    .line 852
    .local v6, "mCh":Ljava/lang/Object;
    if-eqz v6, :cond_2

    .line 853
    move-object v0, v6

    check-cast v0, Landroid/view/View;

    move-object v12, v0

    .line 854
    .local v12, "v":Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getId()I

    move-result v15

    move/from16 v0, p4

    if-ne v15, v0, :cond_2

    .line 855
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/liquable/nemo/widget/ShowcaseView;->setShowcaseView(Landroid/view/View;)V

    .line 851
    .end local v12    # "v":Landroid/view/View;
    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 847
    .end local v6    # "mCh":Ljava/lang/Object;
    .end local v7    # "mChField":Ljava/lang/reflect/Field;
    .end local v8    # "mChs":[Ljava/lang/Object;
    :cond_3
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v13

    const-string/jumbo v14, "mChildren"

    invoke-virtual {v13, v14}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v7

    .restart local v7    # "mChField":Ljava/lang/reflect/Field;
    goto :goto_1

    .line 860
    .end local v2    # "mAmp":Ljava/lang/Object;
    .end local v3    # "mAmpField":Ljava/lang/reflect/Field;
    .end local v4    # "mAmv":Ljava/lang/Object;
    .end local v5    # "mAmvField":Ljava/lang/reflect/Field;
    .end local v7    # "mChField":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v1

    .line 861
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto/16 :goto_0

    .line 862
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v1

    .line 863
    .local v1, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v1}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto/16 :goto_0

    .line 864
    .end local v1    # "e":Ljava/lang/NoSuchFieldException;
    :catch_2
    move-exception v11

    .line 865
    .local v11, "npe":Ljava/lang/NullPointerException;
    new-instance v13, Ljava/lang/RuntimeException;

    const-string/jumbo v14, "insertShowcaseViewWithType() must be called after or during onCreateOptionsMenu() of the host Activity"

    invoke-direct {v13, v14}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v13
.end method

.method private showcaseSpinner(Landroid/view/ViewParent;Ljava/lang/Class;)V
    .locals 5
    .param p1, "p"    # Landroid/view/ViewParent;
    .param p2, "abv"    # Ljava/lang/Class;

    .prologue
    .line 871
    :try_start_0
    const-string/jumbo v3, "mSpinner"

    invoke-virtual {p2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 872
    .local v1, "mSpinnerField":Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 873
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 874
    .local v2, "mSpinnerView":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 875
    invoke-virtual {p0, v2}, Lcom/liquable/nemo/widget/ShowcaseView;->setShowcaseView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 883
    .end local v1    # "mSpinnerField":Ljava/lang/reflect/Field;
    .end local v2    # "mSpinnerView":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 877
    :catch_0
    move-exception v0

    .line 878
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    const-string/jumbo v3, "TAG"

    const-string/jumbo v4, "Failed to find actionbar spinner"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 879
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v0

    .line 880
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string/jumbo v3, "TAG"

    const-string/jumbo v4, "Failed to access actionbar spinner"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private showcaseTitle(Landroid/view/ViewParent;Ljava/lang/Class;)V
    .locals 5
    .param p1, "p"    # Landroid/view/ViewParent;
    .param p2, "abv"    # Ljava/lang/Class;

    .prologue
    .line 887
    :try_start_0
    const-string/jumbo v3, "mTitleView"

    invoke-virtual {p2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 888
    .local v1, "mTitleViewField":Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 889
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 890
    .local v2, "titleView":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 891
    invoke-virtual {p0, v2}, Lcom/liquable/nemo/widget/ShowcaseView;->setShowcaseView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 899
    .end local v1    # "mTitleViewField":Ljava/lang/reflect/Field;
    .end local v2    # "titleView":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 893
    :catch_0
    move-exception v0

    .line 894
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    const-string/jumbo v3, "TAG"

    const-string/jumbo v4, "Failed to find actionbar title"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 895
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v0

    .line 896
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string/jumbo v3, "TAG"

    const-string/jumbo v4, "Failed to access actionbar title"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x1

    const/4 v10, 0x0

    .line 414
    iget v0, p0, Lcom/liquable/nemo/widget/ShowcaseView;->showcaseX:F

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/liquable/nemo/widget/ShowcaseView;->showcaseY:F

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    iget-boolean v0, p0, Lcom/liquable/nemo/widget/ShowcaseView;->isRedundant:Z

    if-eqz v0, :cond_1

    .line 415
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 468
    :goto_0
    return-void

    .line 420
    :cond_1
    iget v0, p0, Lcom/liquable/nemo/widget/ShowcaseView;->backColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 423
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    .line 424
    .local v8, "mm":Landroid/graphics/Matrix;
    iget v0, p0, Lcom/liquable/nemo/widget/ShowcaseView;->scaleMultiplier:F

    iget v1, p0, Lcom/liquable/nemo/widget/ShowcaseView;->scaleMultiplier:F

    iget v2, p0, Lcom/liquable/nemo/widget/ShowcaseView;->showcaseX:F

    iget v3, p0, Lcom/liquable/nemo/widget/ShowcaseView;->showcaseY:F

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 425
    invoke-virtual {p1, v8}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 428
    iget v0, p0, Lcom/liquable/nemo/widget/ShowcaseView;->showcaseX:F

    iget v1, p0, Lcom/liquable/nemo/widget/ShowcaseView;->showcaseY:F

    iget v2, p0, Lcom/liquable/nemo/widget/ShowcaseView;->showcaseRadius:F

    iget-object v3, p0, Lcom/liquable/nemo/widget/ShowcaseView;->mEraser:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 430
    invoke-direct {p0}, Lcom/liquable/nemo/widget/ShowcaseView;->makeVoidedRect()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/liquable/nemo/widget/ShowcaseView;->mAlteredText:Z

    if-eqz v0, :cond_8

    :cond_2
    move v9, v7

    .line 431
    .local v9, "recalculateText":Z
    :goto_1
    iput-boolean v10, p0, Lcom/liquable/nemo/widget/ShowcaseView;->mAlteredText:Z

    .line 433
    iget-object v0, p0, Lcom/liquable/nemo/widget/ShowcaseView;->showcase:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/liquable/nemo/widget/ShowcaseView;->voidedArea:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 434
    iget-object v0, p0, Lcom/liquable/nemo/widget/ShowcaseView;->showcase:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 436
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 438
    iget-object v0, p0, Lcom/liquable/nemo/widget/ShowcaseView;->mTitleText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/liquable/nemo/widget/ShowcaseView;->mSubText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 439
    :cond_3
    if-eqz v9, :cond_4

    .line 440
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/liquable/nemo/widget/ShowcaseView;->getBestTextPosition(II)[F

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/widget/ShowcaseView;->mBestTextPosition:[F

    .line 443
    :cond_4
    iget-object v0, p0, Lcom/liquable/nemo/widget/ShowcaseView;->mTitleText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 445
    iget-object v0, p0, Lcom/liquable/nemo/widget/ShowcaseView;->mTitleText:Ljava/lang/String;

    iget-object v1, p0, Lcom/liquable/nemo/widget/ShowcaseView;->mBestTextPosition:[F

    aget v1, v1, v10

    iget-object v2, p0, Lcom/liquable/nemo/widget/ShowcaseView;->mBestTextPosition:[F

    aget v2, v2, v7

    iget-object v3, p0, Lcom/liquable/nemo/widget/ShowcaseView;->mPaintTitle:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 448
    :cond_5
    iget-object v0, p0, Lcom/liquable/nemo/widget/ShowcaseView;->mSubText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 449
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 450
    if-eqz v9, :cond_6

    .line 451
    new-instance v0, Landroid/text/DynamicLayout;

    iget-object v1, p0, Lcom/liquable/nemo/widget/ShowcaseView;->mSubText:Ljava/lang/String;

    iget-object v2, p0, Lcom/liquable/nemo/widget/ShowcaseView;->mPaintDetail:Landroid/text/TextPaint;

    iget-object v3, p0, Lcom/liquable/nemo/widget/ShowcaseView;->mBestTextPosition:[F

    const/4 v4, 0x2

    aget v3, v3, v4

    .line 453
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const v5, 0x3f99999a    # 1.2f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct/range {v0 .. v7}, Landroid/text/DynamicLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lcom/liquable/nemo/widget/ShowcaseView;->mDynamicDetailLayout:Landroid/text/DynamicLayout;

    .line 459
    :cond_6
    iget-object v0, p0, Lcom/liquable/nemo/widget/ShowcaseView;->mBestTextPosition:[F

    aget v0, v0, v10

    iget-object v1, p0, Lcom/liquable/nemo/widget/ShowcaseView;->mBestTextPosition:[F

    aget v1, v1, v7

    const/high16 v2, 0x41400000    # 12.0f

    iget v3, p0, Lcom/liquable/nemo/widget/ShowcaseView;->metricScale:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 460
    iget-object v0, p0, Lcom/liquable/nemo/widget/ShowcaseView;->mDynamicDetailLayout:Landroid/text/DynamicLayout;

    invoke-virtual {v0, p1}, Landroid/text/DynamicLayout;->draw(Landroid/graphics/Canvas;)V

    .line 461
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 466
    :cond_7
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    .end local v9    # "recalculateText":Z
    :cond_8
    move v9, v10

    .line 430
    goto/16 :goto_1
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 505
    iget-object v0, p0, Lcom/liquable/nemo/widget/ShowcaseView;->mEventListener:Lcom/liquable/nemo/widget/ShowcaseView$OnShowcaseEventListener;

    if-eqz v0, :cond_0

    .line 506
    iget-object v0, p0, Lcom/liquable/nemo/widget/ShowcaseView;->mEventListener:Lcom/liquable/nemo/widget/ShowcaseView$OnShowcaseEventListener;

    invoke-interface {v0, p0}, Lcom/liquable/nemo/widget/ShowcaseView$OnShowcaseEventListener;->onShowcaseViewHide(Lcom/liquable/nemo/widget/ShowcaseView;)V

    .line 509
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/widget/ShowcaseView;->setVisibility(I)V

    .line 510
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    .line 602
    iget-object v1, p0, Lcom/liquable/nemo/widget/ShowcaseView;->mOptions:Lcom/liquable/nemo/widget/ShowcaseView$ConfigOptions;

    iget v1, v1, Lcom/liquable/nemo/widget/ShowcaseView$ConfigOptions;->shotType:I

    if-ne v1, v4, :cond_0

    .line 603
    invoke-virtual {p0}, Lcom/liquable/nemo/widget/ShowcaseView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "showcase_internal"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 605
    .local v0, "internal":Landroid/content/SharedPreferences;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_1

    .line 606
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "hasShot"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/liquable/nemo/widget/ShowcaseView;->getConfigOptions()Lcom/liquable/nemo/widget/ShowcaseView$ConfigOptions;

    move-result-object v3

    iget v3, v3, Lcom/liquable/nemo/widget/ShowcaseView$ConfigOptions;->showcaseId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 611
    .end local v0    # "internal":Landroid/content/SharedPreferences;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/liquable/nemo/widget/ShowcaseView;->hide()V

    .line 612
    return-void

    .line 608
    .restart local v0    # "internal":Landroid/content/SharedPreferences;
    :cond_1
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "hasShot"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/liquable/nemo/widget/ShowcaseView;->getConfigOptions()Lcom/liquable/nemo/widget/ShowcaseView$ConfigOptions;

    move-result-object v3

    iget v3, v3, Lcom/liquable/nemo/widget/ShowcaseView$ConfigOptions;->showcaseId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    const/4 v4, 0x1

    .line 617
    iget-object v5, p0, Lcom/liquable/nemo/widget/ShowcaseView;->mOptions:Lcom/liquable/nemo/widget/ShowcaseView$ConfigOptions;

    iget-boolean v5, v5, Lcom/liquable/nemo/widget/ShowcaseView$ConfigOptions;->blockAnyTouch:Z

    if-eqz v5, :cond_1

    .line 630
    :cond_0
    :goto_0
    return v4

    .line 621
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    iget v6, p0, Lcom/liquable/nemo/widget/ShowcaseView;->showcaseX:F

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 622
    .local v2, "xDelta":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    iget v6, p0, Lcom/liquable/nemo/widget/ShowcaseView;->showcaseY:F

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 623
    .local v3, "yDelta":F
    float-to-double v5, v2

    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    float-to-double v7, v3

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    add-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 625
    .local v0, "distanceFromFocus":D
    iget-object v5, p0, Lcom/liquable/nemo/widget/ShowcaseView;->mOptions:Lcom/liquable/nemo/widget/ShowcaseView$ConfigOptions;

    iget-boolean v5, v5, Lcom/liquable/nemo/widget/ShowcaseView$ConfigOptions;->hideOnClickOutside:Z

    if-eqz v5, :cond_2

    iget v5, p0, Lcom/liquable/nemo/widget/ShowcaseView;->showcaseRadius:F

    float-to-double v5, v5

    cmpl-double v5, v0, v5

    if-lez v5, :cond_2

    .line 626
    invoke-virtual {p0}, Lcom/liquable/nemo/widget/ShowcaseView;->hide()V

    goto :goto_0

    .line 630
    :cond_2
    iget-object v5, p0, Lcom/liquable/nemo/widget/ShowcaseView;->mOptions:Lcom/liquable/nemo/widget/ShowcaseView$ConfigOptions;

    iget-boolean v5, v5, Lcom/liquable/nemo/widget/ShowcaseView$ConfigOptions;->block:Z

    if-eqz v5, :cond_3

    iget v5, p0, Lcom/liquable/nemo/widget/ShowcaseView;->showcaseRadius:F

    float-to-double v5, v5

    cmpl-double v5, v0, v5

    if-gtz v5, :cond_0

    :cond_3
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public overrideButtonClick(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 640
    iget-boolean v0, p0, Lcom/liquable/nemo/widget/ShowcaseView;->isRedundant:Z

    if-eqz v0, :cond_0

    .line 647
    .end local p1    # "listener":Landroid/view/View$OnClickListener;
    :goto_0
    return-void

    .line 643
    .restart local p1    # "listener":Landroid/view/View$OnClickListener;
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/widget/ShowcaseView;->mEndButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 644
    iget-object v0, p0, Lcom/liquable/nemo/widget/ShowcaseView;->mEndButton:Landroid/widget/Button;

    if-eqz p1, :cond_2

    .end local p1    # "listener":Landroid/view/View$OnClickListener;
    :goto_1
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 646
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/liquable/nemo/widget/ShowcaseView;->hasCustomClickListener:Z

    goto :goto_0

    .restart local p1    # "listener":Landroid/view/View$OnClickListener;
    :cond_2
    move-object p1, p0

    .line 644
    goto :goto_1
.end method

.method public setEndButtonAlignParentLeftRight(I)V
    .locals 0
    .param p1, "alignParentLeftRight"    # I

    .prologue
    .line 654
    iput p1, p0, Lcom/liquable/nemo/widget/ShowcaseView;->alignParentLeftRight:I

    .line 655
    return-void
.end method

.method public setOnShowcaseEventListener(Lcom/liquable/nemo/widget/ShowcaseView$OnShowcaseEventListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/liquable/nemo/widget/ShowcaseView$OnShowcaseEventListener;

    .prologue
    .line 658
    iput-object p1, p0, Lcom/liquable/nemo/widget/ShowcaseView;->mEventListener:Lcom/liquable/nemo/widget/ShowcaseView$OnShowcaseEventListener;

    .line 659
    return-void
.end method

.method public setShowcaseIndicatorScale(F)V
    .locals 0
    .param p1, "scaleMultiplier"    # F

    .prologue
    .line 662
    iput p1, p0, Lcom/liquable/nemo/widget/ShowcaseView;->scaleMultiplier:F

    .line 663
    return-void
.end method

.method public setShowcaseItem(IILandroid/app/Activity;)V
    .locals 1
    .param p1, "itemType"    # I
    .param p2, "actionItemId"    # I
    .param p3, "activity"    # Landroid/app/Activity;

    .prologue
    .line 666
    new-instance v0, Lcom/liquable/nemo/widget/ShowcaseView$1;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/liquable/nemo/widget/ShowcaseView$1;-><init>(Lcom/liquable/nemo/widget/ShowcaseView;Landroid/app/Activity;II)V

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/widget/ShowcaseView;->post(Ljava/lang/Runnable;)Z

    .line 719
    return-void
.end method

.method public setShowcasePosition(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 730
    iget-boolean v0, p0, Lcom/liquable/nemo/widget/ShowcaseView;->isRedundant:Z

    if-eqz v0, :cond_0

    .line 737
    :goto_0
    return-void

    .line 733
    :cond_0
    iput p1, p0, Lcom/liquable/nemo/widget/ShowcaseView;->showcaseX:F

    .line 734
    iput p2, p0, Lcom/liquable/nemo/widget/ShowcaseView;->showcaseY:F

    .line 735
    invoke-direct {p0}, Lcom/liquable/nemo/widget/ShowcaseView;->init()V

    .line 736
    invoke-virtual {p0}, Lcom/liquable/nemo/widget/ShowcaseView;->invalidate()V

    goto :goto_0
.end method

.method public setShowcaseView(Landroid/app/Activity;I)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "viewId"    # I

    .prologue
    .line 740
    invoke-virtual {p1, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 741
    .local v0, "view":Landroid/view/View;
    if-nez v0, :cond_0

    .line 745
    :goto_0
    return-void

    .line 744
    :cond_0
    invoke-virtual {p0, v0}, Lcom/liquable/nemo/widget/ShowcaseView;->setShowcaseView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public setShowcaseView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 754
    iget-boolean v0, p0, Lcom/liquable/nemo/widget/ShowcaseView;->isRedundant:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    .line 755
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/liquable/nemo/widget/ShowcaseView;->isRedundant:Z

    .line 776
    :goto_0
    return-void

    .line 758
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/liquable/nemo/widget/ShowcaseView;->isRedundant:Z

    .line 760
    new-instance v0, Lcom/liquable/nemo/widget/ShowcaseView$2;

    invoke-direct {v0, p0, p1}, Lcom/liquable/nemo/widget/ShowcaseView$2;-><init>(Lcom/liquable/nemo/widget/ShowcaseView;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public setText(II)V
    .locals 3
    .param p1, "titleTextResId"    # I
    .param p2, "subTextResId"    # I

    .prologue
    const/4 v0, 0x0

    .line 779
    if-nez p1, :cond_0

    move-object v1, v0

    .line 781
    .local v1, "titleText":Ljava/lang/String;
    :goto_0
    if-nez p2, :cond_1

    .line 783
    .local v0, "subText":Ljava/lang/String;
    :goto_1
    invoke-virtual {p0, v1, v0}, Lcom/liquable/nemo/widget/ShowcaseView;->setText(Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    return-void

    .line 779
    .end local v0    # "subText":Ljava/lang/String;
    .end local v1    # "titleText":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/liquable/nemo/widget/ShowcaseView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 780
    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 781
    .restart local v1    # "titleText":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/liquable/nemo/widget/ShowcaseView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 782
    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public setText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "titleText"    # Ljava/lang/String;
    .param p2, "subText"    # Ljava/lang/String;

    .prologue
    .line 787
    iput-object p1, p0, Lcom/liquable/nemo/widget/ShowcaseView;->mTitleText:Ljava/lang/String;

    .line 788
    iput-object p2, p0, Lcom/liquable/nemo/widget/ShowcaseView;->mSubText:Ljava/lang/String;

    .line 789
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/liquable/nemo/widget/ShowcaseView;->mAlteredText:Z

    .line 790
    invoke-virtual {p0}, Lcom/liquable/nemo/widget/ShowcaseView;->invalidate()V

    .line 791
    return-void
.end method

.method public setTextColors(II)Lcom/liquable/nemo/widget/ShowcaseView;
    .locals 1
    .param p1, "titleTextColor"    # I
    .param p2, "detailTextColor"    # I

    .prologue
    .line 794
    iput p1, p0, Lcom/liquable/nemo/widget/ShowcaseView;->titleTextColor:I

    .line 795
    iput p2, p0, Lcom/liquable/nemo/widget/ShowcaseView;->detailTextColor:I

    .line 796
    iget-object v0, p0, Lcom/liquable/nemo/widget/ShowcaseView;->mPaintTitle:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 797
    iget-object v0, p0, Lcom/liquable/nemo/widget/ShowcaseView;->mPaintTitle:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 799
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/widget/ShowcaseView;->mPaintDetail:Landroid/text/TextPaint;

    if-eqz v0, :cond_1

    .line 800
    iget-object v0, p0, Lcom/liquable/nemo/widget/ShowcaseView;->mPaintDetail:Landroid/text/TextPaint;

    invoke-virtual {v0, p2}, Landroid/text/TextPaint;->setColor(I)V

    .line 802
    :cond_1
    invoke-virtual {p0}, Lcom/liquable/nemo/widget/ShowcaseView;->invalidate()V

    .line 803
    return-object p0
.end method

.method public show()V
    .locals 1

    .prologue
    .line 807
    iget-object v0, p0, Lcom/liquable/nemo/widget/ShowcaseView;->mEventListener:Lcom/liquable/nemo/widget/ShowcaseView$OnShowcaseEventListener;

    if-eqz v0, :cond_0

    .line 808
    iget-object v0, p0, Lcom/liquable/nemo/widget/ShowcaseView;->mEventListener:Lcom/liquable/nemo/widget/ShowcaseView$OnShowcaseEventListener;

    invoke-interface {v0, p0}, Lcom/liquable/nemo/widget/ShowcaseView$OnShowcaseEventListener;->onShowcaseViewShow(Lcom/liquable/nemo/widget/ShowcaseView;)V

    .line 811
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/widget/ShowcaseView;->setVisibility(I)V

    .line 812
    return-void
.end method
