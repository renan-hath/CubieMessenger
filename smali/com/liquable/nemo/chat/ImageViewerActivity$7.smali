.class Lcom/liquable/nemo/chat/ImageViewerActivity$7;
.super Ljava/lang/Object;
.source "ImageViewerActivity.java"

# interfaces
.implements Lcom/liquable/nemo/facebook/FacebookSession$IFacebookPublishSessionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/chat/ImageViewerActivity;->shareToFacebook(Lcom/liquable/nemo/message/model/IMediaMessage;Ljava/io/File;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/chat/ImageViewerActivity;

.field final synthetic val$mediaFile:Ljava/io/File;

.field final synthetic val$msg:Lcom/liquable/nemo/message/model/IMediaMessage;

.field final synthetic val$userComment:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/chat/ImageViewerActivity;Lcom/liquable/nemo/message/model/IMediaMessage;Ljava/io/File;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/chat/ImageViewerActivity;

    .prologue
    .line 631
    iput-object p1, p0, Lcom/liquable/nemo/chat/ImageViewerActivity$7;->this$0:Lcom/liquable/nemo/chat/ImageViewerActivity;

    iput-object p2, p0, Lcom/liquable/nemo/chat/ImageViewerActivity$7;->val$msg:Lcom/liquable/nemo/message/model/IMediaMessage;

    iput-object p3, p0, Lcom/liquable/nemo/chat/ImageViewerActivity$7;->val$mediaFile:Ljava/io/File;

    iput-object p4, p0, Lcom/liquable/nemo/chat/ImageViewerActivity$7;->val$userComment:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 0

    .prologue
    .line 633
    return-void
.end method

.method public onError()V
    .locals 2

    .prologue
    .line 637
    iget-object v0, p0, Lcom/liquable/nemo/chat/ImageViewerActivity$7;->this$0:Lcom/liquable/nemo/chat/ImageViewerActivity;

    const v1, 0x7f0d01bb

    # invokes: Lcom/liquable/nemo/chat/ImageViewerActivity;->showToast(I)V
    invoke-static {v0, v1}, Lcom/liquable/nemo/chat/ImageViewerActivity;->access$1300(Lcom/liquable/nemo/chat/ImageViewerActivity;I)V

    .line 638
    return-void
.end method

.method public onOpened(Lcom/liquable/nemo/facebook/FacebookSession$FacebookPublishRequest;)V
    .locals 4
    .param p1, "facebookRequest"    # Lcom/liquable/nemo/facebook/FacebookSession$FacebookPublishRequest;

    .prologue
    .line 642
    iget-object v0, p0, Lcom/liquable/nemo/chat/ImageViewerActivity$7;->this$0:Lcom/liquable/nemo/chat/ImageViewerActivity;

    iget-object v1, p0, Lcom/liquable/nemo/chat/ImageViewerActivity$7;->val$msg:Lcom/liquable/nemo/message/model/IMediaMessage;

    iget-object v2, p0, Lcom/liquable/nemo/chat/ImageViewerActivity$7;->val$mediaFile:Ljava/io/File;

    iget-object v3, p0, Lcom/liquable/nemo/chat/ImageViewerActivity$7;->val$userComment:Ljava/lang/String;

    # invokes: Lcom/liquable/nemo/chat/ImageViewerActivity;->uploadImageToFacebook(Lcom/liquable/nemo/facebook/FacebookSession$FacebookPublishRequest;Lcom/liquable/nemo/message/model/IMediaMessage;Ljava/io/File;Ljava/lang/String;)V
    invoke-static {v0, p1, v1, v2, v3}, Lcom/liquable/nemo/chat/ImageViewerActivity;->access$1400(Lcom/liquable/nemo/chat/ImageViewerActivity;Lcom/liquable/nemo/facebook/FacebookSession$FacebookPublishRequest;Lcom/liquable/nemo/message/model/IMediaMessage;Ljava/io/File;Ljava/lang/String;)V

    .line 643
    return-void
.end method
