.class Lcom/aviary/android/feather/effects/EnhanceEffectPanel$RenderTask;
.super Landroid/os/AsyncTask;
.source "EnhanceEffectPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aviary/android/feather/effects/EnhanceEffectPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RenderTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/aviary/android/feather/library/filters/EnhanceFilter$Types;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field mError:Ljava/lang/String;

.field volatile renderFilter:Lcom/aviary/android/feather/library/filters/EnhanceFilter;

.field final synthetic this$0:Lcom/aviary/android/feather/effects/EnhanceEffectPanel;


# direct methods
.method public constructor <init>(Lcom/aviary/android/feather/effects/EnhanceEffectPanel;)V
    .locals 1
    .param p1, "this$0"    # Lcom/aviary/android/feather/effects/EnhanceEffectPanel;

    .prologue
    .line 193
    iput-object p1, p0, Lcom/aviary/android/feather/effects/EnhanceEffectPanel$RenderTask;->this$0:Lcom/aviary/android/feather/effects/EnhanceEffectPanel;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 194
    # getter for: Lcom/aviary/android/feather/effects/EnhanceEffectPanel;->mFilterType:Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;
    invoke-static {p1}, Lcom/aviary/android/feather/effects/EnhanceEffectPanel;->access$000(Lcom/aviary/android/feather/effects/EnhanceEffectPanel;)Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    move-result-object v0

    invoke-static {v0}, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory;->get(Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;)Lcom/aviary/android/feather/headless/filters/IFilter;

    move-result-object v0

    check-cast v0, Lcom/aviary/android/feather/library/filters/EnhanceFilter;

    iput-object v0, p0, Lcom/aviary/android/feather/effects/EnhanceEffectPanel$RenderTask;->renderFilter:Lcom/aviary/android/feather/library/filters/EnhanceFilter;

    .line 195
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aviary/android/feather/effects/EnhanceEffectPanel$RenderTask;->mError:Ljava/lang/String;

    .line 196
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/aviary/android/feather/library/filters/EnhanceFilter$Types;)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "params"    # [Lcom/aviary/android/feather/library/filters/EnhanceFilter$Types;

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 206
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/EnhanceEffectPanel$RenderTask;->isCancelled()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v1, v3

    .line 223
    :cond_0
    :goto_0
    return-object v1

    .line 208
    :cond_1
    const/4 v1, 0x0

    .line 209
    .local v1, "result":Landroid/graphics/Bitmap;
    iget-object v4, p0, Lcom/aviary/android/feather/effects/EnhanceEffectPanel$RenderTask;->this$0:Lcom/aviary/android/feather/effects/EnhanceEffectPanel;

    iput-boolean v5, v4, Lcom/aviary/android/feather/effects/EnhanceEffectPanel;->mIsRendering:Z

    .line 210
    const/4 v4, 0x0

    aget-object v2, p1, v4

    .line 211
    .local v2, "type":Lcom/aviary/android/feather/library/filters/EnhanceFilter$Types;
    iget-object v4, p0, Lcom/aviary/android/feather/effects/EnhanceEffectPanel$RenderTask;->renderFilter:Lcom/aviary/android/feather/library/filters/EnhanceFilter;

    invoke-virtual {v4, v2}, Lcom/aviary/android/feather/library/filters/EnhanceFilter;->setType(Lcom/aviary/android/feather/library/filters/EnhanceFilter$Types;)V

    .line 214
    :try_start_0
    iget-object v4, p0, Lcom/aviary/android/feather/effects/EnhanceEffectPanel$RenderTask;->renderFilter:Lcom/aviary/android/feather/library/filters/EnhanceFilter;

    iget-object v5, p0, Lcom/aviary/android/feather/effects/EnhanceEffectPanel$RenderTask;->this$0:Lcom/aviary/android/feather/effects/EnhanceEffectPanel;

    iget-object v5, v5, Lcom/aviary/android/feather/effects/EnhanceEffectPanel;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/aviary/android/feather/effects/EnhanceEffectPanel$RenderTask;->this$0:Lcom/aviary/android/feather/effects/EnhanceEffectPanel;

    iget-object v6, v6, Lcom/aviary/android/feather/effects/EnhanceEffectPanel;->mPreview:Landroid/graphics/Bitmap;

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/aviary/android/feather/library/filters/EnhanceFilter;->execute(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 215
    iget-object v4, p0, Lcom/aviary/android/feather/effects/EnhanceEffectPanel$RenderTask;->this$0:Lcom/aviary/android/feather/effects/EnhanceEffectPanel;

    iget-object v5, p0, Lcom/aviary/android/feather/effects/EnhanceEffectPanel$RenderTask;->renderFilter:Lcom/aviary/android/feather/library/filters/EnhanceFilter;

    invoke-virtual {v5}, Lcom/aviary/android/feather/library/filters/EnhanceFilter;->getActions()Lcom/aviary/android/feather/headless/moa/MoaActionList;

    move-result-object v5

    iput-object v5, v4, Lcom/aviary/android/feather/effects/EnhanceEffectPanel;->mActions:Lcom/aviary/android/feather/headless/moa/MoaActionList;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/EnhanceEffectPanel$RenderTask;->isCancelled()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v1, v3

    goto :goto_0

    .line 216
    :catch_0
    move-exception v0

    .line 217
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 218
    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/aviary/android/feather/effects/EnhanceEffectPanel$RenderTask;->mError:Ljava/lang/String;

    move-object v1, v3

    .line 219
    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 187
    check-cast p1, [Lcom/aviary/android/feather/library/filters/EnhanceFilter$Types;

    invoke-virtual {p0, p1}, Lcom/aviary/android/feather/effects/EnhanceEffectPanel$RenderTask;->doInBackground([Lcom/aviary/android/feather/library/filters/EnhanceFilter$Types;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/aviary/android/feather/effects/EnhanceEffectPanel$RenderTask;->renderFilter:Lcom/aviary/android/feather/library/filters/EnhanceFilter;

    invoke-virtual {v0}, Lcom/aviary/android/feather/library/filters/EnhanceFilter;->stop()Z

    .line 256
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 257
    return-void
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 5
    .param p1, "result"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 228
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 230
    iget-object v0, p0, Lcom/aviary/android/feather/effects/EnhanceEffectPanel$RenderTask;->this$0:Lcom/aviary/android/feather/effects/EnhanceEffectPanel;

    invoke-virtual {v0}, Lcom/aviary/android/feather/effects/EnhanceEffectPanel;->isActive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 251
    :cond_0
    :goto_0
    return-void

    .line 232
    :cond_1
    iget-object v0, p0, Lcom/aviary/android/feather/effects/EnhanceEffectPanel$RenderTask;->this$0:Lcom/aviary/android/feather/effects/EnhanceEffectPanel;

    invoke-virtual {v0}, Lcom/aviary/android/feather/effects/EnhanceEffectPanel;->onProgressEnd()V

    .line 234
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/EnhanceEffectPanel$RenderTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 236
    if-eqz p1, :cond_4

    .line 238
    invoke-static {}, Lcom/aviary/android/feather/library/utils/SystemUtils;->isHoneyComb()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 239
    iget-object v0, p0, Lcom/aviary/android/feather/effects/EnhanceEffectPanel$RenderTask;->this$0:Lcom/aviary/android/feather/effects/EnhanceEffectPanel;

    iget-object v0, v0, Lcom/aviary/android/feather/effects/EnhanceEffectPanel;->mPreview:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/aviary/android/feather/headless/moa/Moa;->notifyPixelsChanged(Landroid/graphics/Bitmap;)V

    .line 242
    :cond_2
    iget-object v0, p0, Lcom/aviary/android/feather/effects/EnhanceEffectPanel$RenderTask;->this$0:Lcom/aviary/android/feather/effects/EnhanceEffectPanel;

    iget-object v1, p0, Lcom/aviary/android/feather/effects/EnhanceEffectPanel$RenderTask;->this$0:Lcom/aviary/android/feather/effects/EnhanceEffectPanel;

    iget-object v1, v1, Lcom/aviary/android/feather/effects/EnhanceEffectPanel;->mPreview:Landroid/graphics/Bitmap;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v3, v2}, Lcom/aviary/android/feather/effects/EnhanceEffectPanel;->onPreviewChanged(Landroid/graphics/Bitmap;ZZ)V

    .line 249
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/aviary/android/feather/effects/EnhanceEffectPanel$RenderTask;->this$0:Lcom/aviary/android/feather/effects/EnhanceEffectPanel;

    iput-boolean v3, v0, Lcom/aviary/android/feather/effects/EnhanceEffectPanel;->mIsRendering:Z

    .line 250
    iget-object v0, p0, Lcom/aviary/android/feather/effects/EnhanceEffectPanel$RenderTask;->this$0:Lcom/aviary/android/feather/effects/EnhanceEffectPanel;

    # setter for: Lcom/aviary/android/feather/effects/EnhanceEffectPanel;->mCurrentTask:Lcom/aviary/android/feather/effects/EnhanceEffectPanel$RenderTask;
    invoke-static {v0, v4}, Lcom/aviary/android/feather/effects/EnhanceEffectPanel;->access$102(Lcom/aviary/android/feather/effects/EnhanceEffectPanel;Lcom/aviary/android/feather/effects/EnhanceEffectPanel$RenderTask;)Lcom/aviary/android/feather/effects/EnhanceEffectPanel$RenderTask;

    goto :goto_0

    .line 244
    :cond_4
    iget-object v0, p0, Lcom/aviary/android/feather/effects/EnhanceEffectPanel$RenderTask;->mError:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 245
    iget-object v0, p0, Lcom/aviary/android/feather/effects/EnhanceEffectPanel$RenderTask;->this$0:Lcom/aviary/android/feather/effects/EnhanceEffectPanel;

    iget-object v1, p0, Lcom/aviary/android/feather/effects/EnhanceEffectPanel$RenderTask;->mError:Ljava/lang/String;

    const v2, 0x104000a

    invoke-virtual {v0, v1, v2, v4}, Lcom/aviary/android/feather/effects/EnhanceEffectPanel;->onGenericError(Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)V

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 187
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/aviary/android/feather/effects/EnhanceEffectPanel$RenderTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 200
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 201
    iget-object v0, p0, Lcom/aviary/android/feather/effects/EnhanceEffectPanel$RenderTask;->this$0:Lcom/aviary/android/feather/effects/EnhanceEffectPanel;

    invoke-virtual {v0}, Lcom/aviary/android/feather/effects/EnhanceEffectPanel;->onProgressStart()V

    .line 202
    return-void
.end method
