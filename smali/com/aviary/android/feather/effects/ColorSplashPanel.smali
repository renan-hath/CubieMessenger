.class public Lcom/aviary/android/feather/effects/ColorSplashPanel;
.super Lcom/aviary/android/feather/effects/AbstractContentPanel;
.source "ColorSplashPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/aviary/android/feather/widget/AviaryHighlightImageButton$OnCheckedChangeListener;
.implements Lcom/aviary/android/feather/widget/ImageViewSpotDraw$OnDrawListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aviary/android/feather/effects/ColorSplashPanel$GenerateResultTask;,
        Lcom/aviary/android/feather/effects/ColorSplashPanel$BackgroundDrawThread;,
        Lcom/aviary/android/feather/effects/ColorSplashPanel$DrawQueue;
    }
.end annotation


# static fields
.field static BRUSH_MULTIPLIER:D


# instance fields
.field mActions:Lcom/aviary/android/feather/headless/moa/MoaActionList;

.field private mBackgroundDrawThread:Lcom/aviary/android/feather/effects/ColorSplashPanel$BackgroundDrawThread;

.field private mBrushType:Lcom/aviary/android/feather/headless/filters/NativeToolFilter$ColorSplashBrushMode;

.field private mCurrent:Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;

.field private mDisabledStatusView:Landroid/view/View;

.field private mErase:Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;

.field private mFilter:Lcom/aviary/android/feather/library/filters/ColorSplashFilter;

.field private mFree:Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;

.field private mLensButton:Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;

.field private mSmart:Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 55
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    sput-wide v0, Lcom/aviary/android/feather/effects/ColorSplashPanel;->BRUSH_MULTIPLIER:D

    return-void
.end method

.method public constructor <init>(Lcom/aviary/android/feather/library/services/IAviaryController;Lcom/aviary/android/feather/library/content/ToolEntry;)V
    .locals 1
    .param p1, "context"    # Lcom/aviary/android/feather/library/services/IAviaryController;
    .param p2, "entry"    # Lcom/aviary/android/feather/library/content/ToolEntry;

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/aviary/android/feather/effects/AbstractContentPanel;-><init>(Lcom/aviary/android/feather/library/services/IAviaryController;Lcom/aviary/android/feather/library/content/ToolEntry;)V

    .line 53
    sget-object v0, Lcom/aviary/android/feather/headless/filters/NativeToolFilter$ColorSplashBrushMode;->Free:Lcom/aviary/android/feather/headless/filters/NativeToolFilter$ColorSplashBrushMode;

    iput-object v0, p0, Lcom/aviary/android/feather/effects/ColorSplashPanel;->mBrushType:Lcom/aviary/android/feather/headless/filters/NativeToolFilter$ColorSplashBrushMode;

    .line 57
    invoke-static {}, Lcom/aviary/android/feather/headless/moa/MoaActionFactory;->actionList()Lcom/aviary/android/feather/headless/moa/MoaActionList;

    move-result-object v0

    iput-object v0, p0, Lcom/aviary/android/feather/effects/ColorSplashPanel;->mActions:Lcom/aviary/android/feather/headless/moa/MoaActionList;

    .line 61
    return-void
.end method

.method static synthetic access$000(Lcom/aviary/android/feather/effects/ColorSplashPanel;)Lcom/aviary/android/feather/library/filters/ColorSplashFilter;
    .locals 1
    .param p0, "x0"    # Lcom/aviary/android/feather/effects/ColorSplashPanel;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/aviary/android/feather/effects/ColorSplashPanel;->mFilter:Lcom/aviary/android/feather/library/filters/ColorSplashFilter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/aviary/android/feather/effects/ColorSplashPanel;)Lcom/aviary/android/feather/effects/ColorSplashPanel$BackgroundDrawThread;
    .locals 1
    .param p0, "x0"    # Lcom/aviary/android/feather/effects/ColorSplashPanel;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/aviary/android/feather/effects/ColorSplashPanel;->mBackgroundDrawThread:Lcom/aviary/android/feather/effects/ColorSplashPanel$BackgroundDrawThread;

    return-object v0
.end method

