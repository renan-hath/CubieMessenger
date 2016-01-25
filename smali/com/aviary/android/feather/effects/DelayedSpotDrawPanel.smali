.class public Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;
.super Lcom/aviary/android/feather/effects/AbstractContentPanel;
.source "DelayedSpotDrawPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/aviary/android/feather/widget/AviaryGallery$OnItemsScrollListener;
.implements Lcom/aviary/android/feather/widget/ImageViewSpotDraw$OnDrawListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$GenerateResultTask;,
        Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$GalleryAdapter;,
        Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$MyHandlerThread;
    }
.end annotation


# instance fields
.field mActions:Lcom/aviary/android/feather/headless/moa/MoaActionList;

.field private mBackgroundDrawThread:Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$MyHandlerThread;

.field protected mBrushSize:I

.field private mBrushSizeIndex:I

.field protected mBrushSizes:[I

.field private mDisabledStatusView:Landroid/view/View;

.field protected mDrawable:Lcom/aviary/android/feather/graphics/PreviewSpotDrawable;

.field protected mFilterType:Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

.field protected mGallery:Lcom/aviary/android/feather/widget/AviaryGallery;

.field protected mLensButton:Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;

.field private mLimitDrawArea:Z

.field protected mSelectedPosition:I

.field protected mToast:Landroid/widget/Toast;

.field private maxBrushSize:I

.field maxRadiusSize:F

.field private minBrushSize:I

.field minRadiusSize:F


# direct methods
.method public constructor <init>(Lcom/aviary/android/feather/library/services/IAviaryController;Lcom/aviary/android/feather/library/content/ToolEntry;Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;Z)V
    .locals 1
    .param p1, "context"    # Lcom/aviary/android/feather/library/services/IAviaryController;
    .param p2, "entry"    # Lcom/aviary/android/feather/library/content/ToolEntry;
    .param p3, "filter_type"    # Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;
    .param p4, "limit_area"    # Z

    .prologue
    .line 97
    invoke-direct {p0, p1, p2}, Lcom/aviary/android/feather/effects/AbstractContentPanel;-><init>(Lcom/aviary/android/feather/library/services/IAviaryController;Lcom/aviary/android/feather/library/content/ToolEntry;)V

    .line 61
    const/4 v0, -0x1

    iput v0, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->mSelectedPosition:I

    .line 71
    invoke-static {}, Lcom/aviary/android/feather/headless/moa/MoaActionFactory;->actionList()Lcom/aviary/android/feather/headless/moa/MoaActionList;

    move-result-object v0

    iput-object v0, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->mActions:Lcom/aviary/android/feather/headless/moa/MoaActionList;

    .line 98
    iput-object p3, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->mFilterType:Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    .line 99
    iput-boolean p4, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->mLimitDrawArea:Z

    .line 100
    return-void
.end method

.method static synthetic access$000(Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;)I
    .locals 1
    .param p0, "x0"    # Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;

    .prologue
    .line 55
    iget v0, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->minBrushSize:I

    return v0
.end method

.method static synthetic access$100(Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;)I
    .locals 1
    .param p0, "x0"    # Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;

    .prologue
    .line 55
    iget v0, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->maxBrushSize:I

    return v0
.end method

.method static synthetic access$200(Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;)Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$MyHandlerThread;
    .locals 1
    .param p0, "x0"    # Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->mBackgroundDrawThread:Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$MyHandlerThread;

    return-object v0
.end method

.method private makeToast()Landroid/widget/Toast;
    .locals 4

    .prologue
    .line 227
    new-instance v2, Lcom/aviary/android/feather/graphics/PreviewSpotDrawable;

    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->getContext()Lcom/aviary/android/feather/library/services/IAviaryController;

    move-result-object v3

    invoke-interface {v3}, Lcom/aviary/android/feather/library/services/IAviaryController;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/aviary/android/feather/graphics/PreviewSpotDrawable;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->mDrawable:Lcom/aviary/android/feather/graphics/PreviewSpotDrawable;

    .line 228
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->getContext()Lcom/aviary/android/feather/library/services/IAviaryController;

    move-result-object v2

    invoke-interface {v2}, Lcom/aviary/android/feather/library/services/IAviaryController;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/aviary/android/feather/utils/UIUtils;->makeCustomToast(Landroid/content/Context;)Landroid/widget/Toast;

    move-result-object v1

    .line 229
    .local v1, "t":Landroid/widget/Toast;
    invoke-virtual {v1}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v2

    sget v3, Lcom/aviary/android/feather/R$id;->image:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 230
    .local v0, "image":Landroid/widget/ImageView;
    iget-object v2, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->mDrawable:Lcom/aviary/android/feather/graphics/PreviewSpotDrawable;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 231
    return-object v1
.end method

.method private setSelectedTool(Lcom/aviary/android/feather/widget/ImageViewSpotDraw$TouchMode;)V
    .locals 4
    .param p1, "which"    # Lcom/aviary/android/feather/widget/ImageViewSpotDraw$TouchMode;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 180
    iget-object v0, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    check-cast v0, Lcom/aviary/android/feather/widget/ImageViewSpotDraw;

    invoke-virtual {v0, p1}, Lcom/aviary/android/feather/widget/ImageViewSpotDraw;->setDrawMode(Lcom/aviary/android/feather/widget/ImageViewSpotDraw$TouchMode;)V

    .line 181
    iget-object v3, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->mLensButton:Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;

    sget-object v0, Lcom/aviary/android/feather/widget/ImageViewSpotDraw$TouchMode;->IMAGE:Lcom/aviary/android/feather/widget/ImageViewSpotDraw$TouchMode;

    if-ne p1, v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->setSelected(Z)V

    .line 182
    sget-object v0, Lcom/aviary/android/feather/widget/ImageViewSpotDraw$TouchMode;->IMAGE:Lcom/aviary/android/feather/widget/ImageViewSpotDraw$TouchMode;

    if-eq p1, v0, :cond_1

    :goto_1
    invoke-virtual {p0, v1}, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->setPanelEnabled(Z)V

    .line 183
    return-void

    :cond_0
    move v0, v2

    .line 181
    goto :goto_0

    :cond_1
    move v1, v2

    .line 182
    goto :goto_1
.end method

.method private showSizePreview(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    :goto_0
    return-void

    .line 84
    :cond_0
    invoke-direct {p0, p1}, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->updateSizePreview(I)V

    goto :goto_0
.end method

.method private updateSizePreview(I)V
    .locals 2
    .param p1, "size"    # I

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->isActive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    iget-object v0, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->mDrawable:Lcom/aviary/android/feather/graphics/PreviewSpotDrawable;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/graphics/PreviewSpotDrawable;->setFixedRadius(F)V

    .line 92
    iget-object v0, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method


# virtual methods
.method protected createFilter()Lcom/aviary/android/feather/headless/filters/IFilter;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->mFilterType:Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    invoke-static {v0}, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory;->get(Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;)Lcom/aviary/android/feather/headless/filters/IFilter;

    move-result-object v0

    return-object v0
.end method

.method protected generateContentView(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    .line 294
    sget v0, Lcom/aviary/android/feather/R$layout;->aviary_content_spot_draw:I

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
    .line 299
    sget v0, Lcom/aviary/android/feather/R$layout;->aviary_panel_spot:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method public onActivate()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 146
    invoke-super {p0}, Lcom/aviary/android/feather/effects/AbstractContentPanel;->onActivate()V

    .line 148
    invoke-direct {p0}, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->makeToast()Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->mToast:Landroid/widget/Toast;

    .line 150
    new-array v0, v2, [Lcom/aviary/android/feather/widget/VibrationWidget;

    iget-object v1, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->mGallery:Lcom/aviary/android/feather/widget/AviaryGallery;

    aput-object v1, v0, v3

    invoke-virtual {p0, v0}, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->disableHapticIsNecessary([Lcom/aviary/android/feather/widget/VibrationWidget;)V

    .line 152
    iget-object v0, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->mBackgroundDrawThread:Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$MyHandlerThread;

    invoke-virtual {v0}, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$MyHandlerThread;->start()V

    .line 153
    iget-object v0, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->mBackgroundDrawThread:Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$MyHandlerThread;

    iget-object v1, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->mBrushSizes:[I

    aget v1, v1, v3

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->mPreview:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$MyHandlerThread;->setRadius(FI)V

    .line 155
    iget-object v0, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->mLensButton:Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;

    invoke-virtual {v0, p0}, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    iget-object v0, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->mGallery:Lcom/aviary/android/feather/widget/AviaryGallery;

    invoke-virtual {v0, p0}, Lcom/aviary/android/feather/widget/AviaryGallery;->setOnItemsScrollListener(Lcom/aviary/android/feather/widget/AviaryGallery$OnItemsScrollListener;)V

    .line 158
    iget-object v0, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    check-cast v0, Lcom/aviary/android/feather/widget/ImageViewSpotDraw;

    invoke-virtual {v0, p0}, Lcom/aviary/android/feather/widget/ImageViewSpotDraw;->setOnDrawStartListener(Lcom/aviary/android/feather/widget/ImageViewSpotDraw$OnDrawListener;)V

    .line 160
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 161
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->contentReady()V

    .line 162
    return-void
.end method

.method public onCancelled()V
    .locals 0

    .prologue
    .line 223
    invoke-super {p0}, Lcom/aviary/android/feather/effects/AbstractContentPanel;->onCancelled()V

    .line 224
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 172
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 174
    .local v0, "id":I
    iget-object v1, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->mLensButton:Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;

    invoke-virtual {v1}, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 175
    iget-object v1, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    check-cast v1, Lcom/aviary/android/feather/widget/ImageViewSpotDraw;

    invoke-virtual {v1}, Lcom/aviary/android/feather/widget/ImageViewSpotDraw;->getDrawMode()Lcom/aviary/android/feather/widget/ImageViewSpotDraw$TouchMode;

    move-result-object v1

    sget-object v2, Lcom/aviary/android/feather/widget/ImageViewSpotDraw$TouchMode;->DRAW:Lcom/aviary/android/feather/widget/ImageViewSpotDraw$TouchMode;

    if-ne v1, v2, :cond_1

    sget-object v1, Lcom/aviary/android/feather/widget/ImageViewSpotDraw$TouchMode;->IMAGE:Lcom/aviary/android/feather/widget/ImageViewSpotDraw$TouchMode;

    :goto_0
    invoke-direct {p0, v1}, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->setSelectedTool(Lcom/aviary/android/feather/widget/ImageViewSpotDraw$TouchMode;)V

    .line 177
    :cond_0
    return-void

    .line 175
    :cond_1
    sget-object v1, Lcom/aviary/android/feather/widget/ImageViewSpotDraw$TouchMode;->DRAW:Lcom/aviary/android/feather/widget/ImageViewSpotDraw$TouchMode;

    goto :goto_0
.end method

.method public onCreate(Landroid/graphics/Bitmap;Landroid/os/Bundle;)V
    .locals 9
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "options"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/high16 v4, 0x42c80000    # 100.0f

    .line 104
    invoke-super {p0, p1, p2}, Lcom/aviary/android/feather/effects/AbstractContentPanel;->onCreate(Landroid/graphics/Bitmap;Landroid/os/Bundle;)V

    .line 105
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->getContext()Lcom/aviary/android/feather/library/services/IAviaryController;

    move-result-object v2

    const-class v3, Lcom/aviary/android/feather/library/services/ConfigService;

    invoke-interface {v2, v3}, Lcom/aviary/android/feather/library/services/IAviaryController;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aviary/android/feather/library/services/ConfigService;

    .line 107
    .local v0, "config":Lcom/aviary/android/feather/library/services/ConfigService;
    sget v2, Lcom/aviary/android/feather/R$integer;->aviary_spot_brush_index:I

    invoke-virtual {v0, v2}, Lcom/aviary/android/feather/library/services/ConfigService;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->mBrushSizeIndex:I

    .line 108
    sget v2, Lcom/aviary/android/feather/R$array;->aviary_spot_brush_sizes:I

    invoke-virtual {v0, v2}, Lcom/aviary/android/feather/library/services/ConfigService;->getSizeArray(I)[I

    move-result-object v2

    iput-object v2, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->mBrushSizes:[I

    .line 109
    iget-object v2, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->mBrushSizes:[I

    iget v3, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->mBrushSizeIndex:I

    aget v2, v2, v3

    iput v2, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->mBrushSize:I

    .line 111
    iget-object v2, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->mBrushSizes:[I

    aget v2, v2, v7

    iput v2, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->minBrushSize:I

    .line 112
    iget-object v2, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->mBrushSizes:[I

    iget-object v3, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->mBrushSizes:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aget v2, v2, v3

    iput v2, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->maxBrushSize:I

    .line 114
    sget v2, Lcom/aviary/android/feather/R$integer;->aviary_spot_gallery_item_min_size:I

    invoke-virtual {v0, v2}, Lcom/aviary/android/feather/library/services/ConfigService;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    iput v2, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->minRadiusSize:F

    .line 115
    sget v2, Lcom/aviary/android/feather/R$integer;->aviary_spot_gallery_item_max_size:I

    invoke-virtual {v0, v2}, Lcom/aviary/android/feather/library/services/ConfigService;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    iput v2, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->maxRadiusSize:F

    .line 117
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->getContentView()Landroid/view/View;

    move-result-object v2

    sget v3, Lcom/aviary/android/feather/R$id;->aviary_lens_button:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;

    iput-object v2, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->mLensButton:Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;

    .line 119
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->getContentView()Landroid/view/View;

    move-result-object v2

    sget v3, Lcom/aviary/android/feather/R$id;->image:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/aviary/android/feather/widget/ImageViewSpotDraw;

    iput-object v2, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    .line 120
    iget-object v2, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    check-cast v2, Lcom/aviary/android/feather/widget/ImageViewSpotDraw;

    iget v3, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->mBrushSize:I

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/aviary/android/feather/widget/ImageViewSpotDraw;->setBrushSize(F)V

    .line 121
    iget-object v2, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    check-cast v2, Lcom/aviary/android/feather/widget/ImageViewSpotDraw;

    iget-boolean v3, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->mLimitDrawArea:Z

    if-eqz v3, :cond_0

    const-wide v3, 0x408f400000000000L    # 1000.0

    :goto_0
    invoke-virtual {v2, v3, v4}, Lcom/aviary/android/feather/widget/ImageViewSpotDraw;->setDrawLimit(D)V

    .line 122
    iget-object v2, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    check-cast v2, Lcom/aviary/android/feather/widget/ImageViewSpotDraw;

    sget-object v3, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$DisplayType;->FIT_IF_BIGGER:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$DisplayType;

    invoke-virtual {v2, v3}, Lcom/aviary/android/feather/widget/ImageViewSpotDraw;->setDisplayType(Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$DisplayType;)V

    .line 124
    iget-object v2, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->mBitmap:Landroid/graphics/Bitmap;

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3}, Lcom/aviary/android/feather/library/utils/BitmapUtils;->copy(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->mPreview:Landroid/graphics/Bitmap;

    .line 127
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->getContext()Lcom/aviary/android/feather/library/services/IAviaryController;

    move-result-object v2

    invoke-interface {v2}, Lcom/aviary/android/feather/library/services/IAviaryController;->getCurrentImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    .line 128
    .local v1, "current":Landroid/graphics/Matrix;
    iget-object v2, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    iget-object v3, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->mPreview:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    const/high16 v5, -0x40800000    # -1.0f

    const/high16 v6, 0x41000000    # 8.0f

    invoke-virtual {v2, v3, v4, v5, v6}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->setImageBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;FF)V

    .line 131
    new-instance v2, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$MyHandlerThread;

    const-string/jumbo v3, "filter-thread"

    invoke-direct {v2, p0, v3, v8}, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$MyHandlerThread;-><init>(Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;Ljava/lang/String;I)V

    iput-object v2, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->mBackgroundDrawThread:Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$MyHandlerThread;

    .line 133
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->getOptionView()Landroid/view/ViewGroup;

    move-result-object v2

    sget v3, Lcom/aviary/android/feather/R$id;->aviary_disable_status:I

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->mDisabledStatusView:Landroid/view/View;

    .line 136
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->getOptionView()Landroid/view/ViewGroup;

    move-result-object v2

    sget v3, Lcom/aviary/android/feather/R$id;->aviary_gallery:I

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/aviary/android/feather/widget/AviaryGallery;

    iput-object v2, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->mGallery:Lcom/aviary/android/feather/widget/AviaryGallery;

    .line 137
    iget-object v2, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->mGallery:Lcom/aviary/android/feather/widget/AviaryGallery;

    iget v3, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->mBrushSizeIndex:I

    invoke-virtual {v2, v3}, Lcom/aviary/android/feather/widget/AviaryGallery;->setDefaultPosition(I)V

    .line 138
    iget-object v2, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->mGallery:Lcom/aviary/android/feather/widget/AviaryGallery;

    invoke-virtual {v2, v8}, Lcom/aviary/android/feather/widget/AviaryGallery;->setAutoSelectChild(Z)V

    .line 139
    iget-object v2, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->mGallery:Lcom/aviary/android/feather/widget/AviaryGallery;

    invoke-virtual {v2, v7}, Lcom/aviary/android/feather/widget/AviaryGallery;->setCallbackDuringFling(Z)V

    .line 140
    iget-object v2, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->mGallery:Lcom/aviary/android/feather/widget/AviaryGallery;

    new-instance v3, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$GalleryAdapter;

    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->getContext()Lcom/aviary/android/feather/library/services/IAviaryController;

    move-result-object v4

    invoke-interface {v4}, Lcom/aviary/android/feather/library/services/IAviaryController;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->mBrushSizes:[I

    invoke-direct {v3, p0, v4, v5}, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$GalleryAdapter;-><init>(Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;Landroid/content/Context;[I)V

    invoke-virtual {v2, v3}, Lcom/aviary/android/feather/widget/AviaryGallery;->setAdapter(Landroid/widget/Adapter;)V

    .line 141
    iget v2, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->mBrushSizeIndex:I

    iput v2, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->mSelectedPosition:I

    .line 142
    return-void

    .line 121
    .end local v1    # "current":Landroid/graphics/Matrix;
    :cond_0
    const-wide/16 v3, 0x0

    goto :goto_0
.end method

.method public onDeactivate()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 187
    iget-object v0, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->mLensButton:Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    iget-object v0, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->mGallery:Lcom/aviary/android/feather/widget/AviaryGallery;

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/widget/AviaryGallery;->setOnItemsScrollListener(Lcom/aviary/android/feather/widget/AviaryGallery$OnItemsScrollListener;)V

    .line 190
    iget-object v0, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    check-cast v0, Lcom/aviary/android/feather/widget/ImageViewSpotDraw;

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/widget/ImageViewSpotDraw;->setOnDrawStartListener(Lcom/aviary/android/feather/widget/ImageViewSpotDraw$OnDrawListener;)V

    .line 192
    iget-object v0, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->mBackgroundDrawThread:Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$MyHandlerThread;

    if-eqz v0, :cond_2

    .line 193
    iget-object v0, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->mBackgroundDrawThread:Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$MyHandlerThread;

    iget-object v0, v0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$MyHandlerThread;->mQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 195
    iget-object v0, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->mBackgroundDrawThread:Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$MyHandlerThread;

    iget-boolean v0, v0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$MyHandlerThread;->started:Z

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->mBackgroundDrawThread:Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$MyHandlerThread;

    invoke-virtual {v0}, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$MyHandlerThread;->pause()V

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->mBackgroundDrawThread:Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$MyHandlerThread;

    invoke-virtual {v0}, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$MyHandlerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 200
    iget-object v0, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->mBackgroundDrawThread:Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$MyHandlerThread;

    invoke-virtual {v0}, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$MyHandlerThread;->quit()V

    .line 201
    :cond_1
    iget-object v0, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->mBackgroundDrawThread:Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$MyHandlerThread;

    invoke-virtual {v0}, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$MyHandlerThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 206
    :cond_2
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->onProgressEnd()V

    .line 207
    invoke-super {p0}, Lcom/aviary/android/feather/effects/AbstractContentPanel;->onDeactivate()V

    .line 208
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 212
    invoke-super {p0}, Lcom/aviary/android/feather/effects/AbstractContentPanel;->onDestroy()V

    .line 213
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->mBackgroundDrawThread:Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$MyHandlerThread;

    .line 214
    iget-object v0, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    invoke-virtual {v0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->clear()V

    .line 216
    iget-object v0, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 219
    :cond_0
    return-void
.end method

.method protected onDispose()V
    .locals 1

    .prologue
    .line 166
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->mContentReadyListener:Lcom/aviary/android/feather/effects/AbstractPanel$OnContentReadyListener;

    .line 167
    invoke-super {p0}, Lcom/aviary/android/feather/effects/AbstractContentPanel;->onDispose()V

    .line 168
    return-void
.end method

.method public onDrawEnd()V
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->mBackgroundDrawThread:Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$MyHandlerThread;

    invoke-virtual {v0}, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$MyHandlerThread;->pathEnd()V

    .line 252
    return-void
.end method

.method public onDrawStart([FI)V
    .locals 4
    .param p1, "points"    # [F
    .param p2, "radius"    # I

    .prologue
    const/4 v3, 0x1

    .line 236
    invoke-static {v3, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 237
    iget-object v0, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->mBackgroundDrawThread:Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$MyHandlerThread;

    int-to-float v1, p2

    iget-object v2, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->mPreview:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$MyHandlerThread;->pathStart(FI)V

    .line 238
    iget-object v0, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->mBackgroundDrawThread:Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$MyHandlerThread;

    invoke-virtual {v0, p1}, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$MyHandlerThread;->moveTo([F)V

    .line 239
    iget-object v0, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->mBackgroundDrawThread:Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$MyHandlerThread;

    invoke-virtual {v0, p1}, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$MyHandlerThread;->lineTo([F)V

    .line 241
    invoke-virtual {p0, v3}, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->setIsChanged(Z)V

    .line 242
    return-void
.end method

.method public onDrawing([FI)V
    .locals 1
    .param p1, "points"    # [F
    .param p2, "radius"    # I

    .prologue
    .line 246
    iget-object v0, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->mBackgroundDrawThread:Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$MyHandlerThread;

    invoke-virtual {v0, p1}, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$MyHandlerThread;->quadTo([F)V

    .line 247
    return-void
.end method

.method protected onGenerateResult()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 256
    iget-object v1, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->mLogger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onGenerateResult: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->mBackgroundDrawThread:Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$MyHandlerThread;

    invoke-virtual {v4}, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$MyHandlerThread;->isCompleted()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->mBackgroundDrawThread:Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$MyHandlerThread;

    invoke-virtual {v4}, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$MyHandlerThread;->isAlive()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-interface {v1, v2}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 258
    iget-object v1, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->mBackgroundDrawThread:Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$MyHandlerThread;

    invoke-virtual {v1}, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$MyHandlerThread;->isCompleted()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->mBackgroundDrawThread:Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$MyHandlerThread;

    invoke-virtual {v1}, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$MyHandlerThread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 259
    new-instance v0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$GenerateResultTask;

    invoke-direct {v0, p0}, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$GenerateResultTask;-><init>(Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;)V

    .line 260
    .local v0, "task":Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$GenerateResultTask;
    new-array v1, v5, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$GenerateResultTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 264
    .end local v0    # "task":Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$GenerateResultTask;
    :goto_0
    return-void

    .line 262
    :cond_0
    iget-object v1, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->mPreview:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->mActions:Lcom/aviary/android/feather/headless/moa/MoaActionList;

    invoke-virtual {p0, v1, v2}, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->onComplete(Landroid/graphics/Bitmap;Lcom/aviary/android/feather/headless/moa/MoaActionList;)V

    goto :goto_0
.end method

.method public onScroll(Lcom/aviary/android/feather/widget/AviaryAdapterView;Landroid/view/View;IJ)V
    .locals 1
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aviary/android/feather/widget/AviaryAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 623
    .local p1, "parent":Lcom/aviary/android/feather/widget/AviaryAdapterView;, "Lcom/aviary/android/feather/widget/AviaryAdapterView<*>;"
    iget-object v0, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->mBrushSizes:[I

    aget v0, v0, p3

    invoke-direct {p0, v0}, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->updateSizePreview(I)V

    .line 624
    return-void
.end method

.method public onScrollFinished(Lcom/aviary/android/feather/widget/AviaryAdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aviary/android/feather/widget/AviaryAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 628
    .local p1, "parent":Lcom/aviary/android/feather/widget/AviaryAdapterView;, "Lcom/aviary/android/feather/widget/AviaryAdapterView<*>;"
    iget-object v0, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->mBrushSizes:[I

    aget v0, v0, p3

    iput v0, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->mBrushSize:I

    .line 630
    iget-object v0, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    check-cast v0, Lcom/aviary/android/feather/widget/ImageViewSpotDraw;

    iget v1, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->mBrushSize:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/widget/ImageViewSpotDraw;->setBrushSize(F)V

    .line 631
    sget-object v0, Lcom/aviary/android/feather/widget/ImageViewSpotDraw$TouchMode;->DRAW:Lcom/aviary/android/feather/widget/ImageViewSpotDraw$TouchMode;

    invoke-direct {p0, v0}, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->setSelectedTool(Lcom/aviary/android/feather/widget/ImageViewSpotDraw$TouchMode;)V

    .line 632
    return-void
.end method

.method public onScrollStarted(Lcom/aviary/android/feather/widget/AviaryAdapterView;Landroid/view/View;IJ)V
    .locals 1
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aviary/android/feather/widget/AviaryAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 617
    .local p1, "parent":Lcom/aviary/android/feather/widget/AviaryAdapterView;, "Lcom/aviary/android/feather/widget/AviaryAdapterView<*>;"
    iget-object v0, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->mBrushSizes:[I

    aget v0, v0, p3

    invoke-direct {p0, v0}, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->showSizePreview(I)V

    .line 618
    sget-object v0, Lcom/aviary/android/feather/widget/ImageViewSpotDraw$TouchMode;->DRAW:Lcom/aviary/android/feather/widget/ImageViewSpotDraw$TouchMode;

    invoke-direct {p0, v0}, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->setSelectedTool(Lcom/aviary/android/feather/widget/ImageViewSpotDraw$TouchMode;)V

    .line 619
    return-void
.end method

.method public bridge synthetic setEnabled(Z)V
    .locals 0

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/aviary/android/feather/effects/AbstractContentPanel;->setEnabled(Z)V

    return-void
.end method

.method public setPanelEnabled(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 268
    iget-object v0, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->mOptionView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->mOptionView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->mOptionView:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 272
    if-eqz p1, :cond_1

    .line 273
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->getContext()Lcom/aviary/android/feather/library/services/IAviaryController;

    move-result-object v0

    invoke-interface {v0}, Lcom/aviary/android/feather/library/services/IAviaryController;->restoreToolbarTitle()V

    .line 278
    :goto_0
    iget-object v1, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->mDisabledStatusView:Landroid/view/View;

    if-eqz p1, :cond_2

    const/4 v0, 0x4

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 281
    :cond_0
    return-void

    .line 275
    :cond_1
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->getContext()Lcom/aviary/android/feather/library/services/IAviaryController;

    move-result-object v0

    sget v1, Lcom/aviary/android/feather/R$string;->feather_zoom_mode:I

    invoke-interface {v0, v1}, Lcom/aviary/android/feather/library/services/IAviaryController;->setToolbarTitle(I)V

    goto :goto_0

    .line 278
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
