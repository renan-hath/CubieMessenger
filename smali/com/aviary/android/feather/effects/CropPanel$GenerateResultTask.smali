.class Lcom/aviary/android/feather/effects/CropPanel$GenerateResultTask;
.super Landroid/os/AsyncTask;
.source "CropPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aviary/android/feather/effects/CropPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GenerateResultTask"
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
.field mActionList:Lcom/aviary/android/feather/headless/moa/MoaActionList;

.field mCropRect:Lcom/aviary/android/feather/library/graphics/RectD;

.field final synthetic this$0:Lcom/aviary/android/feather/effects/CropPanel;


# direct methods
.method public constructor <init>(Lcom/aviary/android/feather/effects/CropPanel;Lcom/aviary/android/feather/library/graphics/RectD;)V
    .locals 0
    .param p1, "this$0"    # Lcom/aviary/android/feather/effects/CropPanel;
    .param p2, "rect"    # Lcom/aviary/android/feather/library/graphics/RectD;

    .prologue
    .line 216
    iput-object p1, p0, Lcom/aviary/android/feather/effects/CropPanel$GenerateResultTask;->this$0:Lcom/aviary/android/feather/effects/CropPanel;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 217
    iput-object p2, p0, Lcom/aviary/android/feather/effects/CropPanel$GenerateResultTask;->mCropRect:Lcom/aviary/android/feather/library/graphics/RectD;

    .line 218
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 14
    .param p1, "arg0"    # [Landroid/graphics/Bitmap;

    .prologue
    .line 229
    const/4 v9, 0x0

    aget-object v0, p1, v9

    .line 231
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    int-to-double v3, v9

    .line 232
    .local v3, "bitmapWidth":D
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-double v1, v9

    .line 234
    .local v1, "bitmapHeight":D
    new-instance v8, Lcom/aviary/android/feather/headless/moa/MoaPointParameter;

    invoke-direct {v8}, Lcom/aviary/android/feather/headless/moa/MoaPointParameter;-><init>()V

    .line 235
    .local v8, "topLeft":Lcom/aviary/android/feather/headless/moa/MoaPointParameter;
    iget-object v9, p0, Lcom/aviary/android/feather/effects/CropPanel$GenerateResultTask;->mCropRect:Lcom/aviary/android/feather/library/graphics/RectD;

    iget-wide v9, v9, Lcom/aviary/android/feather/library/graphics/RectD;->left:D

    double-to-int v9, v9

    int-to-float v9, v9

    iget-object v10, p0, Lcom/aviary/android/feather/effects/CropPanel$GenerateResultTask;->mCropRect:Lcom/aviary/android/feather/library/graphics/RectD;

    iget-wide v10, v10, Lcom/aviary/android/feather/library/graphics/RectD;->top:D

    double-to-int v10, v10

    int-to-float v10, v10

    invoke-virtual {v8, v9, v10}, Lcom/aviary/android/feather/headless/moa/MoaPointParameter;->setValue(FF)V

    .line 237
    new-instance v7, Lcom/aviary/android/feather/headless/moa/MoaPointParameter;

    invoke-direct {v7}, Lcom/aviary/android/feather/headless/moa/MoaPointParameter;-><init>()V

    .line 238
    .local v7, "size":Lcom/aviary/android/feather/headless/moa/MoaPointParameter;
    iget-object v9, p0, Lcom/aviary/android/feather/effects/CropPanel$GenerateResultTask;->mCropRect:Lcom/aviary/android/feather/library/graphics/RectD;

    invoke-virtual {v9}, Lcom/aviary/android/feather/library/graphics/RectD;->width()D

    move-result-wide v9

    double-to-int v9, v9

    int-to-float v9, v9

    iget-object v10, p0, Lcom/aviary/android/feather/effects/CropPanel$GenerateResultTask;->mCropRect:Lcom/aviary/android/feather/library/graphics/RectD;

    invoke-virtual {v10}, Lcom/aviary/android/feather/library/graphics/RectD;->height()D

    move-result-wide v10

    double-to-int v10, v10

    int-to-float v10, v10

    invoke-virtual {v7, v9, v10}, Lcom/aviary/android/feather/headless/moa/MoaPointParameter;->setValue(FF)V

    .line 240
    new-instance v6, Lcom/aviary/android/feather/headless/moa/MoaPointParameter;

    invoke-direct {v6, v3, v4, v1, v2}, Lcom/aviary/android/feather/headless/moa/MoaPointParameter;-><init>(DD)V

    .line 242
    .local v6, "previewSize":Lcom/aviary/android/feather/headless/moa/MoaPointParameter;
    iget-object v9, p0, Lcom/aviary/android/feather/effects/CropPanel$GenerateResultTask;->this$0:Lcom/aviary/android/feather/effects/CropPanel;

    iget-object v9, v9, Lcom/aviary/android/feather/effects/CropPanel;->mFilter:Lcom/aviary/android/feather/headless/filters/IFilter;

    check-cast v9, Lcom/aviary/android/feather/headless/filters/impl/CropFilter;

    invoke-virtual {v9, v8}, Lcom/aviary/android/feather/headless/filters/impl/CropFilter;->setTopLeft(Lcom/aviary/android/feather/headless/moa/MoaPointParameter;)V

    .line 243
    iget-object v9, p0, Lcom/aviary/android/feather/effects/CropPanel$GenerateResultTask;->this$0:Lcom/aviary/android/feather/effects/CropPanel;

    iget-object v9, v9, Lcom/aviary/android/feather/effects/CropPanel;->mFilter:Lcom/aviary/android/feather/headless/filters/IFilter;

    check-cast v9, Lcom/aviary/android/feather/headless/filters/impl/CropFilter;

    invoke-virtual {v9, v7}, Lcom/aviary/android/feather/headless/filters/impl/CropFilter;->setSize(Lcom/aviary/android/feather/headless/moa/MoaPointParameter;)V

    .line 244
    iget-object v9, p0, Lcom/aviary/android/feather/effects/CropPanel$GenerateResultTask;->this$0:Lcom/aviary/android/feather/effects/CropPanel;

    iget-object v9, v9, Lcom/aviary/android/feather/effects/CropPanel;->mFilter:Lcom/aviary/android/feather/headless/filters/IFilter;

    check-cast v9, Lcom/aviary/android/feather/headless/filters/impl/CropFilter;

    invoke-virtual {v9, v6}, Lcom/aviary/android/feather/headless/filters/impl/CropFilter;->setPreviewSize(Lcom/aviary/android/feather/headless/moa/MoaPointParameter;)V

    .line 246
    iget-object v9, p0, Lcom/aviary/android/feather/effects/CropPanel$GenerateResultTask;->this$0:Lcom/aviary/android/feather/effects/CropPanel;

    iget-object v9, v9, Lcom/aviary/android/feather/effects/CropPanel;->mFilter:Lcom/aviary/android/feather/headless/filters/IFilter;

    check-cast v9, Lcom/aviary/android/feather/headless/filters/impl/CropFilter;

    invoke-virtual {v9}, Lcom/aviary/android/feather/headless/filters/impl/CropFilter;->getActions()Lcom/aviary/android/feather/headless/moa/MoaActionList;

    move-result-object v9

    invoke-virtual {v9}, Lcom/aviary/android/feather/headless/moa/MoaActionList;->clone()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/aviary/android/feather/headless/moa/MoaActionList;

    iput-object v9, p0, Lcom/aviary/android/feather/effects/CropPanel$GenerateResultTask;->mActionList:Lcom/aviary/android/feather/headless/moa/MoaActionList;

    .line 249
    :try_start_0
    iget-object v9, p0, Lcom/aviary/android/feather/effects/CropPanel$GenerateResultTask;->this$0:Lcom/aviary/android/feather/effects/CropPanel;

    iget-object v9, v9, Lcom/aviary/android/feather/effects/CropPanel;->mFilter:Lcom/aviary/android/feather/headless/filters/IFilter;

    check-cast v9, Lcom/aviary/android/feather/headless/filters/impl/CropFilter;

    const/4 v10, 0x0

    aget-object v10, p1, v10

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x1

    invoke-virtual {v9, v10, v11, v12, v13}, Lcom/aviary/android/feather/headless/filters/impl/CropFilter;->execute(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 253
    :goto_0
    return-object v9

    .line 250
    :catch_0
    move-exception v5

    .line 251
    .local v5, "e":Lorg/json/JSONException;
    invoke-virtual {v5}, Lorg/json/JSONException;->printStackTrace()V

    .line 253
    const/4 v9, 0x0

    aget-object v9, p1, v9

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 211
    check-cast p1, [Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/aviary/android/feather/effects/CropPanel$GenerateResultTask;->doInBackground([Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "result"    # Landroid/graphics/Bitmap;

    .prologue
    .line 258
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 259
    iget-object v0, p0, Lcom/aviary/android/feather/effects/CropPanel$GenerateResultTask;->this$0:Lcom/aviary/android/feather/effects/CropPanel;

    invoke-virtual {v0}, Lcom/aviary/android/feather/effects/CropPanel;->onProgressEnd()V

    .line 261
    iget-object v0, p0, Lcom/aviary/android/feather/effects/CropPanel$GenerateResultTask;->this$0:Lcom/aviary/android/feather/effects/CropPanel;

    iget-object v0, v0, Lcom/aviary/android/feather/effects/CropPanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    check-cast v0, Lcom/aviary/android/feather/widget/CropImageView;

    iget-object v1, p0, Lcom/aviary/android/feather/effects/CropPanel$GenerateResultTask;->this$0:Lcom/aviary/android/feather/effects/CropPanel;

    iget-object v1, v1, Lcom/aviary/android/feather/effects/CropPanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    check-cast v1, Lcom/aviary/android/feather/widget/CropImageView;

    invoke-virtual {v1}, Lcom/aviary/android/feather/widget/CropImageView;->getAspectRatio()D

    move-result-wide v2

    iget-object v1, p0, Lcom/aviary/android/feather/effects/CropPanel$GenerateResultTask;->this$0:Lcom/aviary/android/feather/effects/CropPanel;

    iget-object v1, v1, Lcom/aviary/android/feather/effects/CropPanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    check-cast v1, Lcom/aviary/android/feather/widget/CropImageView;

    .line 262
    invoke-virtual {v1}, Lcom/aviary/android/feather/widget/CropImageView;->getAspectRatioIsFixed()Z

    move-result v1

    .line 261
    invoke-virtual {v0, p1, v2, v3, v1}, Lcom/aviary/android/feather/widget/CropImageView;->setImageBitmap(Landroid/graphics/Bitmap;DZ)V

    .line 263
    iget-object v0, p0, Lcom/aviary/android/feather/effects/CropPanel$GenerateResultTask;->this$0:Lcom/aviary/android/feather/effects/CropPanel;

    iget-object v0, v0, Lcom/aviary/android/feather/effects/CropPanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    check-cast v0, Lcom/aviary/android/feather/widget/CropImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/widget/CropImageView;->setHighlightView(Lcom/aviary/android/feather/widget/HighlightView;)V

    .line 265
    iget-object v0, p0, Lcom/aviary/android/feather/effects/CropPanel$GenerateResultTask;->this$0:Lcom/aviary/android/feather/effects/CropPanel;

    iget-object v1, p0, Lcom/aviary/android/feather/effects/CropPanel$GenerateResultTask;->mActionList:Lcom/aviary/android/feather/headless/moa/MoaActionList;

    invoke-virtual {v0, p1, v1}, Lcom/aviary/android/feather/effects/CropPanel;->onComplete(Landroid/graphics/Bitmap;Lcom/aviary/android/feather/headless/moa/MoaActionList;)V

    .line 266
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 211
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/aviary/android/feather/effects/CropPanel$GenerateResultTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 222
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 223
    iget-object v0, p0, Lcom/aviary/android/feather/effects/CropPanel$GenerateResultTask;->this$0:Lcom/aviary/android/feather/effects/CropPanel;

    invoke-virtual {v0}, Lcom/aviary/android/feather/effects/CropPanel;->onProgressStart()V

    .line 224
    return-void
.end method
