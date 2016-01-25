.class public Lcom/aviary/android/feather/effects/NativeEffectRangePanel;
.super Lcom/aviary/android/feather/effects/SliderEffectPanel;
.source "NativeEffectRangePanel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aviary/android/feather/effects/NativeEffectRangePanel$GenerateResultTask;,
        Lcom/aviary/android/feather/effects/NativeEffectRangePanel$ApplyFilterTask;
    }
.end annotation


# instance fields
.field enableFastPreview:Z

.field mActions:Lcom/aviary/android/feather/headless/moa/MoaActionList;

.field mCurrentTask:Lcom/aviary/android/feather/effects/NativeEffectRangePanel$ApplyFilterTask;

.field volatile mIsRendering:Z


# direct methods
.method public constructor <init>(Lcom/aviary/android/feather/library/services/IAviaryController;Lcom/aviary/android/feather/library/content/ToolEntry;Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Lcom/aviary/android/feather/library/services/IAviaryController;
    .param p2, "entry"    # Lcom/aviary/android/feather/library/content/ToolEntry;
    .param p3, "type"    # Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;
    .param p4, "resourcesBaseName"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/aviary/android/feather/effects/SliderEffectPanel;-><init>(Lcom/aviary/android/feather/library/services/IAviaryController;Lcom/aviary/android/feather/library/content/ToolEntry;Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;Ljava/lang/String;)V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aviary/android/feather/effects/NativeEffectRangePanel;->mIsRendering:Z

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aviary/android/feather/effects/NativeEffectRangePanel;->mActions:Lcom/aviary/android/feather/headless/moa/MoaActionList;

    .line 31
    invoke-static {p3}, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory;->get(Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;)Lcom/aviary/android/feather/headless/filters/IFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/aviary/android/feather/effects/NativeEffectRangePanel;->mFilter:Lcom/aviary/android/feather/headless/filters/IFilter;

    .line 32
    return-void
.end method


# virtual methods
.method protected applyFilter(FZ)V
    .locals 6
    .param p1, "value"    # F
    .param p2, "showProgress"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 125
    iget-object v0, p0, Lcom/aviary/android/feather/effects/NativeEffectRangePanel;->mLogger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    new-array v1, v5, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "applyFilter: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-interface {v0, v1}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 126
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/NativeEffectRangePanel;->killCurrentTask()Z

    .line 128
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/aviary/android/feather/effects/NativeEffectRangePanel;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/aviary/android/feather/effects/NativeEffectRangePanel;->mPreview:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/aviary/android/feather/library/utils/BitmapUtils;->copy(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 130
    iget-object v0, p0, Lcom/aviary/android/feather/effects/NativeEffectRangePanel;->mPreview:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0, v4, v5}, Lcom/aviary/android/feather/effects/NativeEffectRangePanel;->onPreviewChanged(Landroid/graphics/Bitmap;ZZ)V

    .line 131
    invoke-virtual {p0, v4}, Lcom/aviary/android/feather/effects/NativeEffectRangePanel;->setIsChanged(Z)V

    .line 132
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aviary/android/feather/effects/NativeEffectRangePanel;->mActions:Lcom/aviary/android/feather/headless/moa/MoaActionList;

    .line 137
    :goto_0
    return-void

    .line 134
    :cond_0
    new-instance v0, Lcom/aviary/android/feather/effects/NativeEffectRangePanel$ApplyFilterTask;

    invoke-direct {v0, p0, p1, p2}, Lcom/aviary/android/feather/effects/NativeEffectRangePanel$ApplyFilterTask;-><init>(Lcom/aviary/android/feather/effects/NativeEffectRangePanel;FZ)V

    iput-object v0, p0, Lcom/aviary/android/feather/effects/NativeEffectRangePanel;->mCurrentTask:Lcom/aviary/android/feather/effects/NativeEffectRangePanel$ApplyFilterTask;

    .line 135
    iget-object v0, p0, Lcom/aviary/android/feather/effects/NativeEffectRangePanel;->mCurrentTask:Lcom/aviary/android/feather/effects/NativeEffectRangePanel$ApplyFilterTask;

    new-array v1, v5, [Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/aviary/android/feather/effects/NativeEffectRangePanel;->mBitmap:Landroid/graphics/Bitmap;

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/effects/NativeEffectRangePanel$ApplyFilterTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public getIsChanged()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 114
    invoke-super {p0}, Lcom/aviary/android/feather/effects/SliderEffectPanel;->getIsChanged()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/aviary/android/feather/effects/NativeEffectRangePanel;->mIsRendering:Z

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method killCurrentTask()Z
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/aviary/android/feather/effects/NativeEffectRangePanel;->mCurrentTask:Lcom/aviary/android/feather/effects/NativeEffectRangePanel$ApplyFilterTask;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/aviary/android/feather/effects/NativeEffectRangePanel;->mCurrentTask:Lcom/aviary/android/feather/effects/NativeEffectRangePanel$ApplyFilterTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/effects/NativeEffectRangePanel$ApplyFilterTask;->cancel(Z)Z

    move-result v0

    .line 121
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivate()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 41
    invoke-super {p0}, Lcom/aviary/android/feather/effects/SliderEffectPanel;->onActivate()V

    .line 42
    iget-object v0, p0, Lcom/aviary/android/feather/effects/NativeEffectRangePanel;->mBitmap:Landroid/graphics/Bitmap;

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1}, Lcom/aviary/android/feather/library/utils/BitmapUtils;->copy(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/aviary/android/feather/effects/NativeEffectRangePanel;->mPreview:Landroid/graphics/Bitmap;

    .line 43
    iget-object v0, p0, Lcom/aviary/android/feather/effects/NativeEffectRangePanel;->mPreview:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0, v2, v2}, Lcom/aviary/android/feather/effects/NativeEffectRangePanel;->onPreviewChanged(Landroid/graphics/Bitmap;ZZ)V

    .line 44
    return-void
.end method

.method public onBackPressed()Z
    .locals 4

    .prologue
    .line 100
    iget-object v0, p0, Lcom/aviary/android/feather/effects/NativeEffectRangePanel;->mLogger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "onBackPressed"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 101
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/NativeEffectRangePanel;->killCurrentTask()Z

    .line 102
    invoke-super {p0}, Lcom/aviary/android/feather/effects/SliderEffectPanel;->onBackPressed()Z

    move-result v0

    return v0
.end method

.method public onCancelled()V
    .locals 1

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/NativeEffectRangePanel;->killCurrentTask()Z

    .line 108
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aviary/android/feather/effects/NativeEffectRangePanel;->mIsRendering:Z

    .line 109
    invoke-super {p0}, Lcom/aviary/android/feather/effects/SliderEffectPanel;->onCancelled()V

    .line 110
    return-void
.end method

.method public onCreate(Landroid/graphics/Bitmap;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "options"    # Landroid/os/Bundle;

    .prologue
    .line 36
    invoke-super {p0, p1, p2}, Lcom/aviary/android/feather/effects/SliderEffectPanel;->onCreate(Landroid/graphics/Bitmap;Landroid/os/Bundle;)V

    .line 37
    return-void
.end method

.method public onDeactivate()V
    .locals 0

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/NativeEffectRangePanel;->onProgressEnd()V

    .line 83
    invoke-super {p0}, Lcom/aviary/android/feather/effects/SliderEffectPanel;->onDeactivate()V

    .line 84
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 77
    invoke-super {p0}, Lcom/aviary/android/feather/effects/SliderEffectPanel;->onDestroy()V

    .line 78
    return-void
.end method

.method protected onGenerateResult()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 88
    iget-object v1, p0, Lcom/aviary/android/feather/effects/NativeEffectRangePanel;->mLogger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onGenerateResult: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/aviary/android/feather/effects/NativeEffectRangePanel;->mIsRendering:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-interface {v1, v2}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 90
    iget-boolean v1, p0, Lcom/aviary/android/feather/effects/NativeEffectRangePanel;->mIsRendering:Z

    if-eqz v1, :cond_0

    .line 91
    new-instance v0, Lcom/aviary/android/feather/effects/NativeEffectRangePanel$GenerateResultTask;

    invoke-direct {v0, p0}, Lcom/aviary/android/feather/effects/NativeEffectRangePanel$GenerateResultTask;-><init>(Lcom/aviary/android/feather/effects/NativeEffectRangePanel;)V

    .line 92
    .local v0, "task":Lcom/aviary/android/feather/effects/NativeEffectRangePanel$GenerateResultTask;
    new-array v1, v5, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/effects/NativeEffectRangePanel$GenerateResultTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 96
    .end local v0    # "task":Lcom/aviary/android/feather/effects/NativeEffectRangePanel$GenerateResultTask;
    :goto_0
    return-void

    .line 94
    :cond_0
    iget-object v1, p0, Lcom/aviary/android/feather/effects/NativeEffectRangePanel;->mPreview:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/aviary/android/feather/effects/NativeEffectRangePanel;->mActions:Lcom/aviary/android/feather/headless/moa/MoaActionList;

    invoke-virtual {p0, v1, v2}, Lcom/aviary/android/feather/effects/NativeEffectRangePanel;->onComplete(Landroid/graphics/Bitmap;Lcom/aviary/android/feather/headless/moa/MoaActionList;)V

    goto :goto_0
.end method

.method protected onSliderChanged(IZ)V
    .locals 6
    .param p1, "value"    # I
    .param p2, "fromUser"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 67
    iget-object v2, p0, Lcom/aviary/android/feather/effects/NativeEffectRangePanel;->mLogger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    new-array v3, v0, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onProgressChanged: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", fromUser: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-interface {v2, v3}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 69
    iget-boolean v2, p0, Lcom/aviary/android/feather/effects/NativeEffectRangePanel;->enableFastPreview:Z

    if-nez v2, :cond_0

    if-nez p2, :cond_1

    .line 70
    :cond_0
    add-int/lit8 v2, p1, -0x32

    mul-int/lit8 p1, v2, 0x2

    .line 71
    int-to-float v2, p1

    if-nez p2, :cond_2

    :goto_0
    invoke-virtual {p0, v2, v0}, Lcom/aviary/android/feather/effects/NativeEffectRangePanel;->applyFilter(FZ)V

    .line 73
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 71
    goto :goto_0
.end method

.method protected onSliderEnd(I)V
    .locals 6
    .param p1, "value"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 55
    iget-object v2, p0, Lcom/aviary/android/feather/effects/NativeEffectRangePanel;->mLogger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    new-array v3, v0, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onProgressEnd: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-interface {v2, v3}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 57
    add-int/lit8 v2, p1, -0x32

    mul-int/lit8 p1, v2, 0x2

    .line 58
    int-to-float v2, p1

    iget-boolean v3, p0, Lcom/aviary/android/feather/effects/NativeEffectRangePanel;->enableFastPreview:Z

    if-nez v3, :cond_1

    :goto_0
    invoke-virtual {p0, v2, v0}, Lcom/aviary/android/feather/effects/NativeEffectRangePanel;->applyFilter(FZ)V

    .line 60
    iget-boolean v0, p0, Lcom/aviary/android/feather/effects/NativeEffectRangePanel;->enableFastPreview:Z

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/NativeEffectRangePanel;->onProgressEnd()V

    .line 63
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 58
    goto :goto_0
.end method

.method protected onSliderStart(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/aviary/android/feather/effects/NativeEffectRangePanel;->enableFastPreview:Z

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/NativeEffectRangePanel;->onProgressStart()V

    .line 51
    :cond_0
    return-void
.end method
