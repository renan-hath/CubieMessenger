.class public abstract Lcom/aviary/android/feather/effects/AbstractPanel;
.super Ljava/lang/Object;
.source "AbstractPanel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aviary/android/feather/effects/AbstractPanel$ContentPanel;,
        Lcom/aviary/android/feather/effects/AbstractPanel$OptionPanel;,
        Lcom/aviary/android/feather/effects/AbstractPanel$OnErrorListener;,
        Lcom/aviary/android/feather/effects/AbstractPanel$OnApplyResultListener;,
        Lcom/aviary/android/feather/effects/AbstractPanel$OnPreviewListener;,
        Lcom/aviary/android/feather/effects/AbstractPanel$OnProgressListener;,
        Lcom/aviary/android/feather/effects/AbstractPanel$OnContentReadyListener;
    }
.end annotation


# instance fields
.field private mActive:Z

.field protected mApplyListener:Lcom/aviary/android/feather/effects/AbstractPanel$OnApplyResultListener;

.field protected mBitmap:Landroid/graphics/Bitmap;

.field protected mChanged:Z

.field private mCreated:Z

.field protected mEnabled:Z

.field private mEntryName:Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

.field protected mErrorListener:Lcom/aviary/android/feather/effects/AbstractPanel$OnErrorListener;

.field protected mFilter:Lcom/aviary/android/feather/headless/filters/IFilter;

.field private mFilterContext:Lcom/aviary/android/feather/library/services/IAviaryController;

.field protected mListener:Lcom/aviary/android/feather/effects/AbstractPanel$OnPreviewListener;

.field final mListenerHandler:Landroid/os/Handler;

.field protected mLogger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

.field private mOptions:Landroid/os/Bundle;

.field protected mPreview:Landroid/graphics/Bitmap;

.field protected mProgressListener:Lcom/aviary/android/feather/effects/AbstractPanel$OnProgressListener;

.field protected mRenderTime:J

.field protected mSaving:Z

.field protected mTrackingAttributes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/aviary/android/feather/library/services/IAviaryController;Lcom/aviary/android/feather/library/content/ToolEntry;)V
    .locals 2
    .param p1, "context"    # Lcom/aviary/android/feather/library/services/IAviaryController;
    .param p2, "entry"    # Lcom/aviary/android/feather/library/content/ToolEntry;

    .prologue
    const/4 v1, 0x0

    .line 329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    new-instance v0, Lcom/aviary/android/feather/effects/AbstractPanel$1;

    invoke-direct {v0, p0}, Lcom/aviary/android/feather/effects/AbstractPanel$1;-><init>(Lcom/aviary/android/feather/effects/AbstractPanel;)V

    iput-object v0, p0, Lcom/aviary/android/feather/effects/AbstractPanel;->mListenerHandler:Landroid/os/Handler;

    .line 330
    iput-object p1, p0, Lcom/aviary/android/feather/effects/AbstractPanel;->mFilterContext:Lcom/aviary/android/feather/library/services/IAviaryController;

    .line 331
    iget-object v0, p2, Lcom/aviary/android/feather/library/content/ToolEntry;->name:Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    iput-object v0, p0, Lcom/aviary/android/feather/effects/AbstractPanel;->mEntryName:Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    .line 332
    iput-boolean v1, p0, Lcom/aviary/android/feather/effects/AbstractPanel;->mActive:Z

    .line 333
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aviary/android/feather/effects/AbstractPanel;->mEnabled:Z

    .line 334
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/aviary/android/feather/effects/AbstractPanel;->mTrackingAttributes:Ljava/util/HashMap;

    .line 335
    invoke-virtual {p0, v1}, Lcom/aviary/android/feather/effects/AbstractPanel;->setIsChanged(Z)V

    .line 336
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/aviary/android/feather/library/log/LoggerFactory$LoggerType;->ConsoleLoggerType:Lcom/aviary/android/feather/library/log/LoggerFactory$LoggerType;

    invoke-static {v0, v1}, Lcom/aviary/android/feather/library/log/LoggerFactory;->getLogger(Ljava/lang/String;Lcom/aviary/android/feather/library/log/LoggerFactory$LoggerType;)Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/aviary/android/feather/effects/AbstractPanel;->mLogger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    .line 337
    return-void
