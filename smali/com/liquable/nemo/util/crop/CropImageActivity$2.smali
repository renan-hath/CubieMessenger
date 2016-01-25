.class Lcom/liquable/nemo/util/crop/CropImageActivity$2;
.super Landroid/os/AsyncTask;
.source "CropImageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/util/crop/CropImageActivity;->decodeFileToBitmap(Landroid/net/Uri;Lcom/liquable/nemo/android/provider/PictureInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/liquable/nemo/util/Optional",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/util/crop/CropImageActivity;

.field final synthetic val$data:Landroid/net/Uri;

.field final synthetic val$mediaInfo:Lcom/liquable/nemo/android/provider/PictureInfo;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/util/crop/CropImageActivity;Lcom/liquable/nemo/android/provider/PictureInfo;Landroid/net/Uri;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/util/crop/CropImageActivity;

    .prologue
    .line 291
    iput-object p1, p0, Lcom/liquable/nemo/util/crop/CropImageActivity$2;->this$0:Lcom/liquable/nemo/util/crop/CropImageActivity;

    iput-object p2, p0, Lcom/liquable/nemo/util/crop/CropImageActivity$2;->val$mediaInfo:Lcom/liquable/nemo/android/provider/PictureInfo;

    iput-object p3, p0, Lcom/liquable/nemo/util/crop/CropImageActivity$2;->val$data:Landroid/net/Uri;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/liquable/nemo/util/Optional;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Lcom/liquable/nemo/util/Optional",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 294
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/CropImageActivity$2;->val$mediaInfo:Lcom/liquable/nemo/android/provider/PictureInfo;

    if-nez v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/CropImageActivity$2;->this$0:Lcom/liquable/nemo/util/crop/CropImageActivity;

    invoke-virtual {v0}, Lcom/liquable/nemo/util/crop/CropImageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/util/crop/CropImageActivity$2;->val$data:Landroid/net/Uri;

    invoke-static {v0, v1, v3, v3}, Lcom/liquable/nemo/util/ImageUtils;->decodeToPictureMessageBitmap(Landroid/content/Context;Landroid/net/Uri;ZI)Lcom/liquable/nemo/util/Optional;

    move-result-object v0

    .line 297
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/CropImageActivity$2;->this$0:Lcom/liquable/nemo/util/crop/CropImageActivity;

    invoke-virtual {v0}, Lcom/liquable/nemo/util/crop/CropImageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/util/crop/CropImageActivity$2;->val$mediaInfo:Lcom/liquable/nemo/android/provider/PictureInfo;

    .line 298
    invoke-virtual {v1}, Lcom/liquable/nemo/android/provider/PictureInfo;->getUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/liquable/nemo/util/crop/CropImageActivity$2;->val$mediaInfo:Lcom/liquable/nemo/android/provider/PictureInfo;

    .line 300
    invoke-virtual {v2}, Lcom/liquable/nemo/android/provider/PictureInfo;->getRotateDegree()I

    move-result v2

    .line 297
    invoke-static {v0, v1, v3, v2}, Lcom/liquable/nemo/util/ImageUtils;->decodeToPictureMessageBitmap(Landroid/content/Context;Landroid/net/Uri;ZI)Lcom/liquable/nemo/util/Optional;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 291
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/util/crop/CropImageActivity$2;->doInBackground([Ljava/lang/Void;)Lcom/liquable/nemo/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/liquable/nemo/util/Optional;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/liquable/nemo/util/Optional",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 307
    .local p1, "result":Lcom/liquable/nemo/util/Optional;, "Lcom/liquable/nemo/util/Optional<Landroid/graphics/Bitmap;>;"
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/CropImageActivity$2;->this$0:Lcom/liquable/nemo/util/crop/CropImageActivity;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/crop/CropImageActivity;->removeDialog(I)V

    .line 308
    invoke-virtual {p1}, Lcom/liquable/nemo/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/CropImageActivity$2;->this$0:Lcom/liquable/nemo/util/crop/CropImageActivity;

    const v1, 0x7f0d01b8

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 311
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 312
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/CropImageActivity$2;->this$0:Lcom/liquable/nemo/util/crop/CropImageActivity;

    invoke-virtual {v0}, Lcom/liquable/nemo/util/crop/CropImageActivity;->finish()V

    .line 317
    :goto_0
    return-void

    .line 315
    :cond_0
    iget-object v1, p0, Lcom/liquable/nemo/util/crop/CropImageActivity$2;->this$0:Lcom/liquable/nemo/util/crop/CropImageActivity;

    iget-object v0, p0, Lcom/liquable/nemo/util/crop/CropImageActivity$2;->this$0:Lcom/liquable/nemo/util/crop/CropImageActivity;

    invoke-virtual {v0}, Lcom/liquable/nemo/util/crop/CropImageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p1}, Lcom/liquable/nemo/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    # invokes: Lcom/liquable/nemo/util/crop/CropImageActivity;->decodeBitmap(Landroid/content/Intent;Landroid/graphics/Bitmap;)V
    invoke-static {v1, v2, v0}, Lcom/liquable/nemo/util/crop/CropImageActivity;->access$900(Lcom/liquable/nemo/util/crop/CropImageActivity;Landroid/content/Intent;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 291
    check-cast p1, Lcom/liquable/nemo/util/Optional;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/util/crop/CropImageActivity$2;->onPostExecute(Lcom/liquable/nemo/util/Optional;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 321
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/CropImageActivity$2;->this$0:Lcom/liquable/nemo/util/crop/CropImageActivity;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/crop/CropImageActivity;->showDialog(I)V

    .line 323
    return-void
.end method
