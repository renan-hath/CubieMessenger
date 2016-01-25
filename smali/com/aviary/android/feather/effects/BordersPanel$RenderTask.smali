.class public Lcom/aviary/android/feather/effects/BordersPanel$RenderTask;
.super Lcom/aviary/android/feather/library/utils/UserTask;
.source "BordersPanel.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aviary/android/feather/effects/BordersPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "RenderTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/aviary/android/feather/library/utils/UserTask",
        "<",
        "Lcom/aviary/android/feather/effects/BordersPanel$EffectPack;",
        "Landroid/graphics/Bitmap;",
        "Landroid/graphics/Bitmap;",
        ">;",
        "Landroid/content/DialogInterface$OnCancelListener;"
    }
.end annotation


# instance fields
.field mError:Ljava/lang/String;

.field mMoaMainExecutor:Lcom/aviary/android/feather/headless/moa/MoaResult;

.field mMoaPreviewExecutor:Lcom/aviary/android/feather/headless/moa/MoaResult;

.field mPosition:I

.field final synthetic this$0:Lcom/aviary/android/feather/effects/BordersPanel;


# direct methods
.method public constructor <init>(Lcom/aviary/android/feather/effects/BordersPanel;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/aviary/android/feather/effects/BordersPanel;
    .param p2, "position"    # I

    .prologue
    .line 1777
    iput-object p1, p0, Lcom/aviary/android/feather/effects/BordersPanel$RenderTask;->this$0:Lcom/aviary/android/feather/effects/BordersPanel;

    invoke-direct {p0}, Lcom/aviary/android/feather/library/utils/UserTask;-><init>()V

    .line 1778
    iput p2, p0, Lcom/aviary/android/feather/effects/BordersPanel$RenderTask;->mPosition:I

    .line 1779
    return-void
.end method

.method private initFilter(Lcom/aviary/android/feather/effects/BordersPanel$EffectPack;ILjava/lang/String;)Lcom/aviary/android/feather/headless/filters/INativeFilter;
    .locals 8
    .param p1, "pack"    # Lcom/aviary/android/feather/effects/BordersPanel$EffectPack;
    .param p2, "position"    # I
    .param p3, "label"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1791
    :try_start_0
    iget-object v3, p0, Lcom/aviary/android/feather/effects/BordersPanel$RenderTask;->this$0:Lcom/aviary/android/feather/effects/BordersPanel;

    const/4 v5, 0x1

    invoke-virtual {v3, p1, p2, p3, v5}, Lcom/aviary/android/feather/effects/BordersPanel;->loadNativeFilter(Lcom/aviary/android/feather/effects/BordersPanel$EffectPack;ILjava/lang/CharSequence;Z)Lcom/aviary/android/feather/headless/filters/INativeFilter;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1797
    .local v1, "filter":Lcom/aviary/android/feather/headless/filters/INativeFilter;
    iget-object v5, p0, Lcom/aviary/android/feather/effects/BordersPanel$RenderTask;->this$0:Lcom/aviary/android/feather/effects/BordersPanel;

    invoke-interface {v1}, Lcom/aviary/android/feather/headless/filters/INativeFilter;->getActions()Lcom/aviary/android/feather/headless/moa/MoaActionList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aviary/android/feather/headless/moa/MoaActionList;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/aviary/android/feather/headless/moa/MoaActionList;

    iput-object v3, v5, Lcom/aviary/android/feather/effects/BordersPanel;->mActions:Lcom/aviary/android/feather/headless/moa/MoaActionList;

    .line 1799
    instance-of v3, v1, Lcom/aviary/android/feather/library/filters/BorderFilter;

    if-eqz v3, :cond_0

    move-object v3, v1

    check-cast v3, Lcom/aviary/android/feather/library/filters/BorderFilter;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/aviary/android/feather/library/filters/BorderFilter;->setHiRes(Z)V

    .line 1802
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/aviary/android/feather/effects/BordersPanel$RenderTask;->this$0:Lcom/aviary/android/feather/effects/BordersPanel;

    iget-object v3, v3, Lcom/aviary/android/feather/effects/BordersPanel;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/aviary/android/feather/effects/BordersPanel$RenderTask;->this$0:Lcom/aviary/android/feather/effects/BordersPanel;

    iget-object v5, v5, Lcom/aviary/android/feather/effects/BordersPanel;->mPreview:Landroid/graphics/Bitmap;

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-interface {v1, v3, v5, v6, v7}, Lcom/aviary/android/feather/headless/filters/INativeFilter;->prepare(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;II)Lcom/aviary/android/feather/headless/moa/MoaResult;

    move-result-object v3

    iput-object v3, p0, Lcom/aviary/android/feather/effects/BordersPanel$RenderTask;->mMoaMainExecutor:Lcom/aviary/android/feather/headless/moa/MoaResult;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1808
    .end local v1    # "filter":Lcom/aviary/android/feather/headless/filters/INativeFilter;
    :goto_0
    return-object v1

    .line 1792
    :catch_0
    move-exception v2

    .line 1793
    .local v2, "t":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v1, v4

    .line 1794
    goto :goto_0

    .line 1803
    .end local v2    # "t":Ljava/lang/Throwable;
    .restart local v1    # "filter":Lcom/aviary/android/feather/headless/filters/INativeFilter;
    :catch_1
    move-exception v0

    .line 1804
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 1805
    iput-object v4, p0, Lcom/aviary/android/feather/effects/BordersPanel$RenderTask;->mMoaMainExecutor:Lcom/aviary/android/feather/headless/moa/MoaResult;

    move-object v1, v4

    .line 1806
    goto :goto_0
.end method


# virtual methods
.method public doFullPreviewInBackground(Ljava/lang/String;)V
    .locals 1
    .param p1, "effectName"    # Ljava/lang/String;

    .prologue
    .line 1831
    iget-object v0, p0, Lcom/aviary/android/feather/effects/BordersPanel$RenderTask;->mMoaMainExecutor:Lcom/aviary/android/feather/headless/moa/MoaResult;

    invoke-virtual {v0}, Lcom/aviary/android/feather/headless/moa/MoaResult;->execute()V

    .line 1832
    return-void
.end method

.method public varargs doInBackground([Lcom/aviary/android/feather/effects/BordersPanel$EffectPack;)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "params"    # [Lcom/aviary/android/feather/effects/BordersPanel$EffectPack;

    .prologue
    const/4 v5, 0x0

    .line 1837
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/BordersPanel$RenderTask;->isCancelled()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v5

    .line 1871
    :goto_0
    return-object v4

    .line 1839
    :cond_0
    const/4 v4, 0x0

    aget-object v3, p1, v4

    .line 1841
    .local v3, "pack":Lcom/aviary/android/feather/effects/BordersPanel$EffectPack;
    iget-object v6, p0, Lcom/aviary/android/feather/effects/BordersPanel$RenderTask;->this$0:Lcom/aviary/android/feather/effects/BordersPanel;

    iget v4, p0, Lcom/aviary/android/feather/effects/BordersPanel$RenderTask;->mPosition:I

    invoke-virtual {v3, v4}, Lcom/aviary/android/feather/effects/BordersPanel$EffectPack;->getItemAt(I)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v6, Lcom/aviary/android/feather/effects/BordersPanel;->mRenderedEffect:Ljava/lang/String;

    .line 1842
    iget-object v6, p0, Lcom/aviary/android/feather/effects/BordersPanel$RenderTask;->this$0:Lcom/aviary/android/feather/effects/BordersPanel;

    iget-object v4, v3, Lcom/aviary/android/feather/effects/BordersPanel$EffectPack;->mPackageName:Ljava/lang/CharSequence;

    check-cast v4, Ljava/lang/String;

    iput-object v4, v6, Lcom/aviary/android/feather/effects/BordersPanel;->mRenderedPackName:Ljava/lang/String;

    .line 1844
    iget v4, p0, Lcom/aviary/android/feather/effects/BordersPanel$RenderTask;->mPosition:I

    invoke-virtual {v3, v4}, Lcom/aviary/android/feather/effects/BordersPanel$EffectPack;->getItemAt(I)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1845
    .local v2, "mEffect":Ljava/lang/String;
    iget v4, p0, Lcom/aviary/android/feather/effects/BordersPanel$RenderTask;->mPosition:I

    invoke-direct {p0, v3, v4, v2}, Lcom/aviary/android/feather/effects/BordersPanel$RenderTask;->initFilter(Lcom/aviary/android/feather/effects/BordersPanel$EffectPack;ILjava/lang/String;)Lcom/aviary/android/feather/headless/filters/INativeFilter;

    move-result-object v1

    .line 1846
    .local v1, "filter":Lcom/aviary/android/feather/headless/filters/INativeFilter;
    if-eqz v1, :cond_1

    .line 1847
    invoke-virtual {p0, v1}, Lcom/aviary/android/feather/effects/BordersPanel$RenderTask;->initPreview(Lcom/aviary/android/feather/headless/filters/INativeFilter;)Lcom/aviary/android/feather/headless/moa/MoaResult;

    move-result-object v4

    iput-object v4, p0, Lcom/aviary/android/feather/effects/BordersPanel$RenderTask;->mMoaPreviewExecutor:Lcom/aviary/android/feather/headless/moa/MoaResult;

    .line 1852
    iget-object v4, p0, Lcom/aviary/android/feather/effects/BordersPanel$RenderTask;->this$0:Lcom/aviary/android/feather/effects/BordersPanel;

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, v4, Lcom/aviary/android/feather/effects/BordersPanel;->mIsRendering:Ljava/lang/Boolean;

    .line 1855
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/BordersPanel$RenderTask;->doSmallPreviewInBackground()V

    .line 1857
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/BordersPanel$RenderTask;->isCancelled()Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v4, v5

    goto :goto_0

    :cond_1
    move-object v4, v5

    .line 1849
    goto :goto_0

    .line 1861
    :cond_2
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/aviary/android/feather/effects/BordersPanel$RenderTask;->doFullPreviewInBackground(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1868
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/BordersPanel$RenderTask;->isCancelled()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1869
    iget-object v4, p0, Lcom/aviary/android/feather/effects/BordersPanel$RenderTask;->mMoaMainExecutor:Lcom/aviary/android/feather/headless/moa/MoaResult;

    iget-object v4, v4, Lcom/aviary/android/feather/headless/moa/MoaResult;->outputBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 1862
    :catch_0
    move-exception v0

    .line 1863
    .local v0, "exception":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/aviary/android/feather/effects/BordersPanel$RenderTask;->mError:Ljava/lang/String;

    .line 1864
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v4, v5

    .line 1865
    goto :goto_0

    .end local v0    # "exception":Ljava/lang/Exception;
    :cond_3
    move-object v4, v5

    .line 1871
    goto :goto_0
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1765
    check-cast p1, [Lcom/aviary/android/feather/effects/BordersPanel$EffectPack;

    invoke-virtual {p0, p1}, Lcom/aviary/android/feather/effects/BordersPanel$RenderTask;->doInBackground([Lcom/aviary/android/feather/effects/BordersPanel$EffectPack;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public doSmallPreviewInBackground()V
    .locals 3

    .prologue
    .line 1820
    iget-object v0, p0, Lcom/aviary/android/feather/effects/BordersPanel$RenderTask;->mMoaPreviewExecutor:Lcom/aviary/android/feather/headless/moa/MoaResult;

    if-eqz v0, :cond_0

    .line 1822
    iget-object v0, p0, Lcom/aviary/android/feather/effects/BordersPanel$RenderTask;->mMoaPreviewExecutor:Lcom/aviary/android/feather/headless/moa/MoaResult;

    invoke-virtual {v0}, Lcom/aviary/android/feather/headless/moa/MoaResult;->execute()V

    .line 1823
    iget-object v0, p0, Lcom/aviary/android/feather/effects/BordersPanel$RenderTask;->mMoaPreviewExecutor:Lcom/aviary/android/feather/headless/moa/MoaResult;

    iget v0, v0, Lcom/aviary/android/feather/headless/moa/MoaResult;->active:I

    if-lez v0, :cond_0

    .line 1824
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/aviary/android/feather/effects/BordersPanel$RenderTask;->mMoaPreviewExecutor:Lcom/aviary/android/feather/headless/moa/MoaResult;

    iget-object v2, v2, Lcom/aviary/android/feather/headless/moa/MoaResult;->outputBitmap:Landroid/graphics/Bitmap;

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/aviary/android/feather/effects/BordersPanel$RenderTask;->publishProgress([Ljava/lang/Object;)V

    .line 1827
    :cond_0
    return-void
.end method

.method protected initPreview(Lcom/aviary/android/feather/headless/filters/INativeFilter;)Lcom/aviary/android/feather/headless/moa/MoaResult;
    .locals 1
    .param p1, "filter"    # Lcom/aviary/android/feather/headless/filters/INativeFilter;

    .prologue
    .line 1812
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onApplyNewBitmap(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "result"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1926
    invoke-static {}, Lcom/aviary/android/feather/library/utils/SystemUtils;->isHoneyComb()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1927
    invoke-static {p1}, Lcom/aviary/android/feather/headless/moa/Moa;->notifyPixelsChanged(Landroid/graphics/Bitmap;)V

    .line 1929
    :cond_0
    iget-object v0, p0, Lcom/aviary/android/feather/effects/BordersPanel$RenderTask;->this$0:Lcom/aviary/android/feather/effects/BordersPanel;

    iget-object v0, v0, Lcom/aviary/android/feather/effects/BordersPanel;->mImageSwitcher:Lcom/aviary/android/feather/widget/AviaryImageSwitcher;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/aviary/android/feather/widget/AviaryImageSwitcher;->setImageBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)V

    .line 1930
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 1954
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/aviary/android/feather/effects/BordersPanel$RenderTask;->cancel(Z)Z

    .line 1955
    return-void
.end method

.method public onCancelled()V
    .locals 2

    .prologue
    .line 1939
    invoke-super {p0}, Lcom/aviary/android/feather/library/utils/UserTask;->onCancelled()V

    .line 1941
    iget-object v0, p0, Lcom/aviary/android/feather/effects/BordersPanel$RenderTask;->mMoaMainExecutor:Lcom/aviary/android/feather/headless/moa/MoaResult;

    if-eqz v0, :cond_0

    .line 1942
    iget-object v0, p0, Lcom/aviary/android/feather/effects/BordersPanel$RenderTask;->mMoaMainExecutor:Lcom/aviary/android/feather/headless/moa/MoaResult;

    invoke-virtual {v0}, Lcom/aviary/android/feather/headless/moa/MoaResult;->cancel()V

    .line 1945
    :cond_0
    iget-object v0, p0, Lcom/aviary/android/feather/effects/BordersPanel$RenderTask;->mMoaPreviewExecutor:Lcom/aviary/android/feather/headless/moa/MoaResult;

    if-eqz v0, :cond_1

    .line 1946
    iget-object v0, p0, Lcom/aviary/android/feather/effects/BordersPanel$RenderTask;->mMoaPreviewExecutor:Lcom/aviary/android/feather/headless/moa/MoaResult;

    invoke-virtual {v0}, Lcom/aviary/android/feather/headless/moa/MoaResult;->cancel()V

    .line 1949
    :cond_1
    iget-object v0, p0, Lcom/aviary/android/feather/effects/BordersPanel$RenderTask;->this$0:Lcom/aviary/android/feather/effects/BordersPanel;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/aviary/android/feather/effects/BordersPanel;->mIsRendering:Ljava/lang/Boolean;

    .line 1950
    return-void
.end method

.method public onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 6
    .param p1, "result"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 1890
    invoke-super {p0, p1}, Lcom/aviary/android/feather/library/utils/UserTask;->onPostExecute(Ljava/lang/Object;)V

    .line 1892
    iget-object v1, p0, Lcom/aviary/android/feather/effects/BordersPanel$RenderTask;->this$0:Lcom/aviary/android/feather/effects/BordersPanel;

    invoke-virtual {v1}, Lcom/aviary/android/feather/effects/BordersPanel;->isActive()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1923
    :goto_0
    return-void

    .line 1894
    :cond_0
    iget-object v1, p0, Lcom/aviary/android/feather/effects/BordersPanel$RenderTask;->this$0:Lcom/aviary/android/feather/effects/BordersPanel;

    iput-object p1, v1, Lcom/aviary/android/feather/effects/BordersPanel;->mPreview:Landroid/graphics/Bitmap;

    .line 1896
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/aviary/android/feather/effects/BordersPanel$RenderTask;->mMoaMainExecutor:Lcom/aviary/android/feather/headless/moa/MoaResult;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/aviary/android/feather/effects/BordersPanel$RenderTask;->mMoaMainExecutor:Lcom/aviary/android/feather/headless/moa/MoaResult;

    iget v1, v1, Lcom/aviary/android/feather/headless/moa/MoaResult;->active:I

    if-nez v1, :cond_4

    .line 1898
    :cond_1
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/BordersPanel$RenderTask;->onRestoreOriginalBitmap()V

    .line 1900
    iget-object v1, p0, Lcom/aviary/android/feather/effects/BordersPanel$RenderTask;->mError:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 1901
    iget-object v1, p0, Lcom/aviary/android/feather/effects/BordersPanel$RenderTask;->this$0:Lcom/aviary/android/feather/effects/BordersPanel;

    iget-object v2, p0, Lcom/aviary/android/feather/effects/BordersPanel$RenderTask;->mError:Ljava/lang/String;

    const v3, 0x104000a

    invoke-virtual {v1, v2, v3, v4}, Lcom/aviary/android/feather/effects/BordersPanel;->onGenericError(Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)V

    .line 1904
    :cond_2
    iget-object v1, p0, Lcom/aviary/android/feather/effects/BordersPanel$RenderTask;->this$0:Lcom/aviary/android/feather/effects/BordersPanel;

    invoke-virtual {v1, v5}, Lcom/aviary/android/feather/effects/BordersPanel;->setIsChanged(Z)V

    .line 1905
    iget-object v1, p0, Lcom/aviary/android/feather/effects/BordersPanel$RenderTask;->this$0:Lcom/aviary/android/feather/effects/BordersPanel;

    iput-object v4, v1, Lcom/aviary/android/feather/effects/BordersPanel;->mActions:Lcom/aviary/android/feather/headless/moa/MoaActionList;

    .line 1919
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/aviary/android/feather/effects/BordersPanel$RenderTask;->this$0:Lcom/aviary/android/feather/effects/BordersPanel;

    invoke-virtual {v1}, Lcom/aviary/android/feather/effects/BordersPanel;->onProgressEnd()V

    .line 1921
    iget-object v1, p0, Lcom/aviary/android/feather/effects/BordersPanel$RenderTask;->this$0:Lcom/aviary/android/feather/effects/BordersPanel;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v1, Lcom/aviary/android/feather/effects/BordersPanel;->mIsRendering:Ljava/lang/Boolean;

    .line 1922
    iget-object v1, p0, Lcom/aviary/android/feather/effects/BordersPanel$RenderTask;->this$0:Lcom/aviary/android/feather/effects/BordersPanel;

    # setter for: Lcom/aviary/android/feather/effects/BordersPanel;->mCurrentTask:Lcom/aviary/android/feather/effects/BordersPanel$RenderTask;
    invoke-static {v1, v4}, Lcom/aviary/android/feather/effects/BordersPanel;->access$1202(Lcom/aviary/android/feather/effects/BordersPanel;Lcom/aviary/android/feather/effects/BordersPanel$RenderTask;)Lcom/aviary/android/feather/effects/BordersPanel$RenderTask;

    goto :goto_0

    .line 1908
    :cond_4
    invoke-virtual {p0, p1}, Lcom/aviary/android/feather/effects/BordersPanel$RenderTask;->onApplyNewBitmap(Landroid/graphics/Bitmap;)V

    .line 1909
    iget-object v1, p0, Lcom/aviary/android/feather/effects/BordersPanel$RenderTask;->this$0:Lcom/aviary/android/feather/effects/BordersPanel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/aviary/android/feather/effects/BordersPanel;->setIsChanged(Z)V

    .line 1911
    iget-object v1, p0, Lcom/aviary/android/feather/effects/BordersPanel$RenderTask;->this$0:Lcom/aviary/android/feather/effects/BordersPanel;

    iget-object v1, v1, Lcom/aviary/android/feather/effects/BordersPanel;->mRenderedEffect:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/aviary/android/feather/effects/BordersPanel$RenderTask;->this$0:Lcom/aviary/android/feather/effects/BordersPanel;

    iget-object v1, v1, Lcom/aviary/android/feather/effects/BordersPanel;->mRenderedPackName:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 1912
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1913
    .local v0, "attrs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "Pack"

    iget-object v2, p0, Lcom/aviary/android/feather/effects/BordersPanel$RenderTask;->this$0:Lcom/aviary/android/feather/effects/BordersPanel;

    iget-object v2, v2, Lcom/aviary/android/feather/effects/BordersPanel;->mRenderedPackName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1914
    const-string/jumbo v1, "Effect"

    iget-object v2, p0, Lcom/aviary/android/feather/effects/BordersPanel$RenderTask;->this$0:Lcom/aviary/android/feather/effects/BordersPanel;

    iget-object v2, v2, Lcom/aviary/android/feather/effects/BordersPanel;->mRenderedEffect:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1915
    const-string/jumbo v1, "EffectPreview: selected"

    invoke-static {v1, v0}, Lcom/aviary/android/feather/library/tracking/Tracker;->recordTag(Ljava/lang/String;Ljava/util/HashMap;)Z

    goto :goto_1
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1765
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/aviary/android/feather/effects/BordersPanel$RenderTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 1

    .prologue
    .line 1783
    invoke-super {p0}, Lcom/aviary/android/feather/library/utils/UserTask;->onPreExecute()V

    .line 1784
    iget-object v0, p0, Lcom/aviary/android/feather/effects/BordersPanel$RenderTask;->this$0:Lcom/aviary/android/feather/effects/BordersPanel;

    invoke-virtual {v0}, Lcom/aviary/android/feather/effects/BordersPanel;->onProgressStart()V

    .line 1785
    return-void
.end method

.method public varargs onProgressUpdate([Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "values"    # [Landroid/graphics/Bitmap;

    .prologue
    .line 1877
    invoke-super {p0, p1}, Lcom/aviary/android/feather/library/utils/UserTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 1881
    const/4 v2, 0x0

    aget-object v1, p1, v2

    .line 1882
    .local v1, "preview":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    .line 1883
    new-instance v0, Lcom/aviary/android/feather/library/graphics/drawable/FakeBitmapDrawable;

    iget-object v2, p0, Lcom/aviary/android/feather/effects/BordersPanel$RenderTask;->this$0:Lcom/aviary/android/feather/effects/BordersPanel;

    iget-object v2, v2, Lcom/aviary/android/feather/effects/BordersPanel;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/aviary/android/feather/effects/BordersPanel$RenderTask;->this$0:Lcom/aviary/android/feather/effects/BordersPanel;

    iget-object v3, v3, Lcom/aviary/android/feather/effects/BordersPanel;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/aviary/android/feather/library/graphics/drawable/FakeBitmapDrawable;-><init>(Landroid/graphics/Bitmap;II)V

    .line 1884
    .local v0, "drawable":Lcom/aviary/android/feather/library/graphics/drawable/FakeBitmapDrawable;
    iget-object v2, p0, Lcom/aviary/android/feather/effects/BordersPanel$RenderTask;->this$0:Lcom/aviary/android/feather/effects/BordersPanel;

    iget-object v2, v2, Lcom/aviary/android/feather/effects/BordersPanel;->mImageSwitcher:Lcom/aviary/android/feather/widget/AviaryImageSwitcher;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/aviary/android/feather/widget/AviaryImageSwitcher;->setImageDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/Matrix;)V

    .line 1886
    .end local v0    # "drawable":Lcom/aviary/android/feather/library/graphics/drawable/FakeBitmapDrawable;
    :cond_0
    return-void
.end method

.method public bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1765
    check-cast p1, [Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/aviary/android/feather/effects/BordersPanel$RenderTask;->onProgressUpdate([Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected onRestoreOriginalBitmap()V
    .locals 3

    .prologue
    .line 1934
    iget-object v0, p0, Lcom/aviary/android/feather/effects/BordersPanel$RenderTask;->this$0:Lcom/aviary/android/feather/effects/BordersPanel;

    iget-object v0, v0, Lcom/aviary/android/feather/effects/BordersPanel;->mImageSwitcher:Lcom/aviary/android/feather/widget/AviaryImageSwitcher;

    iget-object v1, p0, Lcom/aviary/android/feather/effects/BordersPanel$RenderTask;->this$0:Lcom/aviary/android/feather/effects/BordersPanel;

    iget-object v1, v1, Lcom/aviary/android/feather/effects/BordersPanel;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/aviary/android/feather/widget/AviaryImageSwitcher;->setImageBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)V

    .line 1935
    return-void
.end method