.end method

.method private internalDispose()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 651
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/AbstractPanel;->recyclePreview()V

    .line 652
    iput-object v0, p0, Lcom/aviary/android/feather/effects/AbstractPanel;->mPreview:Landroid/graphics/Bitmap;

    .line 653
    iput-object v0, p0, Lcom/aviary/android/feather/effects/AbstractPanel;->mBitmap:Landroid/graphics/Bitmap;

    .line 654
    iput-object v0, p0, Lcom/aviary/android/feather/effects/AbstractPanel;->mListener:Lcom/aviary/android/feather/effects/AbstractPanel$OnPreviewListener;

    .line 655
    iput-object v0, p0, Lcom/aviary/android/feather/effects/AbstractPanel;->mErrorListener:Lcom/aviary/android/feather/effects/AbstractPanel$OnErrorListener;

    .line 656
    iput-object v0, p0, Lcom/aviary/android/feather/effects/AbstractPanel;->mApplyListener:Lcom/aviary/android/feather/effects/AbstractPanel$OnApplyResultListener;

    .line 657
    iput-object v0, p0, Lcom/aviary/android/feather/effects/AbstractPanel;->mFilterContext:Lcom/aviary/android/feather/library/services/IAviaryController;

    .line 658
    iput-object v0, p0, Lcom/aviary/android/feather/effects/AbstractPanel;->mFilter:Lcom/aviary/android/feather/headless/filters/IFilter;

    .line 659
    iput-object v0, p0, Lcom/aviary/android/feather/effects/AbstractPanel;->mEntryName:Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    .line 660
    iput-object v0, p0, Lcom/aviary/android/feather/effects/AbstractPanel;->mOptions:Landroid/os/Bundle;

    .line 661
    return-void
.end method


# virtual methods
.method public getContext()Lcom/aviary/android/feather/library/services/IAviaryController;
    .locals 1

    .prologue
    .line 636
    iget-object v0, p0, Lcom/aviary/android/feather/effects/AbstractPanel;->mFilterContext:Lcom/aviary/android/feather/library/services/IAviaryController;

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/aviary/android/feather/effects/AbstractPanel;->mListenerHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getIsChanged()Z
    .locals 1

    .prologue
    .line 587
    iget-boolean v0, p0, Lcom/aviary/android/feather/effects/AbstractPanel;->mChanged:Z

    return v0
.end method

.method public getName()Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;
    .locals 1

    .prologue
    .line 664
    iget-object v0, p0, Lcom/aviary/android/feather/effects/AbstractPanel;->mEntryName:Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    return-object v0
.end method

.method public getOptions()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 491
    iget-object v0, p0, Lcom/aviary/android/feather/effects/AbstractPanel;->mOptions:Landroid/os/Bundle;

    return-object v0
.end method

.method public hasOptions()Z
    .locals 1

    .prologue
    .line 505
    iget-object v0, p0, Lcom/aviary/android/feather/effects/AbstractPanel;->mOptions:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isActive()Z
    .locals 1

    .prologue
    .line 423
    iget-boolean v0, p0, Lcom/aviary/android/feather/effects/AbstractPanel;->mActive:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/AbstractPanel;->isCreated()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCreated()Z
    .locals 1

    .prologue
    .line 432
    iget-boolean v0, p0, Lcom/aviary/android/feather/effects/AbstractPanel;->mCreated:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 414
    iget-boolean v0, p0, Lcom/aviary/android/feather/effects/AbstractPanel;->mEnabled:Z

    return v0
.end method

.method public onActivate()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 616
    iget-object v0, p0, Lcom/aviary/android/feather/effects/AbstractPanel;->mLogger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "onActivate"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 617
    iput-boolean v4, p0, Lcom/aviary/android/feather/effects/AbstractPanel;->mActive:Z

    .line 618
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 530
    const/4 v0, 0x0

    return v0
.end method

.method public onCancel()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 567
    iget-object v0, p0, Lcom/aviary/android/feather/effects/AbstractPanel;->mLogger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "onCancel"

    aput-object v2, v1, v3

    invoke-interface {v0, v1}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 568
    return v3