.method private setSelectedTool(Lcom/aviary/android/feather/widget/ImageViewSpotDraw$TouchMode;)V
    .locals 4
    .param p1, "which"    # Lcom/aviary/android/feather/widget/ImageViewSpotDraw$TouchMode;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 174
    iget-object v0, p0, Lcom/aviary/android/feather/effects/ColorSplashPanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    check-cast v0, Lcom/aviary/android/feather/widget/ImageViewSpotDraw;

    invoke-virtual {v0, p1}, Lcom/aviary/android/feather/widget/ImageViewSpotDraw;->setDrawMode(Lcom/aviary/android/feather/widget/ImageViewSpotDraw$TouchMode;)V

    .line 175
    iget-object v3, p0, Lcom/aviary/android/feather/effects/ColorSplashPanel;->mLensButton:Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;

    sget-object v0, Lcom/aviary/android/feather/widget/ImageViewSpotDraw$TouchMode;->IMAGE:Lcom/aviary/android/feather/widget/ImageViewSpotDraw$TouchMode;

    if-ne p1, v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->setSelected(Z)V

    .line 176
    sget-object v0, Lcom/aviary/android/feather/widget/ImageViewSpotDraw$TouchMode;->IMAGE:Lcom/aviary/android/feather/widget/ImageViewSpotDraw$TouchMode;

    if-eq p1, v0, :cond_1

    :goto_1
    invoke-virtual {p0, v1}, Lcom/aviary/android/feather/effects/ColorSplashPanel;->setPanelEnabled(Z)V

    .line 177
    return-void

    :cond_0
    move v0, v2

    .line 175
    goto :goto_0

    :cond_1
    move v1, v2

    .line 176
    goto :goto_1
.end method


# virtual methods
.method protected createFilter()Lcom/aviary/android/feather/library/filters/ColorSplashFilter;
    .locals 1

    .prologue
    .line 278
    sget-object v0, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->COLOR_SPLASH:Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    invoke-static {v0}, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory;->get(Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;)Lcom/aviary/android/feather/headless/filters/IFilter;

    move-result-object v0

    check-cast v0, Lcom/aviary/android/feather/library/filters/ColorSplashFilter;

    return-object v0
.end method

