.class public Lcom/aviary/android/feather/effects/AdjustEffectPanel;
.super Lcom/aviary/android/feather/effects/AbstractContentPanel;
.source "AdjustEffectPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/aviary/android/feather/widget/AdjustImageView$OnResetListener;


# instance fields
.field isClosing:Z

.field private mAdjustImageView:Lcom/aviary/android/feather/widget/AdjustImageView;

.field private mButton1:Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;

.field private mButton2:Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;

.field private mButton3:Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;

.field private mButton4:Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;


# direct methods
.method public constructor <init>(Lcom/aviary/android/feather/library/services/IAviaryController;Lcom/aviary/android/feather/library/content/ToolEntry;Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;)V
    .locals 1
    .param p1, "context"    # Lcom/aviary/android/feather/library/services/IAviaryController;
    .param p2, "entry"    # Lcom/aviary/android/feather/library/content/ToolEntry;
    .param p3, "adjust"    # Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/aviary/android/feather/effects/AbstractContentPanel;-><init>(Lcom/aviary/android/feather/library/services/IAviaryController;Lcom/aviary/android/feather/library/content/ToolEntry;)V

    .line 35
    invoke-static {p3}, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory;->get(Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;)Lcom/aviary/android/feather/headless/filters/IFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/aviary/android/feather/effects/AdjustEffectPanel;->mFilter:Lcom/aviary/android/feather/headless/filters/IFilter;

    .line 36
    return-void
.end method


