.class Lcom/liquable/nemo/chat/ImageViewerActivity$11;
.super Lcom/liquable/nemo/util/RpcAsyncTask;
.source "ImageViewerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/chat/ImageViewerActivity;->uploadImageToFacebook(Lcom/liquable/nemo/facebook/FacebookSession$FacebookPublishRequest;Lcom/liquable/nemo/message/model/IMediaMessage;Ljava/io/File;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/liquable/nemo/util/RpcAsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/chat/ImageViewerActivity;

.field final synthetic val$caption:Ljava/lang/String;

.field final synthetic val$facebookPublishRequest:Lcom/liquable/nemo/facebook/FacebookSession$FacebookPublishRequest;

.field final synthetic val$mediaFile:Ljava/io/File;

.field final synthetic val$msg:Lcom/liquable/nemo/message/model/IMediaMessage;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/chat/ImageViewerActivity;Landroid/content/Context;Lcom/liquable/nemo/facebook/FacebookSession$FacebookPublishRequest;Ljava/io/File;Ljava/lang/String;Lcom/liquable/nemo/message/model/IMediaMessage;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/chat/ImageViewerActivity;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 753
    iput-object p1, p0, Lcom/liquable/nemo/chat/ImageViewerActivity$11;->this$0:Lcom/liquable/nemo/chat/ImageViewerActivity;

    iput-object p3, p0, Lcom/liquable/nemo/chat/ImageViewerActivity$11;->val$facebookPublishRequest:Lcom/liquable/nemo/facebook/FacebookSession$FacebookPublishRequest;

    iput-object p4, p0, Lcom/liquable/nemo/chat/ImageViewerActivity$11;->val$mediaFile:Ljava/io/File;

    iput-object p5, p0, Lcom/liquable/nemo/chat/ImageViewerActivity$11;->val$caption:Ljava/lang/String;

    iput-object p6, p0, Lcom/liquable/nemo/chat/ImageViewerActivity$11;->val$msg:Lcom/liquable/nemo/message/model/IMediaMessage;

    invoke-direct {p0, p2}, Lcom/liquable/nemo/util/RpcAsyncTask;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;,
            Lcom/liquable/nemo/model/DomainException;
        }
    .end annotation

    .prologue
    .line 753
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/chat/ImageViewerActivity$11;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;,
            Lcom/liquable/nemo/model/DomainException;
        }
    .end annotation

    .prologue
    .line 757
    :try_start_0
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->facebookDaemon:Lcom/liquable/nemo/facebook/FacebookDaemon;

    iget-object v2, p0, Lcom/liquable/nemo/chat/ImageViewerActivity$11;->val$facebookPublishRequest:Lcom/liquable/nemo/facebook/FacebookSession$FacebookPublishRequest;

    iget-object v3, p0, Lcom/liquable/nemo/chat/ImageViewerActivity$11;->val$mediaFile:Ljava/io/File;

    iget-object v4, p0, Lcom/liquable/nemo/chat/ImageViewerActivity$11;->val$caption:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/liquable/nemo/facebook/FacebookDaemon;->uploadImageToFacebook(Lcom/liquable/nemo/facebook/FacebookSession$FacebookPublishRequest;Ljava/io/File;Ljava/lang/String;)V

    .line 760
    iget-object v1, p0, Lcom/liquable/nemo/chat/ImageViewerActivity$11;->this$0:Lcom/liquable/nemo/chat/ImageViewerActivity;

    const v2, 0x7f0d048b

    # invokes: Lcom/liquable/nemo/chat/ImageViewerActivity;->showToast(I)V
    invoke-static {v1, v2}, Lcom/liquable/nemo/chat/ImageViewerActivity;->access$1300(Lcom/liquable/nemo/chat/ImageViewerActivity;I)V

    .line 761
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v1

    iget-object v2, p0, Lcom/liquable/nemo/chat/ImageViewerActivity$11;->val$msg:Lcom/liquable/nemo/message/model/IMediaMessage;

    invoke-interface {v2}, Lcom/liquable/nemo/message/model/IMediaMessage;->getShareEvent()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "facebook"

    invoke-interface {v1, v2, v3}, Lcom/liquable/nemo/analytics/IAnalyticsService;->shareMediaMessageViaImageViewer(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/liquable/nemo/facebook/FacebookAsyncException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 768
    :goto_0
    const/4 v1, 0x0

    return-object v1

    .line 763
    :catch_0
    move-exception v0

    .line 764
    .local v0, "e":Lcom/liquable/nemo/facebook/FacebookAsyncException;
    iget-object v1, p0, Lcom/liquable/nemo/chat/ImageViewerActivity$11;->this$0:Lcom/liquable/nemo/chat/ImageViewerActivity;

    const v2, 0x7f0d01bb

    # invokes: Lcom/liquable/nemo/chat/ImageViewerActivity;->showToast(I)V
    invoke-static {v1, v2}, Lcom/liquable/nemo/chat/ImageViewerActivity;->access$1300(Lcom/liquable/nemo/chat/ImageViewerActivity;I)V

    goto :goto_0

    .line 765
    .end local v0    # "e":Lcom/liquable/nemo/facebook/FacebookAsyncException;
    :catch_1
    move-exception v0

    .line 766
    .local v0, "e":Ljava/io/FileNotFoundException;
    iget-object v1, p0, Lcom/liquable/nemo/chat/ImageViewerActivity$11;->this$0:Lcom/liquable/nemo/chat/ImageViewerActivity;

    const v2, 0x7f0d01c6

    # invokes: Lcom/liquable/nemo/chat/ImageViewerActivity;->showToast(I)V
    invoke-static {v1, v2}, Lcom/liquable/nemo/chat/ImageViewerActivity;->access$1300(Lcom/liquable/nemo/chat/ImageViewerActivity;I)V

    goto :goto_0
.end method

.method protected postExecute()V
    .locals 0

    .prologue
    .line 772
    return-void
.end method

.method protected bridge synthetic postExecuteSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 753
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/chat/ImageViewerActivity$11;->postExecuteSuccess(Ljava/lang/Void;)V

    return-void
.end method

.method protected postExecuteSuccess(Ljava/lang/Void;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 775
    return-void
.end method
