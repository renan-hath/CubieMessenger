.class Lcom/liquable/nemo/sdk/DisconnectActivity$1;
.super Lcom/liquable/nemo/util/RpcAsyncTask;
.source "DisconnectActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/sdk/DisconnectActivity;->disconnect(Lcom/liquable/nemo/sdk/model/DisconnectParameters;)V
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
.field final synthetic this$0:Lcom/liquable/nemo/sdk/DisconnectActivity;

.field final synthetic val$disconnectParameters:Lcom/liquable/nemo/sdk/model/DisconnectParameters;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/sdk/DisconnectActivity;Landroid/content/Context;Lcom/liquable/nemo/sdk/model/DisconnectParameters;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/sdk/DisconnectActivity;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/liquable/nemo/sdk/DisconnectActivity$1;->this$0:Lcom/liquable/nemo/sdk/DisconnectActivity;

    iput-object p3, p0, Lcom/liquable/nemo/sdk/DisconnectActivity$1;->val$disconnectParameters:Lcom/liquable/nemo/sdk/model/DisconnectParameters;

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
    .line 26
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/sdk/DisconnectActivity$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

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
    .line 29
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->openApiDaemon:Lcom/liquable/nemo/sdk/OpenApiDaemon;

    iget-object v1, p0, Lcom/liquable/nemo/sdk/DisconnectActivity$1;->this$0:Lcom/liquable/nemo/sdk/DisconnectActivity;

    iget-object v2, p0, Lcom/liquable/nemo/sdk/DisconnectActivity$1;->val$disconnectParameters:Lcom/liquable/nemo/sdk/model/DisconnectParameters;

    invoke-virtual {v0, v1, v2}, Lcom/liquable/nemo/sdk/OpenApiDaemon;->disconnectDevice(Landroid/app/Activity;Lcom/liquable/nemo/sdk/model/DisconnectParameters;)V

    .line 30
    const/4 v0, 0x0

    return-object v0
.end method

.method protected postExecute()V
    .locals 0

    .prologue
    .line 36
    return-void
.end method

.method protected postExecuteFail(Lcom/liquable/nemo/client/AsyncException;)V
    .locals 1
    .param p1, "exception"    # Lcom/liquable/nemo/client/AsyncException;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/liquable/nemo/sdk/DisconnectActivity$1;->this$0:Lcom/liquable/nemo/sdk/DisconnectActivity;

    invoke-virtual {v0}, Lcom/liquable/nemo/sdk/DisconnectActivity;->finish()V

    .line 42
    return-void
.end method

.method protected postExecuteFail(Lcom/liquable/nemo/model/DomainException;)V
    .locals 6
    .param p1, "exception"    # Lcom/liquable/nemo/model/DomainException;

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 46
    iget-object v1, p0, Lcom/liquable/nemo/sdk/DisconnectActivity$1;->this$0:Lcom/liquable/nemo/sdk/DisconnectActivity;

    .line 47
    invoke-virtual {p1}, Lcom/liquable/nemo/model/DomainException;->getI18nKey()Ljava/lang/String;

    move-result-object v2

    .line 46
    invoke-static {v1, v2}, Lcom/liquable/nemo/util/Contexts;->getStringResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 48
    .local v0, "resId":I
    instance-of v1, p1, Lcom/liquable/nemo/model/InvalidOpenApiAppSignatureException;

    if-eqz v1, :cond_0

    .line 49
    iget-object v1, p0, Lcom/liquable/nemo/sdk/DisconnectActivity$1;->this$0:Lcom/liquable/nemo/sdk/DisconnectActivity;

    iget-object v2, p0, Lcom/liquable/nemo/sdk/DisconnectActivity$1;->this$0:Lcom/liquable/nemo/sdk/DisconnectActivity;

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "invalid app signature"

    aput-object v4, v3, v5

    invoke-virtual {v2, v0, v3}, Lcom/liquable/nemo/sdk/DisconnectActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/liquable/nemo/sdk/DisconnectActivity;->finishWithError(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/liquable/nemo/sdk/DisconnectActivity;->access$000(Lcom/liquable/nemo/sdk/DisconnectActivity;Ljava/lang/String;)V

    .line 57
    :goto_0
    return-void

    .line 50
    :cond_0
    instance-of v1, p1, Lcom/liquable/nemo/model/InvalidOpenApiAppKeyException;

    if-eqz v1, :cond_1

    .line 51
    iget-object v1, p0, Lcom/liquable/nemo/sdk/DisconnectActivity$1;->this$0:Lcom/liquable/nemo/sdk/DisconnectActivity;

    iget-object v2, p0, Lcom/liquable/nemo/sdk/DisconnectActivity$1;->this$0:Lcom/liquable/nemo/sdk/DisconnectActivity;

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "invalid app key"

    aput-object v4, v3, v5

    invoke-virtual {v2, v0, v3}, Lcom/liquable/nemo/sdk/DisconnectActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/liquable/nemo/sdk/DisconnectActivity;->finishWithError(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/liquable/nemo/sdk/DisconnectActivity;->access$000(Lcom/liquable/nemo/sdk/DisconnectActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 53
    :cond_1
    # getter for: Lcom/liquable/nemo/sdk/DisconnectActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/liquable/nemo/sdk/DisconnectActivity;->access$100()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/liquable/nemo/model/DomainException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iget-object v1, p0, Lcom/liquable/nemo/sdk/DisconnectActivity$1;->this$0:Lcom/liquable/nemo/sdk/DisconnectActivity;

    invoke-virtual {p1}, Lcom/liquable/nemo/model/DomainException;->getI18nKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/liquable/nemo/util/NemoUIs;->showToastFromI18nKey(Landroid/content/Context;Ljava/lang/String;)V

    .line 55
    iget-object v1, p0, Lcom/liquable/nemo/sdk/DisconnectActivity$1;->this$0:Lcom/liquable/nemo/sdk/DisconnectActivity;

    invoke-virtual {v1}, Lcom/liquable/nemo/sdk/DisconnectActivity;->finish()V

    goto :goto_0
.end method

.method protected bridge synthetic postExecuteSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 26
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/sdk/DisconnectActivity$1;->postExecuteSuccess(Ljava/lang/Void;)V

    return-void
.end method

.method protected postExecuteSuccess(Ljava/lang/Void;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/liquable/nemo/sdk/DisconnectActivity$1;->this$0:Lcom/liquable/nemo/sdk/DisconnectActivity;

    invoke-virtual {v0}, Lcom/liquable/nemo/sdk/DisconnectActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    :goto_0
    return-void

    .line 65
    :cond_0
    # getter for: Lcom/liquable/nemo/sdk/DisconnectActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/liquable/nemo/sdk/DisconnectActivity;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "disconnect successfully"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object v0, p0, Lcom/liquable/nemo/sdk/DisconnectActivity$1;->this$0:Lcom/liquable/nemo/sdk/DisconnectActivity;

    invoke-virtual {v0}, Lcom/liquable/nemo/sdk/DisconnectActivity;->finish()V

    goto :goto_0
.end method