.end method

.method public onCancelled()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 577
    iget-object v0, p0, Lcom/aviary/android/feather/effects/AbstractPanel;->mLogger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "onCancelled"

    aput-object v2, v1, v3

    invoke-interface {v0, v1}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 578
    invoke-virtual {p0, v3}, Lcom/aviary/android/feather/effects/AbstractPanel;->setEnabled(Z)V

    .line 579
    return-void
.end method

.method public onClosing()V
    .locals 4

    .prologue
    .line 519
    iget-object v0, p0, Lcom/aviary/android/feather/effects/AbstractPanel;->mLogger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "onClosing"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 520
    return-void
.end method

.method protected onComplete(Landroid/graphics/Bitmap;Lcom/aviary/android/feather/headless/moa/MoaActionList;)V
    .locals 7
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "actions"    # Lcom/aviary/android/feather/headless/moa/MoaActionList;

    .prologue
    const/4 v6, 0x0

    .line 727
    iget-object v2, p0, Lcom/aviary/android/feather/effects/AbstractPanel;->mLogger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "onComplete"

    aput-object v4, v3, v6

    invoke-interface {v2, v3}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 728
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 729
    .local v0, "t":J
    iget-object v2, p0, Lcom/aviary/android/feather/effects/AbstractPanel;->mApplyListener:Lcom/aviary/android/feather/effects/AbstractPanel$OnApplyResultListener;

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/AbstractPanel;->isActive()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 731
    iget-object v2, p0, Lcom/aviary/android/feather/effects/AbstractPanel;->mTrackingAttributes:Ljava/util/HashMap;

    const-string/jumbo v3, "renderTime"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/aviary/android/feather/effects/AbstractPanel;->mTrackingAttributes:Ljava/util/HashMap;

    const-string/jumbo v3, "renderTime"

    iget-wide v4, p0, Lcom/aviary/android/feather/effects/AbstractPanel;->mRenderTime:J

    sub-long v4, v0, v4

    .line 732
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    .line 731
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 733
    :cond_0
    iget-object v2, p0, Lcom/aviary/android/feather/effects/AbstractPanel;->mApplyListener:Lcom/aviary/android/feather/effects/AbstractPanel$OnApplyResultListener;

    iget-object v3, p0, Lcom/aviary/android/feather/effects/AbstractPanel;->mTrackingAttributes:Ljava/util/HashMap;

    invoke-interface {v2, p1, p2, v3}, Lcom/aviary/android/feather/effects/AbstractPanel$OnApplyResultListener;->onComplete(Landroid/graphics/Bitmap;Lcom/aviary/android/feather/headless/moa/MoaActionList;Ljava/util/HashMap;)V

    .line 736
    :cond_1
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/aviary/android/feather/effects/AbstractPanel;->mPreview:Landroid/graphics/Bitmap;

    .line 737
    iput-boolean v6, p0, Lcom/aviary/android/feather/effects/AbstractPanel;->mSaving:Z

    .line 738
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;
    .param p2, "oldConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 541
    return-void
.end method

