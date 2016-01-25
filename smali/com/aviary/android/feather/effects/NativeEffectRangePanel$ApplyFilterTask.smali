.class Lcom/aviary/android/feather/effects/NativeEffectRangePanel$ApplyFilterTask;
.super Landroid/os/AsyncTask;
.source "NativeEffectRangePanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aviary/android/feather/effects/NativeEffectRangePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ApplyFilterTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/graphics/Bitmap;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field mResult:Lcom/aviary/android/feather/headless/moa/MoaResult;

.field mShowProgress:Z

.field final synthetic this$0:Lcom/aviary/android/feather/effects/NativeEffectRangePanel;


# direct methods
.method public constructor <init>(Lcom/aviary/android/feather/effects/NativeEffectRangePanel;FZ)V
    .locals 2
    .param p1, "this$0"    # Lcom/aviary/android/feather/effects/NativeEffectRangePanel;
    .param p2, "value"    # F
    .param p3, "showProgress"    # Z

    .prologue
    .line 144
    iput-object p1, p0, Lcom/aviary/android/feather/effects/NativeEffectRangePanel$ApplyFilterTask;->this$0:Lcom/aviary/android/feather/effects/NativeEffectRangePanel;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 145
    iput-boolean p3, p0, Lcom/aviary/android/feather/effects/NativeEffectRangePanel$ApplyFilterTask;->mShowProgress:Z

    .line 146
    iget-object v0, p1, Lcom/aviary/android/feather/effects/NativeEffectRangePanel;->mFilter:Lcom/aviary/android/feather/headless/filters/IFilter;

    check-cast v0, Lcom/aviary/android/feather/headless/filters/INativeRangeFilter;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/aviary/android/feather/headless/filters/INativeRangeFilter;->setValue(Ljava/lang/Float;)V

    .line 147
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 10
    .param p1, "arg0"    # [Landroid/graphics/Bitmap;

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 182
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/NativeEffectRangePanel$ApplyFilterTask;->isCancelled()Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v6

    .line 201
    :goto_0
    return-object v5

    .line 183
    :cond_0
    iget-object v5, p0, Lcom/aviary/android/feather/effects/NativeEffectRangePanel$ApplyFilterTask;->this$0:Lcom/aviary/android/feather/effects/NativeEffectRangePanel;

    iput-boolean v8, v5, Lcom/aviary/android/feather/effects/NativeEffectRangePanel;->mIsRendering:Z

    .line 185
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 187
    .local v1, "t1":J
    :try_start_0
    iget-object v5, p0, Lcom/aviary/android/feather/effects/NativeEffectRangePanel$ApplyFilterTask;->mResult:Lcom/aviary/android/feather/headless/moa/MoaResult;

    invoke-virtual {v5}, Lcom/aviary/android/feather/headless/moa/MoaResult;->execute()V

    .line 188
    iget-object v7, p0, Lcom/aviary/android/feather/effects/NativeEffectRangePanel$ApplyFilterTask;->this$0:Lcom/aviary/android/feather/effects/NativeEffectRangePanel;

    iget-object v5, p0, Lcom/aviary/android/feather/effects/NativeEffectRangePanel$ApplyFilterTask;->this$0:Lcom/aviary/android/feather/effects/NativeEffectRangePanel;

    iget-object v5, v5, Lcom/aviary/android/feather/effects/NativeEffectRangePanel;->mFilter:Lcom/aviary/android/feather/headless/filters/IFilter;

    check-cast v5, Lcom/aviary/android/feather/headless/filters/INativeRangeFilter;

    invoke-interface {v5}, Lcom/aviary/android/feather/headless/filters/INativeRangeFilter;->getActions()Lcom/aviary/android/feather/headless/moa/MoaActionList;

    move-result-object v5

    iput-object v5, v7, Lcom/aviary/android/feather/effects/NativeEffectRangePanel;->mActions:Lcom/aviary/android/feather/headless/moa/MoaActionList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 196
    .local v3, "t2":J
    iget-object v5, p0, Lcom/aviary/android/feather/effects/NativeEffectRangePanel$ApplyFilterTask;->this$0:Lcom/aviary/android/feather/effects/NativeEffectRangePanel;

    iget-object v5, v5, Lcom/aviary/android/feather/effects/NativeEffectRangePanel;->mTrackingAttributes:Ljava/util/HashMap;

    if-eqz v5, :cond_1

    .line 197
    iget-object v5, p0, Lcom/aviary/android/feather/effects/NativeEffectRangePanel$ApplyFilterTask;->this$0:Lcom/aviary/android/feather/effects/NativeEffectRangePanel;

    iget-object v5, v5, Lcom/aviary/android/feather/effects/NativeEffectRangePanel;->mTrackingAttributes:Ljava/util/HashMap;

    const-string/jumbo v7, "renderTime"

    sub-long v8, v3, v1

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    :cond_1
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/NativeEffectRangePanel$ApplyFilterTask;->isCancelled()Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v5, v6

    goto :goto_0

    .line 189
    .end local v3    # "t2":J
    :catch_0
    move-exception v0

    .line 190
    .local v0, "exception":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 191
    iget-object v5, p0, Lcom/aviary/android/feather/effects/NativeEffectRangePanel$ApplyFilterTask;->this$0:Lcom/aviary/android/feather/effects/NativeEffectRangePanel;

    iget-object v5, v5, Lcom/aviary/android/feather/effects/NativeEffectRangePanel;->mLogger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    new-array v7, v8, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-interface {v5, v7}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->error([Ljava/lang/Object;)V

    move-object v5, v6

    .line 192
    goto :goto_0

    .line 201
    .end local v0    # "exception":Ljava/lang/Exception;
    .restart local v3    # "t2":J
    :cond_2
    iget-object v5, p0, Lcom/aviary/android/feather/effects/NativeEffectRangePanel$ApplyFilterTask;->this$0:Lcom/aviary/android/feather/effects/NativeEffectRangePanel;

    iget-object v5, v5, Lcom/aviary/android/feather/effects/NativeEffectRangePanel;->mPreview:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 139
    check-cast p1, [Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/aviary/android/feather/effects/NativeEffectRangePanel$ApplyFilterTask;->doInBackground([Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 167
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 168
    iget-object v0, p0, Lcom/aviary/android/feather/effects/NativeEffectRangePanel$ApplyFilterTask;->this$0:Lcom/aviary/android/feather/effects/NativeEffectRangePanel;

    iget-object v0, v0, Lcom/aviary/android/feather/effects/NativeEffectRangePanel;->mLogger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v4

    const/4 v2, 0x1

    const-string/jumbo v3, "onCancelled"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 169
    iget-object v0, p0, Lcom/aviary/android/feather/effects/NativeEffectRangePanel$ApplyFilterTask;->mResult:Lcom/aviary/android/feather/headless/moa/MoaResult;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/aviary/android/feather/effects/NativeEffectRangePanel$ApplyFilterTask;->mResult:Lcom/aviary/android/feather/headless/moa/MoaResult;

    invoke-virtual {v0}, Lcom/aviary/android/feather/headless/moa/MoaResult;->cancel()V

    .line 173
    :cond_0
    iget-boolean v0, p0, Lcom/aviary/android/feather/effects/NativeEffectRangePanel$ApplyFilterTask;->mShowProgress:Z

    if-eqz v0, :cond_1

    .line 174
    iget-object v0, p0, Lcom/aviary/android/feather/effects/NativeEffectRangePanel$ApplyFilterTask;->this$0:Lcom/aviary/android/feather/effects/NativeEffectRangePanel;

    invoke-virtual {v0}, Lcom/aviary/android/feather/effects/NativeEffectRangePanel;->onProgressEnd()V

    .line 176
    :cond_1
    iget-object v0, p0, Lcom/aviary/android/feather/effects/NativeEffectRangePanel$ApplyFilterTask;->this$0:Lcom/aviary/android/feather/effects/NativeEffectRangePanel;

    iput-boolean v4, v0, Lcom/aviary/android/feather/effects/NativeEffectRangePanel;->mIsRendering:Z

    .line 177
    return-void
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 5
    .param p1, "result"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 206
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 208
    iget-object v0, p0, Lcom/aviary/android/feather/effects/NativeEffectRangePanel$ApplyFilterTask;->this$0:Lcom/aviary/android/feather/effects/NativeEffectRangePanel;

    invoke-virtual {v0}, Lcom/aviary/android/feather/effects/NativeEffectRangePanel;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 229
    :goto_0
    return-void

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/aviary/android/feather/effects/NativeEffectRangePanel$ApplyFilterTask;->this$0:Lcom/aviary/android/feather/effects/NativeEffectRangePanel;

    iget-object v0, v0, Lcom/aviary/android/feather/effects/NativeEffectRangePanel;->mLogger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v3

    const-string/jumbo v2, "onPostExecute"

    aput-object v2, v1, v4

    invoke-interface {v0, v1}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 212
    iget-boolean v0, p0, Lcom/aviary/android/feather/effects/NativeEffectRangePanel$ApplyFilterTask;->mShowProgress:Z

    if-eqz v0, :cond_1

    .line 213
    iget-object v0, p0, Lcom/aviary/android/feather/effects/NativeEffectRangePanel$ApplyFilterTask;->this$0:Lcom/aviary/android/feather/effects/NativeEffectRangePanel;

    invoke-virtual {v0}, Lcom/aviary/android/feather/effects/NativeEffectRangePanel;->onProgressEnd()V

    .line 216
    :cond_1
    if-eqz p1, :cond_3

    .line 217
    invoke-static {}, Lcom/aviary/android/feather/library/utils/SystemUtils;->isHoneyComb()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 218
    iget-object v0, p0, Lcom/aviary/android/feather/effects/NativeEffectRangePanel$ApplyFilterTask;->this$0:Lcom/aviary/android/feather/effects/NativeEffectRangePanel;

    iget-object v0, v0, Lcom/aviary/android/feather/effects/NativeEffectRangePanel;->mPreview:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/aviary/android/feather/headless/moa/Moa;->notifyPixelsChanged(Landroid/graphics/Bitmap;)V

    .line 220
    :cond_2
    iget-object v0, p0, Lcom/aviary/android/feather/effects/NativeEffectRangePanel$ApplyFilterTask;->this$0:Lcom/aviary/android/feather/effects/NativeEffectRangePanel;

    invoke-virtual {v0}, Lcom/aviary/android/feather/effects/NativeEffectRangePanel;->onPreviewUpdated()V

    .line 227
    :goto_1
    iget-object v0, p0, Lcom/aviary/android/feather/effects/NativeEffectRangePanel$ApplyFilterTask;->this$0:Lcom/aviary/android/feather/effects/NativeEffectRangePanel;

    iput-boolean v3, v0, Lcom/aviary/android/feather/effects/NativeEffectRangePanel;->mIsRendering:Z

    .line 228
    iget-object v0, p0, Lcom/aviary/android/feather/effects/NativeEffectRangePanel$ApplyFilterTask;->this$0:Lcom/aviary/android/feather/effects/NativeEffectRangePanel;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/aviary/android/feather/effects/NativeEffectRangePanel;->mCurrentTask:Lcom/aviary/android/feather/effects/NativeEffectRangePanel$ApplyFilterTask;

    goto :goto_0

    .line 223
    :cond_3
    iget-object v0, p0, Lcom/aviary/android/feather/effects/NativeEffectRangePanel$ApplyFilterTask;->this$0:Lcom/aviary/android/feather/effects/NativeEffectRangePanel;

    iget-object v0, v0, Lcom/aviary/android/feather/effects/NativeEffectRangePanel;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/aviary/android/feather/effects/NativeEffectRangePanel$ApplyFilterTask;->this$0:Lcom/aviary/android/feather/effects/NativeEffectRangePanel;

    iget-object v1, v1, Lcom/aviary/android/feather/effects/NativeEffectRangePanel;->mPreview:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/aviary/android/feather/library/utils/BitmapUtils;->copy(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 224
    iget-object v0, p0, Lcom/aviary/android/feather/effects/NativeEffectRangePanel$ApplyFilterTask;->this$0:Lcom/aviary/android/feather/effects/NativeEffectRangePanel;

    iget-object v1, p0, Lcom/aviary/android/feather/effects/NativeEffectRangePanel$ApplyFilterTask;->this$0:Lcom/aviary/android/feather/effects/NativeEffectRangePanel;

    iget-object v1, v1, Lcom/aviary/android/feather/effects/NativeEffectRangePanel;->mPreview:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v3, v4}, Lcom/aviary/android/feather/effects/NativeEffectRangePanel;->onPreviewChanged(Landroid/graphics/Bitmap;ZZ)V

    .line 225
    iget-object v0, p0, Lcom/aviary/android/feather/effects/NativeEffectRangePanel$ApplyFilterTask;->this$0:Lcom/aviary/android/feather/effects/NativeEffectRangePanel;

    invoke-virtual {v0, v3}, Lcom/aviary/android/feather/effects/NativeEffectRangePanel;->setIsChanged(Z)V

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 139
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/aviary/android/feather/effects/NativeEffectRangePanel$ApplyFilterTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 151
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 152
    iget-object v1, p0, Lcom/aviary/android/feather/effects/NativeEffectRangePanel$ApplyFilterTask;->this$0:Lcom/aviary/android/feather/effects/NativeEffectRangePanel;

    iget-object v1, v1, Lcom/aviary/android/feather/effects/NativeEffectRangePanel;->mLogger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const-string/jumbo v3, "onPreExecute"

    aput-object v3, v2, v4

    invoke-interface {v1, v2}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 155
    :try_start_0
    iget-object v1, p0, Lcom/aviary/android/feather/effects/NativeEffectRangePanel$ApplyFilterTask;->this$0:Lcom/aviary/android/feather/effects/NativeEffectRangePanel;

    iget-object v1, v1, Lcom/aviary/android/feather/effects/NativeEffectRangePanel;->mFilter:Lcom/aviary/android/feather/headless/filters/IFilter;

    check-cast v1, Lcom/aviary/android/feather/headless/filters/INativeRangeFilter;

    iget-object v2, p0, Lcom/aviary/android/feather/effects/NativeEffectRangePanel$ApplyFilterTask;->this$0:Lcom/aviary/android/feather/effects/NativeEffectRangePanel;

    iget-object v2, v2, Lcom/aviary/android/feather/effects/NativeEffectRangePanel;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/aviary/android/feather/effects/NativeEffectRangePanel$ApplyFilterTask;->this$0:Lcom/aviary/android/feather/effects/NativeEffectRangePanel;

    iget-object v3, v3, Lcom/aviary/android/feather/effects/NativeEffectRangePanel;->mPreview:Landroid/graphics/Bitmap;

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/aviary/android/feather/headless/filters/INativeRangeFilter;->prepare(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;II)Lcom/aviary/android/feather/headless/moa/MoaResult;

    move-result-object v1

    iput-object v1, p0, Lcom/aviary/android/feather/effects/NativeEffectRangePanel$ApplyFilterTask;->mResult:Lcom/aviary/android/feather/headless/moa/MoaResult;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    :goto_0
    iget-boolean v1, p0, Lcom/aviary/android/feather/effects/NativeEffectRangePanel$ApplyFilterTask;->mShowProgress:Z

    if-eqz v1, :cond_0

    .line 161
    iget-object v1, p0, Lcom/aviary/android/feather/effects/NativeEffectRangePanel$ApplyFilterTask;->this$0:Lcom/aviary/android/feather/effects/NativeEffectRangePanel;

    invoke-virtual {v1}, Lcom/aviary/android/feather/effects/NativeEffectRangePanel;->onProgressStart()V

    .line 163
    :cond_0
    return-void

    .line 156
    :catch_0
    move-exception v0

    .line 157
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