.method protected generateContentView(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    .line 283
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
    .line 288
    sget v0, Lcom/aviary/android/feather/R$layout;->aviary_panel_colorsplash:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method public onActivate()V
    .locals 2

    .prologue
    .line 106
    invoke-super {p0}, Lcom/aviary/android/feather/effects/AbstractContentPanel;->onActivate()V

    .line 108
    iget-object v0, p0, Lcom/aviary/android/feather/effects/ColorSplashPanel;->mFree:Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;

    invoke-virtual {v0, p0}, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->setOnCheckedChangeListener(Lcom/aviary/android/feather/widget/AviaryHighlightImageButton$OnCheckedChangeListener;)V

    .line 109
    iget-object v0, p0, Lcom/aviary/android/feather/effects/ColorSplashPanel;->mFree:Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;

    invoke-virtual {v0}, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aviary/android/feather/effects/ColorSplashPanel;->mFree:Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;

    iput-object v0, p0, Lcom/aviary/android/feather/effects/ColorSplashPanel;->mCurrent:Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/aviary/android/feather/effects/ColorSplashPanel;->mSmart:Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;

    invoke-virtual {v0, p0}, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->setOnCheckedChangeListener(Lcom/aviary/android/feather/widget/AviaryHighlightImageButton$OnCheckedChangeListener;)V

    .line 112
    iget-object v0, p0, Lcom/aviary/android/feather/effects/ColorSplashPanel;->mSmart:Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;

    invoke-virtual {v0}, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aviary/android/feather/effects/ColorSplashPanel;->mSmart:Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;

    iput-object v0, p0, Lcom/aviary/android/feather/effects/ColorSplashPanel;->mCurrent:Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;

    .line 114
    :cond_1
    iget-object v0, p0, Lcom/aviary/android/feather/effects/ColorSplashPanel;->mErase:Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;

    invoke-virtual {v0, p0}, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->setOnCheckedChangeListener(Lcom/aviary/android/feather/widget/AviaryHighlightImageButton$OnCheckedChangeListener;)V

    .line 115
    iget-object v0, p0, Lcom/aviary/android/feather/effects/ColorSplashPanel;->mErase:Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;

    invoke-virtual {v0}, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/aviary/android/feather/effects/ColorSplashPanel;->mErase:Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;

    iput-object v0, p0, Lcom/aviary/android/feather/effects/ColorSplashPanel;->mCurrent:Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;

    .line 117
    :cond_2
    iget-object v0, p0, Lcom/aviary/android/feather/effects/ColorSplashPanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    check-cast v0, Lcom/aviary/android/feather/widget/ImageViewSpotDraw;

    invoke-virtual {v0, p0}, Lcom/aviary/android/feather/widget/ImageViewSpotDraw;->setOnDrawStartListener(Lcom/aviary/android/feather/widget/ImageViewSpotDraw$OnDrawListener;)V

    .line 119
    iget-object v0, p0, Lcom/aviary/android/feather/effects/ColorSplashPanel;->mBackgroundDrawThread:Lcom/aviary/android/feather/effects/ColorSplashPanel$BackgroundDrawThread;

    invoke-virtual {v0}, Lcom/aviary/android/feather/effects/ColorSplashPanel$BackgroundDrawThread;->start()V

    .line 121
    iget-object v0, p0, Lcom/aviary/android/feather/effects/ColorSplashPanel;->mLensButton:Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;

    invoke-virtual {v0, p0}, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/ColorSplashPanel;->getContentView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 124
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/ColorSplashPanel;->contentReady()V

    .line 125
    return-void
.end method

.method public onCancelled()V
    .locals 0

    .prologue
    .line 214
    invoke-super {p0}, Lcom/aviary/android/feather/effects/AbstractContentPanel;->onCancelled()V

    .line 215
    return-void
.end method

.method public onCheckedChanged(Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;ZZ)V
    .locals 4
    .param p1, "buttonView"    # Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;
    .param p2, "isChecked"    # Z
    .param p3, "fromUser"    # Z

    .prologue
    .line 147
    iget-object v1, p0, Lcom/aviary/android/feather/effects/ColorSplashPanel;->mCurrent:Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/aviary/android/feather/effects/ColorSplashPanel;->mCurrent:Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 148
    iget-object v1, p0, Lcom/aviary/android/feather/effects/ColorSplashPanel;->mCurrent:Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->setChecked(Z)V

    .line 150
    :cond_0
    iput-object p1, p0, Lcom/aviary/android/feather/effects/ColorSplashPanel;->mCurrent:Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;

    .line 152
    if-eqz p3, :cond_2

    if-eqz p2, :cond_2

    .line 153
    invoke-virtual {p1}, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->getId()I

    move-result v0

    .line 155
    .local v0, "id":I
    iget-object v1, p0, Lcom/aviary/android/feather/effects/ColorSplashPanel;->mFree:Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;

    invoke-virtual {v1}, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->getId()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 156
    sget-object v1, Lcom/aviary/android/feather/headless/filters/NativeToolFilter$ColorSplashBrushMode;->Free:Lcom/aviary/android/feather/headless/filters/NativeToolFilter$ColorSplashBrushMode;

    iput-object v1, p0, Lcom/aviary/android/feather/effects/ColorSplashPanel;->mBrushType:Lcom/aviary/android/feather/headless/filters/NativeToolFilter$ColorSplashBrushMode;

    .line 157
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->COLOR_SPLASH:Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    invoke-virtual {v2}, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->name()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": FreeBrushClicked"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/aviary/android/feather/library/tracking/Tracker;->recordTag(Ljava/lang/String;)Z

    .line 166
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/aviary/android/feather/effects/ColorSplashPanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    check-cast v1, Lcom/aviary/android/feather/widget/ImageViewSpotDraw;

    invoke-virtual {v1}, Lcom/aviary/android/feather/widget/ImageViewSpotDraw;->getDrawMode()Lcom/aviary/android/feather/widget/ImageViewSpotDraw$TouchMode;

    move-result-object v1

    sget-object v2, Lcom/aviary/android/feather/widget/ImageViewSpotDraw$TouchMode;->DRAW:Lcom/aviary/android/feather/widget/ImageViewSpotDraw$TouchMode;

    if-eq v1, v2, :cond_2

    .line 167
    sget-object v1, Lcom/aviary/android/feather/widget/ImageViewSpotDraw$TouchMode;->DRAW:Lcom/aviary/android/feather/widget/ImageViewSpotDraw$TouchMode;

    invoke-direct {p0, v1}, Lcom/aviary/android/feather/effects/ColorSplashPanel;->setSelectedTool(Lcom/aviary/android/feather/widget/ImageViewSpotDraw$TouchMode;)V

    .line 170
    .end local v0    # "id":I
    :cond_2
    return-void

    .line 158
    .restart local v0    # "id":I
    :cond_3
    iget-object v1, p0, Lcom/aviary/android/feather/effects/ColorSplashPanel;->mSmart:Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;

    invoke-virtual {v1}, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->getId()I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 159
    sget-object v1, Lcom/aviary/android/feather/headless/filters/NativeToolFilter$ColorSplashBrushMode;->Smart:Lcom/aviary/android/feather/headless/filters/NativeToolFilter$ColorSplashBrushMode;

    iput-object v1, p0, Lcom/aviary/android/feather/effects/ColorSplashPanel;->mBrushType:Lcom/aviary/android/feather/headless/filters/NativeToolFilter$ColorSplashBrushMode;

    .line 160
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->COLOR_SPLASH:Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    invoke-virtual {v2}, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->name()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": SmartBrushClicked"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/aviary/android/feather/library/tracking/Tracker;->recordTag(Ljava/lang/String;)Z

    goto :goto_0

    .line 161
    :cond_4
    iget-object v1, p0, Lcom/aviary/android/feather/effects/ColorSplashPanel;->mErase:Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;

    invoke-virtual {v1}, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 162
    sget-object v1, Lcom/aviary/android/feather/headless/filters/NativeToolFilter$ColorSplashBrushMode;->Erase:Lcom/aviary/android/feather/headless/filters/NativeToolFilter$ColorSplashBrushMode;

    iput-object v1, p0, Lcom/aviary/android/feather/effects/ColorSplashPanel;->mBrushType:Lcom/aviary/android/feather/headless/filters/NativeToolFilter$ColorSplashBrushMode;

    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->COLOR_SPLASH:Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    invoke-virtual {v2}, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->name()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": EraserClicked"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/aviary/android/feather/library/tracking/Tracker;->recordTag(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 138
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 140
    .local v0, "id":I
    iget-object v1, p0, Lcom/aviary/android/feather/effects/ColorSplashPanel;->mLensButton:Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;

    invoke-virtual {v1}, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 141
    iget-object v1, p0, Lcom/aviary/android/feather/effects/ColorSplashPanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    check-cast v1, Lcom/aviary/android/feather/widget/ImageViewSpotDraw;

    invoke-virtual {v1}, Lcom/aviary/android/feather/widget/ImageViewSpotDraw;->getDrawMode()Lcom/aviary/android/feather/widget/ImageViewSpotDraw$TouchMode;

    move-result-object v1

    sget-object v2, Lcom/aviary/android/feather/widget/ImageViewSpotDraw$TouchMode;->DRAW:Lcom/aviary/android/feather/widget/ImageViewSpotDraw$TouchMode;

    if-ne v1, v2, :cond_1

    sget-object v1, Lcom/aviary/android/feather/widget/ImageViewSpotDraw$TouchMode;->IMAGE:Lcom/aviary/android/feather/widget/ImageViewSpotDraw$TouchMode;

    :goto_0
    invoke-direct {p0, v1}, Lcom/aviary/android/feather/effects/ColorSplashPanel;->setSelectedTool(Lcom/aviary/android/feather/widget/ImageViewSpotDraw$TouchMode;)V

    .line 143
    :cond_0
    return-void

    .line 141
    :cond_1
    sget-object v1, Lcom/aviary/android/feather/widget/ImageViewSpotDraw$TouchMode;->DRAW:Lcom/aviary/android/feather/widget/ImageViewSpotDraw$TouchMode;

    goto :goto_0
.end method

.method public onCreate(Landroid/graphics/Bitmap;Landroid/os/Bundle;)V
    .locals 10
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "options"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 65
    invoke-super {p0, p1, p2}, Lcom/aviary/android/feather/effects/AbstractContentPanel;->onCreate(Landroid/graphics/Bitmap;Landroid/os/Bundle;)V

    .line 66
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/ColorSplashPanel;->getContext()Lcom/aviary/android/feather/library/services/IAviaryController;

    move-result-object v3

    const-class v4, Lcom/aviary/android/feather/library/services/ConfigService;

    invoke-interface {v3, v4}, Lcom/aviary/android/feather/library/services/IAviaryController;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aviary/android/feather/library/services/ConfigService;

    .line 68
    .local v1, "config":Lcom/aviary/android/feather/library/services/ConfigService;
    sget v3, Lcom/aviary/android/feather/R$dimen;->aviary_color_splash_brush_size:I

    invoke-virtual {v1, v3}, Lcom/aviary/android/feather/library/services/ConfigService;->getDimensionPixelSize(I)I

    move-result v0

    .line 70
    .local v0, "brushSize":I
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/ColorSplashPanel;->getContentView()Landroid/view/View;

    move-result-object v3

    sget v4, Lcom/aviary/android/feather/R$id;->aviary_lens_button:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;

    iput-object v3, p0, Lcom/aviary/android/feather/effects/ColorSplashPanel;->mLensButton:Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;

    .line 71
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/ColorSplashPanel;->getOptionView()Landroid/view/ViewGroup;

    move-result-object v3

    sget v4, Lcom/aviary/android/feather/R$id;->aviary_button1:I

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;

    iput-object v3, p0, Lcom/aviary/android/feather/effects/ColorSplashPanel;->mFree:Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;

    .line 72
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/ColorSplashPanel;->getOptionView()Landroid/view/ViewGroup;

    move-result-object v3

    sget v4, Lcom/aviary/android/feather/R$id;->aviary_button2:I

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;

    iput-object v3, p0, Lcom/aviary/android/feather/effects/ColorSplashPanel;->mSmart:Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;

    .line 73
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/ColorSplashPanel;->getOptionView()Landroid/view/ViewGroup;

    move-result-object v3

    sget v4, Lcom/aviary/android/feather/R$id;->aviary_button3:I

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;

    iput-object v3, p0, Lcom/aviary/android/feather/effects/ColorSplashPanel;->mErase:Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;

    .line 75
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/ColorSplashPanel;->getContentView()Landroid/view/View;

    move-result-object v3

    sget v4, Lcom/aviary/android/feather/R$id;->image:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/aviary/android/feather/widget/ImageViewSpotDraw;

    iput-object v3, p0, Lcom/aviary/android/feather/effects/ColorSplashPanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    .line 76
    iget-object v3, p0, Lcom/aviary/android/feather/effects/ColorSplashPanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    check-cast v3, Lcom/aviary/android/feather/widget/ImageViewSpotDraw;

    int-to-double v4, v0

    sget-wide v6, Lcom/aviary/android/feather/effects/ColorSplashPanel;->BRUSH_MULTIPLIER:D

    mul-double/2addr v4, v6

    double-to-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Lcom/aviary/android/feather/widget/ImageViewSpotDraw;->setBrushSize(F)V

    .line 77
    iget-object v3, p0, Lcom/aviary/android/feather/effects/ColorSplashPanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    check-cast v3, Lcom/aviary/android/feather/widget/ImageViewSpotDraw;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/aviary/android/feather/widget/ImageViewSpotDraw;->setDrawLimit(D)V

    .line 78
    iget-object v3, p0, Lcom/aviary/android/feather/effects/ColorSplashPanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    check-cast v3, Lcom/aviary/android/feather/widget/ImageViewSpotDraw;

    invoke-virtual {v3, v8}, Lcom/aviary/android/feather/widget/ImageViewSpotDraw;->setPaintEnabled(Z)V

    .line 79
    iget-object v3, p0, Lcom/aviary/android/feather/effects/ColorSplashPanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    check-cast v3, Lcom/aviary/android/feather/widget/ImageViewSpotDraw;

    sget-object v4, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$DisplayType;->FIT_IF_BIGGER:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$DisplayType;

    invoke-virtual {v3, v4}, Lcom/aviary/android/feather/widget/ImageViewSpotDraw;->setDisplayType(Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$DisplayType;)V

    .line 81
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/ColorSplashPanel;->getOptionView()Landroid/view/ViewGroup;

    move-result-object v3

    sget v4, Lcom/aviary/android/feather/R$id;->aviary_disable_status:I

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/aviary/android/feather/effects/ColorSplashPanel;->mDisabledStatusView:Landroid/view/View;

    .line 83
    iget-object v3, p0, Lcom/aviary/android/feather/effects/ColorSplashPanel;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/aviary/android/feather/effects/ColorSplashPanel;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/aviary/android/feather/effects/ColorSplashPanel;->mPreview:Landroid/graphics/Bitmap;

    .line 84
    iget-object v3, p0, Lcom/aviary/android/feather/effects/ColorSplashPanel;->mPreview:Landroid/graphics/Bitmap;

    const/high16 v4, -0x1000000

    invoke-virtual {v3, v4}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 86
    new-instance v3, Lcom/aviary/android/feather/effects/ColorSplashPanel$BackgroundDrawThread;

    const-string/jumbo v4, "filter-thread"

    const/4 v5, 0x5

    invoke-direct {v3, p0, v4, v5}, Lcom/aviary/android/feather/effects/ColorSplashPanel$BackgroundDrawThread;-><init>(Lcom/aviary/android/feather/effects/ColorSplashPanel;Ljava/lang/String;I)V

    iput-object v3, p0, Lcom/aviary/android/feather/effects/ColorSplashPanel;->mBackgroundDrawThread:Lcom/aviary/android/feather/effects/ColorSplashPanel$BackgroundDrawThread;

    .line 89
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/ColorSplashPanel;->createFilter()Lcom/aviary/android/feather/library/filters/ColorSplashFilter;

    move-result-object v3

    iput-object v3, p0, Lcom/aviary/android/feather/effects/ColorSplashPanel;->mFilter:Lcom/aviary/android/feather/library/filters/ColorSplashFilter;

    .line 91
    iget-object v3, p0, Lcom/aviary/android/feather/effects/ColorSplashPanel;->mFilter:Lcom/aviary/android/feather/library/filters/ColorSplashFilter;

    iget-object v4, p0, Lcom/aviary/android/feather/effects/ColorSplashPanel;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/aviary/android/feather/effects/ColorSplashPanel;->mPreview:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4, v5}, Lcom/aviary/android/feather/library/filters/ColorSplashFilter;->init(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)I

    move-result v3

    if-nez v3, :cond_1

    .line 93
    iget-object v3, p0, Lcom/aviary/android/feather/effects/ColorSplashPanel;->mFilter:Lcom/aviary/android/feather/library/filters/ColorSplashFilter;

    invoke-virtual {v3}, Lcom/aviary/android/feather/library/filters/ColorSplashFilter;->renderPreview()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 94
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/ColorSplashPanel;->getContext()Lcom/aviary/android/feather/library/services/IAviaryController;

    move-result-object v3

    invoke-interface {v3}, Lcom/aviary/android/feather/library/services/IAviaryController;->getCurrentImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    .line 95
    .local v2, "current":Landroid/graphics/Matrix;
    iget-object v3, p0, Lcom/aviary/android/feather/effects/ColorSplashPanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    iget-object v4, p0, Lcom/aviary/android/feather/effects/ColorSplashPanel;->mPreview:Landroid/graphics/Bitmap;

    const/4 v5, 0x0

    const/high16 v6, -0x40800000    # -1.0f

    const/high16 v7, 0x41000000    # 8.0f

    invoke-virtual {v3, v4, v5, v6, v7}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->setImageBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;FF)V

    .line 102
    .end local v2    # "current":Landroid/graphics/Matrix;
    :goto_0
    return-void

    .line 97
    :cond_0
    iget-object v3, p0, Lcom/aviary/android/feather/effects/ColorSplashPanel;->mLogger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    new-array v4, v9, [Ljava/lang/Object;

    const-string/jumbo v5, "Failed to renderPreview"

    aput-object v5, v4, v8

    invoke-interface {v3, v4}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->error([Ljava/lang/Object;)V

    goto :goto_0

    .line 100
    :cond_1
    iget-object v3, p0, Lcom/aviary/android/feather/effects/ColorSplashPanel;->mLogger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    new-array v4, v9, [Ljava/lang/Object;

    const-string/jumbo v5, "Failed to initialize ColorSplashFilter"

    aput-object v5, v4, v8

    invoke-interface {v3, v4}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->error([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onDeactivate()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 182
    iget-object v0, p0, Lcom/aviary/android/feather/effects/ColorSplashPanel;->mFree:Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;

    invoke-virtual {v0, p0}, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->setOnCheckedChangeListener(Lcom/aviary/android/feather/widget/AviaryHighlightImageButton$OnCheckedChangeListener;)V

    .line 183
    iget-object v0, p0, Lcom/aviary/android/feather/effects/ColorSplashPanel;->mSmart:Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;

    invoke-virtual {v0, p0}, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->setOnCheckedChangeListener(Lcom/aviary/android/feather/widget/AviaryHighlightImageButton$OnCheckedChangeListener;)V

    .line 184
    iget-object v0, p0, Lcom/aviary/android/feather/effects/ColorSplashPanel;->mErase:Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;

    invoke-virtual {v0, p0}, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->setOnCheckedChangeListener(Lcom/aviary/android/feather/widget/AviaryHighlightImageButton$OnCheckedChangeListener;)V

    .line 185
    iget-object v0, p0, Lcom/aviary/android/feather/effects/ColorSplashPanel;->mLensButton:Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    iget-object v0, p0, Lcom/aviary/android/feather/effects/ColorSplashPanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    check-cast v0, Lcom/aviary/android/feather/widget/ImageViewSpotDraw;

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/widget/ImageViewSpotDraw;->setOnDrawStartListener(Lcom/aviary/android/feather/widget/ImageViewSpotDraw$OnDrawListener;)V

    .line 189
    iget-object v0, p0, Lcom/aviary/android/feather/effects/ColorSplashPanel;->mBackgroundDrawThread:Lcom/aviary/android/feather/effects/ColorSplashPanel$BackgroundDrawThread;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/aviary/android/feather/effects/ColorSplashPanel;->mBackgroundDrawThread:Lcom/aviary/android/feather/effects/ColorSplashPanel$BackgroundDrawThread;

    invoke-virtual {v0}, Lcom/aviary/android/feather/effects/ColorSplashPanel$BackgroundDrawThread;->clear()V

    .line 193
    iget-object v0, p0, Lcom/aviary/android/feather/effects/ColorSplashPanel;->mBackgroundDrawThread:Lcom/aviary/android/feather/effects/ColorSplashPanel$BackgroundDrawThread;

    invoke-virtual {v0}, Lcom/aviary/android/feather/effects/ColorSplashPanel$BackgroundDrawThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/aviary/android/feather/effects/ColorSplashPanel;->mBackgroundDrawThread:Lcom/aviary/android/feather/effects/ColorSplashPanel$BackgroundDrawThread;

    invoke-virtual {v0}, Lcom/aviary/android/feather/effects/ColorSplashPanel$BackgroundDrawThread;->quit()V

    .line 195
    :goto_0
    iget-object v0, p0, Lcom/aviary/android/feather/effects/ColorSplashPanel;->mBackgroundDrawThread:Lcom/aviary/android/feather/effects/ColorSplashPanel$BackgroundDrawThread;

    invoke-virtual {v0}, Lcom/aviary/android/feather/effects/ColorSplashPanel$BackgroundDrawThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/aviary/android/feather/effects/ColorSplashPanel;->mLogger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "isAlive..."

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->log([Ljava/lang/Object;)V

    goto :goto_0

    .line 201
    :cond_0
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/ColorSplashPanel;->onProgressEnd()V

    .line 202
    invoke-super {p0}, Lcom/aviary/android/feather/effects/AbstractContentPanel;->onDeactivate()V

    .line 203
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 207
    invoke-super {p0}, Lcom/aviary/android/feather/effects/AbstractContentPanel;->onDestroy()V

    .line 208
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aviary/android/feather/effects/ColorSplashPanel;->mBackgroundDrawThread:Lcom/aviary/android/feather/effects/ColorSplashPanel$BackgroundDrawThread;

    .line 209
    iget-object v0, p0, Lcom/aviary/android/feather/effects/ColorSplashPanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    invoke-virtual {v0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->clear()V

    .line 210
    return-void
.end method

.method protected onDispose()V
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aviary/android/feather/effects/ColorSplashPanel;->mContentReadyListener:Lcom/aviary/android/feather/effects/AbstractPanel$OnContentReadyListener;

    .line 132
    iget-object v0, p0, Lcom/aviary/android/feather/effects/ColorSplashPanel;->mFilter:Lcom/aviary/android/feather/library/filters/ColorSplashFilter;

    invoke-virtual {v0}, Lcom/aviary/android/feather/library/filters/ColorSplashFilter;->dispose()V

    .line 133
    invoke-super {p0}, Lcom/aviary/android/feather/effects/AbstractContentPanel;->onDispose()V

    .line 134
    return-void
.end method

.method public onDrawEnd()V
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/aviary/android/feather/effects/ColorSplashPanel;->mBackgroundDrawThread:Lcom/aviary/android/feather/effects/ColorSplashPanel$BackgroundDrawThread;

    invoke-virtual {v0}, Lcom/aviary/android/feather/effects/ColorSplashPanel$BackgroundDrawThread;->pathEnd()V

    .line 232
    return-void
.end method

.method public onDrawStart([FI)V
    .locals 6
    .param p1, "points"    # [F
    .param p2, "radius"    # I

    .prologue
    const/4 v5, 0x1

    .line 219
    invoke-static {v5, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 220
    iget-object v0, p0, Lcom/aviary/android/feather/effects/ColorSplashPanel;->mBackgroundDrawThread:Lcom/aviary/android/feather/effects/ColorSplashPanel$BackgroundDrawThread;

    int-to-double v1, p2

    sget-wide v3, Lcom/aviary/android/feather/effects/ColorSplashPanel;->BRUSH_MULTIPLIER:D

    div-double/2addr v1, v3

    double-to-int v1, v1

    iget-object v2, p0, Lcom/aviary/android/feather/effects/ColorSplashPanel;->mBrushType:Lcom/aviary/android/feather/headless/filters/NativeToolFilter$ColorSplashBrushMode;

    invoke-virtual {v0, v1, p1, v2}, Lcom/aviary/android/feather/effects/ColorSplashPanel$BackgroundDrawThread;->pathStart(I[FLcom/aviary/android/feather/headless/filters/NativeToolFilter$ColorSplashBrushMode;)V

    .line 221
    invoke-virtual {p0, v5}, Lcom/aviary/android/feather/effects/ColorSplashPanel;->setIsChanged(Z)V

    .line 222
    return-void
.end method

.method public onDrawing([FI)V
    .locals 1
    .param p1, "points"    # [F
    .param p2, "radius"    # I

    .prologue
    .line 226
    iget-object v0, p0, Lcom/aviary/android/feather/effects/ColorSplashPanel;->mBackgroundDrawThread:Lcom/aviary/android/feather/effects/ColorSplashPanel$BackgroundDrawThread;

    invoke-virtual {v0, p1}, Lcom/aviary/android/feather/effects/ColorSplashPanel$BackgroundDrawThread;->lineTo([F)V

    .line 227
    return-void
.end method

.method protected onGenerateResult()V
    .locals 3

    .prologue
    .line 236
    iget-object v1, p0, Lcom/aviary/android/feather/effects/ColorSplashPanel;->mBackgroundDrawThread:Lcom/aviary/android/feather/effects/ColorSplashPanel$BackgroundDrawThread;

    invoke-virtual {v1}, Lcom/aviary/android/feather/effects/ColorSplashPanel$BackgroundDrawThread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/aviary/android/feather/effects/ColorSplashPanel;->mBackgroundDrawThread:Lcom/aviary/android/feather/effects/ColorSplashPanel$BackgroundDrawThread;

    invoke-virtual {v1}, Lcom/aviary/android/feather/effects/ColorSplashPanel$BackgroundDrawThread;->isCompleted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 237
    iget-object v1, p0, Lcom/aviary/android/feather/effects/ColorSplashPanel;->mBackgroundDrawThread:Lcom/aviary/android/feather/effects/ColorSplashPanel$BackgroundDrawThread;

    invoke-virtual {v1}, Lcom/aviary/android/feather/effects/ColorSplashPanel$BackgroundDrawThread;->finish()V

    .line 238
    new-instance v0, Lcom/aviary/android/feather/effects/ColorSplashPanel$GenerateResultTask;

    invoke-direct {v0, p0}, Lcom/aviary/android/feather/effects/ColorSplashPanel$GenerateResultTask;-><init>(Lcom/aviary/android/feather/effects/ColorSplashPanel;)V

    .line 239
    .local v0, "task":Lcom/aviary/android/feather/effects/ColorSplashPanel$GenerateResultTask;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/effects/ColorSplashPanel$GenerateResultTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 243
    .end local v0    # "task":Lcom/aviary/android/feather/effects/ColorSplashPanel$GenerateResultTask;
    :goto_0
    return-void

    .line 241
    :cond_0
    iget-object v1, p0, Lcom/aviary/android/feather/effects/ColorSplashPanel;->mPreview:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/aviary/android/feather/effects/ColorSplashPanel;->mFilter:Lcom/aviary/android/feather/library/filters/ColorSplashFilter;

    invoke-virtual {v2}, Lcom/aviary/android/feather/library/filters/ColorSplashFilter;->getActions()Lcom/aviary/android/feather/headless/moa/MoaActionList;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/aviary/android/feather/effects/ColorSplashPanel;->onComplete(Landroid/graphics/Bitmap;Lcom/aviary/android/feather/headless/moa/MoaActionList;)V

    goto :goto_0
.end method

.method public bridge synthetic setEnabled(Z)V
    .locals 0

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/aviary/android/feather/effects/AbstractContentPanel;->setEnabled(Z)V

    return-void
.end method

.method public setPanelEnabled(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 250
    iget-object v0, p0, Lcom/aviary/android/feather/effects/ColorSplashPanel;->mOptionView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/aviary/android/feather/effects/ColorSplashPanel;->mOptionView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/aviary/android/feather/effects/ColorSplashPanel;->mOptionView:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 254
    if-eqz p1, :cond_1

    .line 255
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/ColorSplashPanel;->getContext()Lcom/aviary/android/feather/library/services/IAviaryController;

    move-result-object v0

    invoke-interface {v0}, Lcom/aviary/android/feather/library/services/IAviaryController;->restoreToolbarTitle()V

    .line 260
    :goto_0
    iget-object v1, p0, Lcom/aviary/android/feather/effects/ColorSplashPanel;->mDisabledStatusView:Landroid/view/View;

    if-eqz p1, :cond_2

    const/4 v0, 0x4

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 263
    :cond_0
    return-void

    .line 257
    :cond_1
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/ColorSplashPanel;->getContext()Lcom/aviary/android/feather/library/services/IAviaryController;

    move-result-object v0

    sget v1, Lcom/aviary/android/feather/R$string;->feather_zoom_mode:I

    invoke-interface {v0, v1}, Lcom/aviary/android/feather/library/services/IAviaryController;->setToolbarTitle(I)V

    goto :goto_0

    .line 260
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