.method public onCreate(Landroid/graphics/Bitmap;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "options"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    .line 484
    iget-object v0, p0, Lcom/aviary/android/feather/effects/AbstractPanel;->mLogger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "onCreate"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 485
    iput-object p1, p0, Lcom/aviary/android/feather/effects/AbstractPanel;->mBitmap:Landroid/graphics/Bitmap;

    .line 486
    iput-boolean v4, p0, Lcom/aviary/android/feather/effects/AbstractPanel;->mCreated:Z

    .line 487
    iput-object p2, p0, Lcom/aviary/android/feather/effects/AbstractPanel;->mOptions:Landroid/os/Bundle;

    .line 488
    return-void
.end method

.method public onDeactivate()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 625
    iget-object v0, p0, Lcom/aviary/android/feather/effects/AbstractPanel;->mLogger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "onDeactivate"

    aput-object v2, v1, v3

    invoke-interface {v0, v1}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 626
    invoke-virtual {p0, v3}, Lcom/aviary/android/feather/effects/AbstractPanel;->setEnabled(Z)V

    .line 627
    iput-boolean v3, p0, Lcom/aviary/android/feather/effects/AbstractPanel;->mActive:Z

    .line 628
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 604
    iget-object v0, p0, Lcom/aviary/android/feather/effects/AbstractPanel;->mLogger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "onDestroy"

    aput-object v2, v1, v3

    invoke-interface {v0, v1}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 605
    iput-boolean v3, p0, Lcom/aviary/android/feather/effects/AbstractPanel;->mCreated:Z

    .line 606
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/AbstractPanel;->onDispose()V

    .line 607
    return-void
.end method

.method protected onDispose()V
    .locals 4

    .prologue
    .line 643
    iget-object v0, p0, Lcom/aviary/android/feather/effects/AbstractPanel;->mLogger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "onDispose"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 644
    invoke-direct {p0}, Lcom/aviary/android/feather/effects/AbstractPanel;->internalDispose()V

    .line 645
    return-void
.end method

.method protected onGenerateResult()V
    .locals 1

    .prologue
    .line 789
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/aviary/android/feather/effects/AbstractPanel;->onGenerateResult(Lcom/aviary/android/feather/headless/moa/MoaActionList;)V

    .line 790
    return-void
.end method

.method protected onGenerateResult(Lcom/aviary/android/feather/headless/moa/MoaActionList;)V
    .locals 1
    .param p1, "actions"    # Lcom/aviary/android/feather/headless/moa/MoaActionList;

    .prologue
    .line 793
    iget-object v0, p0, Lcom/aviary/android/feather/effects/AbstractPanel;->mPreview:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0, p1}, Lcom/aviary/android/feather/effects/AbstractPanel;->onComplete(Landroid/graphics/Bitmap;Lcom/aviary/android/feather/headless/moa/MoaActionList;)V

    .line 794
    return-void
.end method

