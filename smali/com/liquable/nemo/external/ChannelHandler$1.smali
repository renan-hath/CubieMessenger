.class Lcom/liquable/nemo/external/ChannelHandler$1;
.super Lcom/liquable/nemo/util/RpcAsyncTask;
.source "ChannelHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/external/ChannelHandler;->handle(Lcom/liquable/nemo/external/ExternalUrlHandlerActivity;Landroid/net/Uri;)V
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
.field final synthetic this$0:Lcom/liquable/nemo/external/ChannelHandler;

.field final synthetic val$activity:Lcom/liquable/nemo/external/ExternalUrlHandlerActivity;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/external/ChannelHandler;Landroid/content/Context;Landroid/net/Uri;Lcom/liquable/nemo/external/ExternalUrlHandlerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/external/ChannelHandler;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/liquable/nemo/external/ChannelHandler$1;->this$0:Lcom/liquable/nemo/external/ChannelHandler;

    iput-object p3, p0, Lcom/liquable/nemo/external/ChannelHandler$1;->val$uri:Landroid/net/Uri;

    iput-object p4, p0, Lcom/liquable/nemo/external/ChannelHandler$1;->val$activity:Lcom/liquable/nemo/external/ExternalUrlHandlerActivity;

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
    .line 27
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/external/ChannelHandler$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;,
            Lcom/liquable/nemo/model/DomainException;
        }
    .end annotation

    .prologue
    .line 30
    sget-object v0, Lcom/liquable/nemo/external/ExternalUrlHandler;->debugLogger:Lcom/liquable/nemo/util/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "PubChannelService.subscribeFromUrl:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/liquable/nemo/external/ChannelHandler$1;->val$uri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 31
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->pubChannelService:Lcom/liquable/nemo/client/service/PubChannelService;

    iget-object v1, p0, Lcom/liquable/nemo/external/ChannelHandler$1;->val$uri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/client/service/PubChannelService;->subscribeFromUrl(Ljava/lang/String;)V

    .line 32
    const/4 v0, 0x0

    return-object v0
.end method

.method protected postExecute()V
    .locals 0

    .prologue
    .line 37
    return-void
.end method

.method protected postExecuteFail(Lcom/liquable/nemo/client/AsyncException;)V
    .locals 1
    .param p1, "exception"    # Lcom/liquable/nemo/client/AsyncException;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/liquable/nemo/external/ChannelHandler$1;->val$activity:Lcom/liquable/nemo/external/ExternalUrlHandlerActivity;

    invoke-virtual {v0}, Lcom/liquable/nemo/external/ExternalUrlHandlerActivity;->finish()V

    .line 43
    return-void
.end method

.method protected postExecuteFail(Lcom/liquable/nemo/model/DomainException;)V
    .locals 2
    .param p1, "exception"    # Lcom/liquable/nemo/model/DomainException;

    .prologue
    .line 47
    sget-object v0, Lcom/liquable/nemo/external/ExternalUrlHandler;->debugLogger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v1, "PubChannelService.subscribeFromUrl"

    invoke-virtual {v0, v1, p1}, Lcom/liquable/nemo/util/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 48
    instance-of v0, p1, Lcom/liquable/nemo/model/PubChannelSubscribeException;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/liquable/nemo/external/ChannelHandler$1;->val$activity:Lcom/liquable/nemo/external/ExternalUrlHandlerActivity;

    invoke-virtual {p1}, Lcom/liquable/nemo/model/DomainException;->getI18nKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/liquable/nemo/util/NemoUIs;->showToastFromI18nKey(Landroid/content/Context;Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/liquable/nemo/external/ChannelHandler$1;->val$activity:Lcom/liquable/nemo/external/ExternalUrlHandlerActivity;

    invoke-virtual {v0}, Lcom/liquable/nemo/external/ExternalUrlHandlerActivity;->finish()V

    .line 52
    :cond_0
    return-void
.end method

.method protected bridge synthetic postExecuteSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 27
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/external/ChannelHandler$1;->postExecuteSuccess(Ljava/lang/Void;)V

    return-void
.end method

.method protected postExecuteSuccess(Ljava/lang/Void;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 56
    sget-object v0, Lcom/liquable/nemo/external/ExternalUrlHandler;->debugLogger:Lcom/liquable/nemo/util/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "PubChannelService.subscribeFromUrl:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/liquable/nemo/external/ChannelHandler$1;->val$uri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " Success"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/liquable/nemo/external/ChannelHandler$1;->val$activity:Lcom/liquable/nemo/external/ExternalUrlHandlerActivity;

    invoke-virtual {v0}, Lcom/liquable/nemo/external/ExternalUrlHandlerActivity;->finish()V

    .line 60
    return-void
.end method