# virtual methods
.method protected generateContentView(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    .line 91
    sget v0, Lcom/aviary/android/feather/R$layout;->aviary_content_adjust:I

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
    .line 86
    sget v0, Lcom/aviary/android/feather/R$layout;->aviary_panel_adjust:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getIsChanged()Z
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 114
    iget-object v5, p0, Lcom/aviary/android/feather/effects/AdjustEffectPanel;->mLogger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    new-array v6, v4, [Ljava/lang/Object;

    const-string/jumbo v7, "getIsChanged"

    aput-object v7, v6, v3

    invoke-interface {v5, v6}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 116
    iget-object v5, p0, Lcom/aviary/android/feather/effects/AdjustEffectPanel;->mAdjustImageView:Lcom/aviary/android/feather/widget/AdjustImageView;

    invoke-virtual {v5}, Lcom/aviary/android/feather/widget/AdjustImageView;->getStraightenStarted()Z

    move-result v2

    .line 117
    .local v2, "straightenStarted":Z
    iget-object v5, p0, Lcom/aviary/android/feather/effects/AdjustEffectPanel;->mAdjustImageView:Lcom/aviary/android/feather/widget/AdjustImageView;

    invoke-virtual {v5}, Lcom/aviary/android/feather/widget/AdjustImageView;->getCurrentRotation()D

    move-result-wide v5

    double-to-int v1, v5

    .line 118
    .local v1, "rotation":I
    iget-object v5, p0, Lcom/aviary/android/feather/effects/AdjustEffectPanel;->mAdjustImageView:Lcom/aviary/android/feather/widget/AdjustImageView;

    invoke-virtual {v5}, Lcom/aviary/android/feather/widget/AdjustImageView;->getFlipType()I

    move-result v0

    .line 119
    .local v0, "flip_type":I
    if-nez v1, :cond_0

    sget-object v5, Lcom/aviary/android/feather/widget/AdjustImageView$FlipType;->FLIP_NONE:Lcom/aviary/android/feather/widget/AdjustImageView$FlipType;

    iget v5, v5, Lcom/aviary/android/feather/widget/AdjustImageView$FlipType;->nativeInt:I

    if-ne v0, v5, :cond_0

    if-eqz v2, :cond_1

    :cond_0
    move v3, v4

    :cond_1
    return v3
.end method

.method public onActivate()V
    .locals 2

    .prologue
    .line 53
    invoke-super {p0}, Lcom/aviary/android/feather/effects/AbstractContentPanel;->onActivate()V

    .line 55
    iget-object v0, p0, Lcom/aviary/android/feather/effects/AdjustEffectPanel;->mAdjustImageView:Lcom/aviary/android/feather/widget/AdjustImageView;

    iget-object v1, p0, Lcom/aviary/android/feather/effects/AdjustEffectPanel;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/widget/AdjustImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 56
    iget-object v0, p0, Lcom/aviary/android/feather/effects/AdjustEffectPanel;->mAdjustImageView:Lcom/aviary/android/feather/widget/AdjustImageView;

    invoke-virtual {v0, p0}, Lcom/aviary/android/feather/widget/AdjustImageView;->setOnResetListener(Lcom/aviary/android/feather/widget/AdjustImageView$OnResetListener;)V

    .line 58
    iget-object v0, p0, Lcom/aviary/android/feather/effects/AdjustEffectPanel;->mButton1:Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;

    invoke-virtual {v0, p0}, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    iget-object v0, p0, Lcom/aviary/android/feather/effects/AdjustEffectPanel;->mButton2:Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;

    invoke-virtual {v0, p0}, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    iget-object v0, p0, Lcom/aviary/android/feather/effects/AdjustEffectPanel;->mButton3:Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;

    invoke-virtual {v0, p0}, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    iget-object v0, p0, Lcom/aviary/android/feather/effects/AdjustEffectPanel;->mButton4:Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;

    invoke-virtual {v0, p0}, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/AdjustEffectPanel;->contentReady()V

    .line 65
    return-void
.end method

.method public onCancel()Z
    .locals 10

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 157
    iget-boolean v8, p0, Lcom/aviary/android/feather/effects/AdjustEffectPanel;->isClosing:Z

    if-eqz v8, :cond_0

    .line 172
    :goto_0
    return v6

    .line 159
    :cond_0
    iput-boolean v6, p0, Lcom/aviary/android/feather/effects/AdjustEffectPanel;->isClosing:Z

    .line 160
    invoke-virtual {p0, v7}, Lcom/aviary/android/feather/effects/AdjustEffectPanel;->setEnabled(Z)V

    .line 162
    iget-object v8, p0, Lcom/aviary/android/feather/effects/AdjustEffectPanel;->mAdjustImageView:Lcom/aviary/android/feather/widget/AdjustImageView;

    invoke-virtual {v8}, Lcom/aviary/android/feather/widget/AdjustImageView;->getCurrentRotation()D

    move-result-wide v8

    double-to-int v1, v8

    .line 163
    .local v1, "rotation":I
    iget-object v8, p0, Lcom/aviary/android/feather/effects/AdjustEffectPanel;->mAdjustImageView:Lcom/aviary/android/feather/widget/AdjustImageView;

    invoke-virtual {v8}, Lcom/aviary/android/feather/widget/AdjustImageView;->getHorizontalFlip()Z

    move-result v0

    .line 164
    .local v0, "hflip":Z
    iget-object v8, p0, Lcom/aviary/android/feather/effects/AdjustEffectPanel;->mAdjustImageView:Lcom/aviary/android/feather/widget/AdjustImageView;

    invoke-virtual {v8}, Lcom/aviary/android/feather/widget/AdjustImageView;->getVerticalFlip()Z

    move-result v5

    .line 165
    .local v5, "vflip":Z
    iget-object v8, p0, Lcom/aviary/android/feather/effects/AdjustEffectPanel;->mAdjustImageView:Lcom/aviary/android/feather/widget/AdjustImageView;

    invoke-virtual {v8}, Lcom/aviary/android/feather/widget/AdjustImageView;->getStraightenStarted()Z

    move-result v4

    .line 166
    .local v4, "straightenStarted":Z
    iget-object v8, p0, Lcom/aviary/android/feather/effects/AdjustEffectPanel;->mAdjustImageView:Lcom/aviary/android/feather/widget/AdjustImageView;

    invoke-virtual {v8}, Lcom/aviary/android/feather/widget/AdjustImageView;->getStraightenAngle()D

    move-result-wide v2

    .line 168
    .local v2, "rotationFromStraighten":D
    if-nez v1, :cond_1

    if-nez v0, :cond_1

    if-nez v5, :cond_1

    if-eqz v4, :cond_2

    const-wide/16 v8, 0x0

    cmpl-double v8, v2, v8

    if-eqz v8, :cond_2

    .line 169
    :cond_1
    iget-object v7, p0, Lcom/aviary/android/feather/effects/AdjustEffectPanel;->mAdjustImageView:Lcom/aviary/android/feather/widget/AdjustImageView;

    invoke-virtual {v7}, Lcom/aviary/android/feather/widget/AdjustImageView;->reset()V

    goto :goto_0

    :cond_2
    move v6, v7

    .line 172
    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 97
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/AdjustEffectPanel;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/AdjustEffectPanel;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 101
    .local v0, "id":I
    sget v1, Lcom/aviary/android/feather/R$id;->aviary_button1:I

    if-ne v0, v1, :cond_2

    .line 102
    iget-object v1, p0, Lcom/aviary/android/feather/effects/AdjustEffectPanel;->mAdjustImageView:Lcom/aviary/android/feather/widget/AdjustImageView;

    invoke-virtual {v1, v2}, Lcom/aviary/android/feather/widget/AdjustImageView;->rotate90(Z)V

    goto :goto_0

    .line 103
    :cond_2
    sget v1, Lcom/aviary/android/feather/R$id;->aviary_button2:I

    if-ne v0, v1, :cond_3

    .line 104
    iget-object v1, p0, Lcom/aviary/android/feather/effects/AdjustEffectPanel;->mAdjustImageView:Lcom/aviary/android/feather/widget/AdjustImageView;

    invoke-virtual {v1, v3}, Lcom/aviary/android/feather/widget/AdjustImageView;->rotate90(Z)V

    goto :goto_0

    .line 105
    :cond_3
    sget v1, Lcom/aviary/android/feather/R$id;->aviary_button3:I

    if-ne v0, v1, :cond_4

    .line 106
    iget-object v1, p0, Lcom/aviary/android/feather/effects/AdjustEffectPanel;->mAdjustImageView:Lcom/aviary/android/feather/widget/AdjustImageView;

    invoke-virtual {v1, v3}, Lcom/aviary/android/feather/widget/AdjustImageView;->flip(Z)V

    goto :goto_0

    .line 107
    :cond_4
    sget v1, Lcom/aviary/android/feather/R$id;->aviary_button4:I

    if-ne v0, v1, :cond_0

    .line 108
    iget-object v1, p0, Lcom/aviary/android/feather/effects/AdjustEffectPanel;->mAdjustImageView:Lcom/aviary/android/feather/widget/AdjustImageView;

    invoke-virtual {v1, v2}, Lcom/aviary/android/feather/widget/AdjustImageView;->flip(Z)V

    goto :goto_0
.end method

.method public onCreate(Landroid/graphics/Bitmap;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "options"    # Landroid/os/Bundle;

    .prologue
    .line 40
    invoke-super {p0, p1, p2}, Lcom/aviary/android/feather/effects/AbstractContentPanel;->onCreate(Landroid/graphics/Bitmap;Landroid/os/Bundle;)V

    .line 42
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/AdjustEffectPanel;->getContentView()Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/aviary/android/feather/R$id;->aviary_overlay:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/aviary/android/feather/widget/AdjustImageView;

    iput-object v1, p0, Lcom/aviary/android/feather/effects/AdjustEffectPanel;->mAdjustImageView:Lcom/aviary/android/feather/widget/AdjustImageView;

    .line 44
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/AdjustEffectPanel;->getOptionView()Landroid/view/ViewGroup;

    move-result-object v0

    .line 45
    .local v0, "v":Landroid/view/View;
    sget v1, Lcom/aviary/android/feather/R$id;->aviary_button1:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;

    iput-object v1, p0, Lcom/aviary/android/feather/effects/AdjustEffectPanel;->mButton1:Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;

    .line 46
    sget v1, Lcom/aviary/android/feather/R$id;->aviary_button2:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;

    iput-object v1, p0, Lcom/aviary/android/feather/effects/AdjustEffectPanel;->mButton2:Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;

    .line 47
    sget v1, Lcom/aviary/android/feather/R$id;->aviary_button3:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;

    iput-object v1, p0, Lcom/aviary/android/feather/effects/AdjustEffectPanel;->mButton3:Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;

    .line 48
    sget v1, Lcom/aviary/android/feather/R$id;->aviary_button4:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;

    iput-object v1, p0, Lcom/aviary/android/feather/effects/AdjustEffectPanel;->mButton4:Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;

    .line 49
    return-void
.end method

.method public onDeactivate()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 69
    iget-object v0, p0, Lcom/aviary/android/feather/effects/AdjustEffectPanel;->mAdjustImageView:Lcom/aviary/android/feather/widget/AdjustImageView;

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/widget/AdjustImageView;->setOnResetListener(Lcom/aviary/android/feather/widget/AdjustImageView$OnResetListener;)V

    .line 70
    iget-object v0, p0, Lcom/aviary/android/feather/effects/AdjustEffectPanel;->mButton1:Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    iget-object v0, p0, Lcom/aviary/android/feather/effects/AdjustEffectPanel;->mButton2:Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    iget-object v0, p0, Lcom/aviary/android/feather/effects/AdjustEffectPanel;->mButton3:Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iget-object v0, p0, Lcom/aviary/android/feather/effects/AdjustEffectPanel;->mButton4:Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    invoke-super {p0}, Lcom/aviary/android/feather/effects/AbstractContentPanel;->onDeactivate()V

    .line 76
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/aviary/android/feather/effects/AdjustEffectPanel;->mAdjustImageView:Lcom/aviary/android/feather/widget/AdjustImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/widget/AdjustImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 81
    invoke-super {p0}, Lcom/aviary/android/feather/effects/AbstractContentPanel;->onDestroy()V

    .line 82
    return-void
.end method

.method protected onGenerateResult()V
    .locals 15

    .prologue
    .line 124
    iget-object v5, p0, Lcom/aviary/android/feather/effects/AdjustEffectPanel;->mAdjustImageView:Lcom/aviary/android/feather/widget/AdjustImageView;

    invoke-virtual {v5}, Lcom/aviary/android/feather/widget/AdjustImageView;->getCurrentRotation()D

    move-result-wide v5

    double-to-int v10, v5

    .line 125
    .local v10, "rotation":I
    iget-object v5, p0, Lcom/aviary/android/feather/effects/AdjustEffectPanel;->mAdjustImageView:Lcom/aviary/android/feather/widget/AdjustImageView;

    invoke-virtual {v5}, Lcom/aviary/android/feather/widget/AdjustImageView;->getStraightenAngle()D

    move-result-wide v1

    .line 126
    .local v1, "rotationFromStraighten":D
    iget-object v5, p0, Lcom/aviary/android/feather/effects/AdjustEffectPanel;->mAdjustImageView:Lcom/aviary/android/feather/widget/AdjustImageView;

    invoke-virtual {v5}, Lcom/aviary/android/feather/widget/AdjustImageView;->getHorizontalFlip()Z

    move-result v8

    .line 127
    .local v8, "horizontal":Z
    iget-object v5, p0, Lcom/aviary/android/feather/effects/AdjustEffectPanel;->mAdjustImageView:Lcom/aviary/android/feather/widget/AdjustImageView;

    invoke-virtual {v5}, Lcom/aviary/android/feather/widget/AdjustImageView;->getVerticalFlip()Z

    move-result v11

    .line 128
    .local v11, "vertical":Z
    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    iget-object v12, p0, Lcom/aviary/android/feather/effects/AdjustEffectPanel;->mAdjustImageView:Lcom/aviary/android/feather/widget/AdjustImageView;

    invoke-virtual {v12}, Lcom/aviary/android/feather/widget/AdjustImageView;->getGrowthFactor()D

    move-result-wide v12

    div-double v3, v5, v12

    .line 130
    .local v3, "growthFactor":D
    iget-object v5, p0, Lcom/aviary/android/feather/effects/AdjustEffectPanel;->mLogger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v12, 0x0

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "rotation: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v6, v12

    invoke-interface {v5, v6}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->log([Ljava/lang/Object;)V

    .line 131
    iget-object v5, p0, Lcom/aviary/android/feather/effects/AdjustEffectPanel;->mLogger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v12, 0x0

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "rotationFromStraigthen: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v6, v12

    invoke-interface {v5, v6}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->log([Ljava/lang/Object;)V

    .line 132
    iget-object v5, p0, Lcom/aviary/android/feather/effects/AdjustEffectPanel;->mLogger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v12, 0x0

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "flip: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ", "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v6, v12

    invoke-interface {v5, v6}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->log([Ljava/lang/Object;)V

    .line 133
    iget-object v5, p0, Lcom/aviary/android/feather/effects/AdjustEffectPanel;->mLogger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v12, 0x0

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "growFactor: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v6, v12

    invoke-interface {v5, v6}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->log([Ljava/lang/Object;)V

    .line 135
    iget-object v0, p0, Lcom/aviary/android/feather/effects/AdjustEffectPanel;->mFilter:Lcom/aviary/android/feather/headless/filters/IFilter;

    check-cast v0, Lcom/aviary/android/feather/library/filters/AdjustFilter;

    .line 136
    .local v0, "filter":Lcom/aviary/android/feather/library/filters/AdjustFilter;
    invoke-virtual {v0, v8, v11}, Lcom/aviary/android/feather/library/filters/AdjustFilter;->setFlip(ZZ)Z

    .line 137
    invoke-virtual {v0, v10}, Lcom/aviary/android/feather/library/filters/AdjustFilter;->setFixedRotation(I)Z

    move-wide v5, v3

    .line 138
    invoke-virtual/range {v0 .. v6}, Lcom/aviary/android/feather/library/filters/AdjustFilter;->setStraighten(DDD)Z

    .line 143
    :try_start_0
    iget-object v5, p0, Lcom/aviary/android/feather/effects/AdjustEffectPanel;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v6, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x1

    invoke-virtual {v0, v5, v6, v12, v13}, Lcom/aviary/android/feather/library/filters/AdjustFilter;->execute(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 150
    .local v9, "output":Landroid/graphics/Bitmap;
    iget-object v5, p0, Lcom/aviary/android/feather/effects/AdjustEffectPanel;->mAdjustImageView:Lcom/aviary/android/feather/widget/AdjustImageView;

    invoke-virtual {v5, v9}, Lcom/aviary/android/feather/widget/AdjustImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 151
    invoke-virtual {v0}, Lcom/aviary/android/feather/library/filters/AdjustFilter;->getActions()Lcom/aviary/android/feather/headless/moa/MoaActionList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/aviary/android/feather/headless/moa/MoaActionList;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/aviary/android/feather/headless/moa/MoaActionList;

    invoke-virtual {p0, v9, v5}, Lcom/aviary/android/feather/effects/AdjustEffectPanel;->onComplete(Landroid/graphics/Bitmap;Lcom/aviary/android/feather/headless/moa/MoaActionList;)V

    .line 153
    .end local v9    # "output":Landroid/graphics/Bitmap;
    :goto_0
    return-void

    .line 144
    :catch_0
    move-exception v7

    .line 145
    .local v7, "e":Lorg/json/JSONException;
    invoke-virtual {v7}, Lorg/json/JSONException;->printStackTrace()V

    .line 146
    invoke-virtual {p0, v7}, Lcom/aviary/android/feather/effects/AdjustEffectPanel;->onGenericError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public onResetComplete()V
    .locals 1

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/AdjustEffectPanel;->getContext()Lcom/aviary/android/feather/library/services/IAviaryController;

    move-result-object v0

    invoke-interface {v0}, Lcom/aviary/android/feather/library/services/IAviaryController;->cancel()V

    .line 179
    return-void
.end method

.method public bridge synthetic setEnabled(Z)V
    .locals 0

    .prologue
    .line 24
    invoke-super {p0, p1}, Lcom/aviary/android/feather/effects/AbstractContentPanel;->setEnabled(Z)V

    return-void
.end method
