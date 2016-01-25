.class Lcom/liquable/nemo/chat/ChattingActivity$44;
.super Lcom/liquable/nemo/util/RpcAsyncTask;
.source "ChattingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/chat/ChattingActivity;->uploadImageToFacebook(Lcom/liquable/nemo/facebook/FacebookSession$FacebookPublishRequest;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
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
.field final synthetic this$0:Lcom/liquable/nemo/chat/ChattingActivity;

.field final synthetic val$caption:Ljava/lang/String;

.field final synthetic val$facebookPublishRequest:Lcom/liquable/nemo/facebook/FacebookSession$FacebookPublishRequest;

.field final synthetic val$from:Ljava/lang/String;

.field final synthetic val$mediaFile:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/chat/ChattingActivity;Landroid/content/Context;Lcom/liquable/nemo/facebook/FacebookSession$FacebookPublishRequest;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/chat/ChattingActivity;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 2586
    iput-object p1, p0, Lcom/liquable/nemo/chat/ChattingActivity$44;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    iput-object p3, p0, Lcom/liquable/nemo/chat/ChattingActivity$44;->val$facebookPublishRequest:Lcom/liquable/nemo/facebook/FacebookSession$FacebookPublishRequest;

    iput-object p4, p0, Lcom/liquable/nemo/chat/ChattingActivity$44;->val$mediaFile:Ljava/io/File;

    iput-object p5, p0, Lcom/liquable/nemo/chat/ChattingActivity$44;->val$caption:Ljava/lang/String;

    iput-object p6, p0, Lcom/liquable/nemo/chat/ChattingActivity$44;->val$from:Ljava/lang/String;

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
    .line 2586
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/chat/ChattingActivity$44;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

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
    .line 2590
    :try_start_0
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->facebookDaemon:Lcom/liquable/nemo/facebook/FacebookDaemon;

    iget-object v2, p0, Lcom/liquable/nemo/chat/ChattingActivity$44;->val$facebookPublishRequest:Lcom/liquable/nemo/facebook/FacebookSession$FacebookPublishRequest;

    iget-object v3, p0, Lcom/liquable/nemo/chat/ChattingActivity$44;->val$mediaFile:Ljava/io/File;

    iget-object v4, p0, Lcom/liquable/nemo/chat/ChattingActivity$44;->val$caption:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/liquable/nemo/facebook/FacebookDaemon;->uploadImageToFacebook(Lcom/liquable/nemo/facebook/FacebookSession$FacebookPublishRequest;Ljava/io/File;Ljava/lang/String;)V

    .line 2593
    iget-object v1, p0, Lcom/liquable/nemo/chat/ChattingActivity$44;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    const v2, 0x7f0d048b

    # invokes: Lcom/liquable/nemo/chat/ChattingActivity;->showToast(I)V
    invoke-static {v1, v2}, Lcom/liquable/nemo/chat/ChattingActivity;->access$3500(Lcom/liquable/nemo/chat/ChattingActivity;I)V

    .line 2594
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v1

    iget-object v2, p0, Lcom/liquable/nemo/chat/ChattingActivity$44;->val$from:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/liquable/nemo/analytics/IAnalyticsService;->sharePaintToFacebookInChattingActivity(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/liquable/nemo/facebook/FacebookAsyncException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2600
    :goto_0
    const/4 v1, 0x0

    return-object v1

    .line 2595
    :catch_0
    move-exception v0

    .line 2596
    .local v0, "e":Lcom/liquable/nemo/facebook/FacebookAsyncException;
    iget-object v1, p0, Lcom/liquable/nemo/chat/ChattingActivity$44;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    const v2, 0x7f0d01bb

    # invokes: Lcom/liquable/nemo/chat/ChattingActivity;->showToast(I)V
    invoke-static {v1, v2}, Lcom/liquable/nemo/chat/ChattingActivity;->access$3500(Lcom/liquable/nemo/chat/ChattingActivity;I)V

    goto :goto_0

    .line 2597
    .end local v0    # "e":Lcom/liquable/nemo/facebook/FacebookAsyncException;
    :catch_1
    move-exception v0

    .line 2598
    .local v0, "e":Ljava/io/FileNotFoundException;
    iget-object v1, p0, Lcom/liquable/nemo/chat/ChattingActivity$44;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    const v2, 0x7f0d01c6

    # invokes: Lcom/liquable/nemo/chat/ChattingActivity;->showToast(I)V
    invoke-static {v1, v2}, Lcom/liquable/nemo/chat/ChattingActivity;->access$3500(Lcom/liquable/nemo/chat/ChattingActivity;I)V

    goto :goto_0
.end method

.method protected postExecute()V
    .locals 0

    .prologue
    .line 2605
    return-void
.end method

.method protected bridge synthetic postExecuteSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 2586
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/chat/ChattingActivity$44;->postExecuteSuccess(Ljava/lang/Void;)V

    return-void
.end method

.method protected postExecuteSuccess(Ljava/lang/Void;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 2609
    return-void
.end method
