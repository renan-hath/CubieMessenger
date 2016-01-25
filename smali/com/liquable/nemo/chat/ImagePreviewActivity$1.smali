.class Lcom/liquable/nemo/chat/ImagePreviewActivity$1;
.super Landroid/os/AsyncTask;
.source "ImagePreviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/chat/ImagePreviewActivity;->deleteGallerySavedByCameraInSecretMode()V
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/chat/ImagePreviewActivity;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/chat/ImagePreviewActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/chat/ImagePreviewActivity;

    .prologue
    .line 302
    iput-object p1, p0, Lcom/liquable/nemo/chat/ImagePreviewActivity$1;->this$0:Lcom/liquable/nemo/chat/ImagePreviewActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 302
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/chat/ImagePreviewActivity$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 305
    iget-object v1, p0, Lcom/liquable/nemo/chat/ImagePreviewActivity$1;->this$0:Lcom/liquable/nemo/chat/ImagePreviewActivity;

    iget-object v2, p0, Lcom/liquable/nemo/chat/ImagePreviewActivity$1;->this$0:Lcom/liquable/nemo/chat/ImagePreviewActivity;

    .line 306
    # getter for: Lcom/liquable/nemo/chat/ImagePreviewActivity;->captureByCamera:Lcom/liquable/nemo/chat/ImagePreviewActivity$CaptureByCamera;
    invoke-static {v2}, Lcom/liquable/nemo/chat/ImagePreviewActivity;->access$000(Lcom/liquable/nemo/chat/ImagePreviewActivity;)Lcom/liquable/nemo/chat/ImagePreviewActivity$CaptureByCamera;

    move-result-object v2

    # getter for: Lcom/liquable/nemo/chat/ImagePreviewActivity$CaptureByCamera;->lastImageId:I
    invoke-static {v2}, Lcom/liquable/nemo/chat/ImagePreviewActivity$CaptureByCamera;->access$100(Lcom/liquable/nemo/chat/ImagePreviewActivity$CaptureByCamera;)I

    move-result v2

    .line 305
    invoke-static {v1, v2}, Lcom/liquable/nemo/android/provider/Medias;->deleteOneImageAfter(Landroid/content/Context;I)I

    move-result v0

    .line 307
    .local v0, "totalDeleteCount":I
    sget-object v1, Lcom/liquable/nemo/chat/ImagePreviewActivity;->debugLogger:Lcom/liquable/nemo/util/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "delete camera images for secret mode, total count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 309
    const/4 v1, 0x0

    return-object v1
.end method
