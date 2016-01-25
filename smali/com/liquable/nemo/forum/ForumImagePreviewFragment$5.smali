.class Lcom/liquable/nemo/forum/ForumImagePreviewFragment$5;
.super Landroid/os/AsyncTask;
.source "ForumImagePreviewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/forum/ForumImagePreviewFragment;->loadPreview(Landroid/net/Uri;Z)V
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
.field final synthetic this$0:Lcom/liquable/nemo/forum/ForumImagePreviewFragment;

.field final synthetic val$finalData:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/forum/ForumImagePreviewFragment;Landroid/net/Uri;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/forum/ForumImagePreviewFragment;

    .prologue
    .line 240
    iput-object p1, p0, Lcom/liquable/nemo/forum/ForumImagePreviewFragment$5;->this$0:Lcom/liquable/nemo/forum/ForumImagePreviewFragment;

    iput-object p2, p0, Lcom/liquable/nemo/forum/ForumImagePreviewFragment$5;->val$finalData:Landroid/net/Uri;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/liquable/nemo/util/Optional;
    .locals 5
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
    const/4 v4, 0x0

    .line 243
    iget-object v1, p0, Lcom/liquable/nemo/forum/ForumImagePreviewFragment$5;->this$0:Lcom/liquable/nemo/forum/ForumImagePreviewFragment;

    invoke-virtual {v1}, Lcom/liquable/nemo/forum/ForumImagePreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/liquable/nemo/forum/ForumImagePreviewFragment$5;->val$finalData:Landroid/net/Uri;

    invoke-static {v1, v2}, Lcom/liquable/nemo/android/provider/Medias;->findMediaFilePath(Landroid/content/Context;Landroid/net/Uri;)Lcom/liquable/nemo/android/provider/MediaInfo;

    move-result-object v0

    .line 245
    .local v0, "mediaInfo":Lcom/liquable/nemo/android/provider/MediaInfo;
    if-nez v0, :cond_1

    .line 246
    iget-object v1, p0, Lcom/liquable/nemo/forum/ForumImagePreviewFragment$5;->this$0:Lcom/liquable/nemo/forum/ForumImagePreviewFragment;

    iget-object v2, p0, Lcom/liquable/nemo/forum/ForumImagePreviewFragment$5;->this$0:Lcom/liquable/nemo/forum/ForumImagePreviewFragment;

    iget-object v3, p0, Lcom/liquable/nemo/forum/ForumImagePreviewFragment$5;->val$finalData:Landroid/net/Uri;

    # invokes: Lcom/liquable/nemo/forum/ForumImagePreviewFragment;->copyContentToFile(Landroid/net/Uri;)Landroid/net/Uri;
    invoke-static {v2, v3}, Lcom/liquable/nemo/forum/ForumImagePreviewFragment;->access$300(Lcom/liquable/nemo/forum/ForumImagePreviewFragment;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    # setter for: Lcom/liquable/nemo/forum/ForumImagePreviewFragment;->imageUri:Landroid/net/Uri;
    invoke-static {v1, v2}, Lcom/liquable/nemo/forum/ForumImagePreviewFragment;->access$202(Lcom/liquable/nemo/forum/ForumImagePreviewFragment;Landroid/net/Uri;)Landroid/net/Uri;

    .line 247
    iget-object v1, p0, Lcom/liquable/nemo/forum/ForumImagePreviewFragment$5;->this$0:Lcom/liquable/nemo/forum/ForumImagePreviewFragment;

    # getter for: Lcom/liquable/nemo/forum/ForumImagePreviewFragment;->imageUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/liquable/nemo/forum/ForumImagePreviewFragment;->access$200(Lcom/liquable/nemo/forum/ForumImagePreviewFragment;)Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_0

    .line 248
    invoke-static {}, Lcom/liquable/nemo/util/Optional;->absent()Lcom/liquable/nemo/util/Optional;

    move-result-object v1

    .line 252
    .end local v0    # "mediaInfo":Lcom/liquable/nemo/android/provider/MediaInfo;
    :goto_0
    return-object v1

    .line 250
    .restart local v0    # "mediaInfo":Lcom/liquable/nemo/android/provider/MediaInfo;
    :cond_0
    iget-object v1, p0, Lcom/liquable/nemo/forum/ForumImagePreviewFragment$5;->this$0:Lcom/liquable/nemo/forum/ForumImagePreviewFragment;

    invoke-virtual {v1}, Lcom/liquable/nemo/forum/ForumImagePreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/liquable/nemo/forum/ForumImagePreviewFragment$5;->this$0:Lcom/liquable/nemo/forum/ForumImagePreviewFragment;

    # getter for: Lcom/liquable/nemo/forum/ForumImagePreviewFragment;->imageUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/liquable/nemo/forum/ForumImagePreviewFragment;->access$200(Lcom/liquable/nemo/forum/ForumImagePreviewFragment;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v2, v4, v4}, Lcom/liquable/nemo/util/ImageUtils;->decodeToPictureMessageBitmap(Landroid/content/Context;Landroid/net/Uri;ZI)Lcom/liquable/nemo/util/Optional;

    move-result-object v1

    goto :goto_0

    .line 252
    :cond_1
    iget-object v1, p0, Lcom/liquable/nemo/forum/ForumImagePreviewFragment$5;->this$0:Lcom/liquable/nemo/forum/ForumImagePreviewFragment;

    invoke-virtual {v1}, Lcom/liquable/nemo/forum/ForumImagePreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 253
    invoke-virtual {v0}, Lcom/liquable/nemo/android/provider/MediaInfo;->getUri()Landroid/net/Uri;

    move-result-object v2

    check-cast v0, Lcom/liquable/nemo/android/provider/PictureInfo;

    .line 255
    .end local v0    # "mediaInfo":Lcom/liquable/nemo/android/provider/MediaInfo;
    invoke-virtual {v0}, Lcom/liquable/nemo/android/provider/PictureInfo;->getRotateDegree()I

    move-result v3

    .line 252
    invoke-static {v1, v2, v4, v3}, Lcom/liquable/nemo/util/ImageUtils;->decodeToPictureMessageBitmap(Landroid/content/Context;Landroid/net/Uri;ZI)Lcom/liquable/nemo/util/Optional;

    move-result-object v1

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 240
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/forum/ForumImagePreviewFragment$5;->doInBackground([Ljava/lang/Void;)Lcom/liquable/nemo/util/Optional;

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
    .local p1, "result":Lcom/liquable/nemo/util/Optional;, "Lcom/liquable/nemo/util/Optional<Landroid/graphics/Bitmap;>;"
    const/4 v2, 0x1

    .line 261
    invoke-virtual {p1}, Lcom/liquable/nemo/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/liquable/nemo/forum/ForumImagePreviewFragment$5;->this$0:Lcom/liquable/nemo/forum/ForumImagePreviewFragment;

    invoke-virtual {v0}, Lcom/liquable/nemo/forum/ForumImagePreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0d01b8

    invoke-static {v0, v1}, Lcom/liquable/nemo/util/NemoUIs;->showToast(Landroid/content/Context;I)V

    .line 263
    iget-object v0, p0, Lcom/liquable/nemo/forum/ForumImagePreviewFragment$5;->this$0:Lcom/liquable/nemo/forum/ForumImagePreviewFragment;

    invoke-virtual {v0}, Lcom/liquable/nemo/forum/ForumImagePreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 272
    :goto_0
    return-void

    .line 267
    :cond_0
    iget-object v1, p0, Lcom/liquable/nemo/forum/ForumImagePreviewFragment$5;->this$0:Lcom/liquable/nemo/forum/ForumImagePreviewFragment;

    invoke-virtual {p1}, Lcom/liquable/nemo/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    # setter for: Lcom/liquable/nemo/forum/ForumImagePreviewFragment;->image:Landroid/graphics/Bitmap;
    invoke-static {v1, v0}, Lcom/liquable/nemo/forum/ForumImagePreviewFragment;->access$402(Lcom/liquable/nemo/forum/ForumImagePreviewFragment;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 268
    iget-object v0, p0, Lcom/liquable/nemo/forum/ForumImagePreviewFragment$5;->this$0:Lcom/liquable/nemo/forum/ForumImagePreviewFragment;

    # getter for: Lcom/liquable/nemo/forum/ForumImagePreviewFragment;->inputMessageWidget:Lcom/liquable/nemo/chat/widget/InputMessageWidget;
    invoke-static {v0}, Lcom/liquable/nemo/forum/ForumImagePreviewFragment;->access$500(Lcom/liquable/nemo/forum/ForumImagePreviewFragment;)Lcom/liquable/nemo/chat/widget/InputMessageWidget;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->setSendEnabled(Z)V

    .line 269
    iget-object v0, p0, Lcom/liquable/nemo/forum/ForumImagePreviewFragment$5;->this$0:Lcom/liquable/nemo/forum/ForumImagePreviewFragment;

    # getter for: Lcom/liquable/nemo/forum/ForumImagePreviewFragment;->inputMessageWidget:Lcom/liquable/nemo/chat/widget/InputMessageWidget;
    invoke-static {v0}, Lcom/liquable/nemo/forum/ForumImagePreviewFragment;->access$500(Lcom/liquable/nemo/forum/ForumImagePreviewFragment;)Lcom/liquable/nemo/chat/widget/InputMessageWidget;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->setPaintEnabled(Z)V

    .line 271
    iget-object v0, p0, Lcom/liquable/nemo/forum/ForumImagePreviewFragment$5;->this$0:Lcom/liquable/nemo/forum/ForumImagePreviewFragment;

    # invokes: Lcom/liquable/nemo/forum/ForumImagePreviewFragment;->updateImage(Z)V
    invoke-static {v0, v2}, Lcom/liquable/nemo/forum/ForumImagePreviewFragment;->access$600(Lcom/liquable/nemo/forum/ForumImagePreviewFragment;Z)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 240
    check-cast p1, Lcom/liquable/nemo/util/Optional;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/forum/ForumImagePreviewFragment$5;->onPostExecute(Lcom/liquable/nemo/util/Optional;)V

    return-void
.end method