.method protected onGenericError(Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;
    .param p2, "yesLabel"    # I
    .param p3, "yesListener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 741
    iget-object v0, p0, Lcom/aviary/android/feather/effects/AbstractPanel;->mErrorListener:Lcom/aviary/android/feather/effects/AbstractPanel$OnErrorListener;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/AbstractPanel;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aviary/android/feather/effects/AbstractPanel;->mErrorListener:Lcom/aviary/android/feather/effects/AbstractPanel$OnErrorListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/aviary/android/feather/effects/AbstractPanel$OnErrorListener;->onError(Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)V

    .line 742
    :cond_0
    return-void
.end method

.method protected onGenericError(Ljava/lang/Exception;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 766
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/aviary/android/feather/effects/AbstractPanel;->onGenericError(Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)V

    .line 767
    return-void
.end method

.method protected onGenericError(Ljava/lang/String;ILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 6
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "yesLabel"    # I
    .param p3, "yesListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p4, "noLabel"    # I
    .param p5, "noListener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 760
    iget-object v0, p0, Lcom/aviary/android/feather/effects/AbstractPanel;->mErrorListener:Lcom/aviary/android/feather/effects/AbstractPanel$OnErrorListener;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/AbstractPanel;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 761
    iget-object v0, p0, Lcom/aviary/android/feather/effects/AbstractPanel;->mErrorListener:Lcom/aviary/android/feather/effects/AbstractPanel$OnErrorListener;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/aviary/android/feather/effects/AbstractPanel$OnErrorListener;->onError(Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;)V

    .line 763
    :cond_0
    return-void
.end method

.method protected onGenericMessage(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "message"    # Ljava/lang/CharSequence;
    .param p3, "yesLabel"    # I
    .param p4, "yesListener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 770
    iget-object v0, p0, Lcom/aviary/android/feather/effects/AbstractPanel;->mErrorListener:Lcom/aviary/android/feather/effects/AbstractPanel$OnErrorListener;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/AbstractPanel;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 771
    iget-object v0, p0, Lcom/aviary/android/feather/effects/AbstractPanel;->mErrorListener:Lcom/aviary/android/feather/effects/AbstractPanel$OnErrorListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/aviary/android/feather/effects/AbstractPanel$OnErrorListener;->onMessage(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)V

    .line 773
    :cond_0
    return-void
.end method

.method protected onGenericMessage(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 7
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "message"    # Ljava/lang/CharSequence;
    .param p3, "yesLabel"    # I
    .param p4, "yesListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p5, "noLabel"    # I
    .param p6, "noListener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 777
    iget-object v0, p0, Lcom/aviary/android/feather/effects/AbstractPanel;->mErrorListener:Lcom/aviary/android/feather/effects/AbstractPanel$OnErrorListener;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/AbstractPanel;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 778
    iget-object v0, p0, Lcom/aviary/android/feather/effects/AbstractPanel;->mErrorListener:Lcom/aviary/android/feather/effects/AbstractPanel$OnErrorListener;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/aviary/android/feather/effects/AbstractPanel$OnErrorListener;->onMessage(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;)V

    .line 780
    :cond_0
    return-void
.end method

.method public onOpening()V
    .locals 4

    .prologue
    .line 512
    iget-object v0, p0, Lcom/aviary/android/feather/effects/AbstractPanel;->mLogger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "onOpening"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 513
    return-void
.end method

.method protected onPreviewChanged(Landroid/graphics/Bitmap;ZZ)V
    .locals 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "reset"    # Z
    .param p3, "notify"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 698
    if-eqz p1, :cond_3

    move v1, v2

    :goto_0
    invoke-virtual {p0, v1}, Lcom/aviary/android/feather/effects/AbstractPanel;->setIsChanged(Z)V

    .line 700
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/aviary/android/feather/effects/AbstractPanel;->mPreview:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 701
    :cond_0
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/AbstractPanel;->recyclePreview()V

    .line 704
    :cond_1
    iput-object p1, p0, Lcom/aviary/android/feather/effects/AbstractPanel;->mPreview:Landroid/graphics/Bitmap;

    .line 706
    if-eqz p3, :cond_2

    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/AbstractPanel;->isActive()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 707
    iget-object v1, p0, Lcom/aviary/android/feather/effects/AbstractPanel;->mListenerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 708
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 709
    if-eqz p2, :cond_4

    :goto_1
    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 710
    iget-object v1, p0, Lcom/aviary/android/feather/effects/AbstractPanel;->mListenerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 715
    .end local v0    # "msg":Landroid/os/Message;
    :cond_2
    return-void

    :cond_3
    move v1, v3

    .line 698
    goto :goto_0

    .restart local v0    # "msg":Landroid/os/Message;
    :cond_4
    move v2, v3

    .line 709
    goto :goto_1
.end method

.method protected onPreviewUpdated()V
    .locals 2

    .prologue
    const/16 v1, 0xc

    .line 678
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/aviary/android/feather/effects/AbstractPanel;->setIsChanged(Z)V

    .line 680
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/AbstractPanel;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 681
    iget-object v0, p0, Lcom/aviary/android/feather/effects/AbstractPanel;->mListenerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 682
    iget-object v0, p0, Lcom/aviary/android/feather/effects/AbstractPanel;->mListenerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 684
    :cond_0
    return-void
.end method

.method protected onProgressEnd()V
    .locals 2

    .prologue
    .line 381
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/AbstractPanel;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/aviary/android/feather/effects/AbstractPanel;->mListenerHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 384
    :cond_0
    return-void
.end method

.method protected onProgressModalEnd()V
    .locals 2

    .prologue
    .line 393
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/AbstractPanel;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 394
    iget-object v0, p0, Lcom/aviary/android/feather/effects/AbstractPanel;->mListenerHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 396
    :cond_0
    return-void
.end method

.method protected onProgressModalStart()V
    .locals 2

    .prologue
    .line 387
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/AbstractPanel;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/aviary/android/feather/effects/AbstractPanel;->mListenerHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 390
    :cond_0
    return-void
.end method

.method protected onProgressStart()V
    .locals 2

    .prologue
    .line 372
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/AbstractPanel;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/aviary/android/feather/effects/AbstractPanel;->mListenerHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 375
    :cond_0
    return-void
.end method

.method public onSave()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 547
    iget-object v0, p0, Lcom/aviary/android/feather/effects/AbstractPanel;->mLogger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "onSave"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 549
    iget-boolean v0, p0, Lcom/aviary/android/feather/effects/AbstractPanel;->mSaving:Z

    if-nez v0, :cond_0

    .line 550
    iput-boolean v4, p0, Lcom/aviary/android/feather/effects/AbstractPanel;->mSaving:Z

    .line 551
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/aviary/android/feather/effects/AbstractPanel;->mRenderTime:J

    .line 552
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/AbstractPanel;->onGenerateResult()V

    .line 554
    :cond_0
    return-void
.end method

.method protected recyclePreview()V
    .locals 5

    .prologue
    .line 671
    iget-object v0, p0, Lcom/aviary/android/feather/effects/AbstractPanel;->mPreview:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aviary/android/feather/effects/AbstractPanel;->mPreview:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/aviary/android/feather/effects/AbstractPanel;->mPreview:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/aviary/android/feather/effects/AbstractPanel;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 672
    iget-object v0, p0, Lcom/aviary/android/feather/effects/AbstractPanel;->mLogger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[recycle] preview Bitmap: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/aviary/android/feather/effects/AbstractPanel;->mPreview:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->warning([Ljava/lang/Object;)V

    .line 673
    iget-object v0, p0, Lcom/aviary/android/feather/effects/AbstractPanel;->mPreview:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 675
    :cond_0
    return-void
.end method

.method protected restoreToolbarTitle()V
    .locals 2

    .prologue
    .line 356
    iget-object v0, p0, Lcom/aviary/android/feather/effects/AbstractPanel;->mListenerHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 357
    return-void
.end method

.method protected setApplyEnabled(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 365
    iget-object v1, p0, Lcom/aviary/android/feather/effects/AbstractPanel;->mListenerHandler:Landroid/os/Handler;

    if-eqz p1, :cond_0

    const/16 v0, 0xb

    :goto_0
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 366
    return-void

    .line 365
    :cond_0
    const/16 v0, 0xa

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 405
    iput-boolean p1, p0, Lcom/aviary/android/feather/effects/AbstractPanel;->mEnabled:Z

    .line 406
    return-void
.end method

.method protected setIsChanged(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 597
    iput-boolean p1, p0, Lcom/aviary/android/feather/effects/AbstractPanel;->mChanged:Z

    .line 598
    return-void
.end method

.method public setOnApplyResultListener(Lcom/aviary/android/feather/effects/AbstractPanel$OnApplyResultListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/aviary/android/feather/effects/AbstractPanel$OnApplyResultListener;

    .prologue
    .line 452
    iput-object p1, p0, Lcom/aviary/android/feather/effects/AbstractPanel;->mApplyListener:Lcom/aviary/android/feather/effects/AbstractPanel$OnApplyResultListener;

    .line 453
    return-void
.end method

.method public setOnErrorListener(Lcom/aviary/android/feather/effects/AbstractPanel$OnErrorListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/aviary/android/feather/effects/AbstractPanel$OnErrorListener;

    .prologue
    .line 462
    iput-object p1, p0, Lcom/aviary/android/feather/effects/AbstractPanel;->mErrorListener:Lcom/aviary/android/feather/effects/AbstractPanel$OnErrorListener;

    .line 463
    return-void
.end method

.method public setOnPreviewListener(Lcom/aviary/android/feather/effects/AbstractPanel$OnPreviewListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/aviary/android/feather/effects/AbstractPanel$OnPreviewListener;

    .prologue
    .line 442
    iput-object p1, p0, Lcom/aviary/android/feather/effects/AbstractPanel;->mListener:Lcom/aviary/android/feather/effects/AbstractPanel$OnPreviewListener;

    .line 443
    return-void
.end method

.method public setOnProgressListener(Lcom/aviary/android/feather/effects/AbstractPanel$OnProgressListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/aviary/android/feather/effects/AbstractPanel$OnProgressListener;

    .prologue
    .line 472
    iput-object p1, p0, Lcom/aviary/android/feather/effects/AbstractPanel;->mProgressListener:Lcom/aviary/android/feather/effects/AbstractPanel$OnProgressListener;

    .line 473
    return-void
.end method

.method protected setToolbarTitle(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 349
    iget-object v0, p0, Lcom/aviary/android/feather/effects/AbstractPanel;->mListenerHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 350
    return-void
.end method
