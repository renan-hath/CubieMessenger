.class Lcom/liquable/nemo/sdk/ConnectActivity$2;
.super Lcom/liquable/nemo/util/RpcAsyncTask;
.source "ConnectActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/sdk/ConnectActivity;->authorizeApp(Lcom/liquable/nemo/sdk/model/ConnectParameters;)V
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
        "Lcom/liquable/nemo/model/openapi/OpenApiAppDto;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/sdk/ConnectActivity;

.field final synthetic val$connectParameters:Lcom/liquable/nemo/sdk/model/ConnectParameters;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/sdk/ConnectActivity;Landroid/content/Context;Lcom/liquable/nemo/sdk/model/ConnectParameters;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/sdk/ConnectActivity;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/liquable/nemo/sdk/ConnectActivity$2;->this$0:Lcom/liquable/nemo/sdk/ConnectActivity;

    iput-object p3, p0, Lcom/liquable/nemo/sdk/ConnectActivity$2;->val$connectParameters:Lcom/liquable/nemo/sdk/model/ConnectParameters;

    invoke-direct {p0, p2}, Lcom/liquable/nemo/util/RpcAsyncTask;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/liquable/nemo/model/openapi/OpenApiAppDto;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;,
            Lcom/liquable/nemo/model/DomainException;
        }
    .end annotation

    .prologue
    .line 66
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->openApiDaemon:Lcom/liquable/nemo/sdk/OpenApiDaemon;

    iget-object v1, p0, Lcom/liquable/nemo/sdk/ConnectActivity$2;->this$0:Lcom/liquable/nemo/sdk/ConnectActivity;

    iget-object v2, p0, Lcom/liquable/nemo/sdk/ConnectActivity$2;->val$connectParameters:Lcom/liquable/nemo/sdk/model/ConnectParameters;

    .line 67
    invoke-virtual {v2}, Lcom/liquable/nemo/sdk/model/ConnectParameters;->getAppKey()Ljava/lang/String;

    move-result-object v2

    .line 66
    invoke-virtual {v0, v1, v2}, Lcom/liquable/nemo/sdk/OpenApiDaemon;->authorize(Landroid/app/Activity;Ljava/lang/String;)Lcom/liquable/nemo/model/openapi/OpenApiAppDto;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;,
            Lcom/liquable/nemo/model/DomainException;
        }
    .end annotation

    .prologue
    .line 62
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/sdk/ConnectActivity$2;->doInBackground([Ljava/lang/Void;)Lcom/liquable/nemo/model/openapi/OpenApiAppDto;

    move-result-object v0

    return-object v0
.end method

.method protected postExecute()V
    .locals 0

    .prologue
    .line 73
    return-void
.end method

.method protected postExecuteFail(Lcom/liquable/nemo/client/AsyncException;)V
    .locals 1
    .param p1, "exception"    # Lcom/liquable/nemo/client/AsyncException;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/liquable/nemo/sdk/ConnectActivity$2;->this$0:Lcom/liquable/nemo/sdk/ConnectActivity;

    invoke-virtual {v0}, Lcom/liquable/nemo/sdk/ConnectActivity;->finish()V

    .line 79
    return-void
.end method

.method protected postExecuteFail(Lcom/liquable/nemo/model/DomainException;)V
    .locals 6
    .param p1, "exception"    # Lcom/liquable/nemo/model/DomainException;

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 83
    iget-object v1, p0, Lcom/liquable/nemo/sdk/ConnectActivity$2;->this$0:Lcom/liquable/nemo/sdk/ConnectActivity;

    invoke-virtual {p1}, Lcom/liquable/nemo/model/DomainException;->getI18nKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/liquable/nemo/util/Contexts;->getStringResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 84
    .local v0, "resId":I
    instance-of v1, p1, Lcom/liquable/nemo/model/InvalidOpenApiAppSignatureException;

    if-eqz v1, :cond_0

    .line 85
    iget-object v1, p0, Lcom/liquable/nemo/sdk/ConnectActivity$2;->this$0:Lcom/liquable/nemo/sdk/ConnectActivity;

    iget-object v2, p0, Lcom/liquable/nemo/sdk/ConnectActivity$2;->this$0:Lcom/liquable/nemo/sdk/ConnectActivity;

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "invalid app signature"

    aput-object v4, v3, v5

    invoke-virtual {v2, v0, v3}, Lcom/liquable/nemo/sdk/ConnectActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/liquable/nemo/sdk/ConnectActivity;->finishWithError(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/liquable/nemo/sdk/ConnectActivity;->access$100(Lcom/liquable/nemo/sdk/ConnectActivity;Ljava/lang/String;)V

    .line 93
    :goto_0
    return-void

    .line 86
    :cond_0
    instance-of v1, p1, Lcom/liquable/nemo/model/InvalidOpenApiAppKeyException;

    if-eqz v1, :cond_1

    .line 87
    iget-object v1, p0, Lcom/liquable/nemo/sdk/ConnectActivity$2;->this$0:Lcom/liquable/nemo/sdk/ConnectActivity;

    iget-object v2, p0, Lcom/liquable/nemo/sdk/ConnectActivity$2;->this$0:Lcom/liquable/nemo/sdk/ConnectActivity;

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "invalid app key"

    aput-object v4, v3, v5

    invoke-virtual {v2, v0, v3}, Lcom/liquable/nemo/sdk/ConnectActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/liquable/nemo/sdk/ConnectActivity;->finishWithError(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/liquable/nemo/sdk/ConnectActivity;->access$100(Lcom/liquable/nemo/sdk/ConnectActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 89
    :cond_1
    # getter for: Lcom/liquable/nemo/sdk/ConnectActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/liquable/nemo/sdk/ConnectActivity;->access$200()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/liquable/nemo/model/DomainException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v1, p0, Lcom/liquable/nemo/sdk/ConnectActivity$2;->this$0:Lcom/liquable/nemo/sdk/ConnectActivity;

    invoke-virtual {p1}, Lcom/liquable/nemo/model/DomainException;->getI18nKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/liquable/nemo/util/NemoUIs;->showToastFromI18nKey(Landroid/content/Context;Ljava/lang/String;)V

    .line 91
    iget-object v1, p0, Lcom/liquable/nemo/sdk/ConnectActivity$2;->this$0:Lcom/liquable/nemo/sdk/ConnectActivity;

    invoke-virtual {v1}, Lcom/liquable/nemo/sdk/ConnectActivity;->finish()V

    goto :goto_0
.end method

.method protected postExecuteSuccess(Lcom/liquable/nemo/model/openapi/OpenApiAppDto;)V
    .locals 2
    .param p1, "result"    # Lcom/liquable/nemo/model/openapi/OpenApiAppDto;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/liquable/nemo/sdk/ConnectActivity$2;->this$0:Lcom/liquable/nemo/sdk/ConnectActivity;

    invoke-virtual {v0}, Lcom/liquable/nemo/sdk/ConnectActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    :goto_0
    return-void

    .line 100
    :cond_0
    if-nez p1, :cond_1

    .line 101
    iget-object v0, p0, Lcom/liquable/nemo/sdk/ConnectActivity$2;->this$0:Lcom/liquable/nemo/sdk/ConnectActivity;

    const-string/jumbo v1, "cannot find app by return url"

    # invokes: Lcom/liquable/nemo/sdk/ConnectActivity;->finishWithError(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/liquable/nemo/sdk/ConnectActivity;->access$100(Lcom/liquable/nemo/sdk/ConnectActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 105
    :cond_1
    iget-object v0, p0, Lcom/liquable/nemo/sdk/ConnectActivity$2;->this$0:Lcom/liquable/nemo/sdk/ConnectActivity;

    iget-object v1, p0, Lcom/liquable/nemo/sdk/ConnectActivity$2;->val$connectParameters:Lcom/liquable/nemo/sdk/model/ConnectParameters;

    invoke-virtual {v0, p1, v1}, Lcom/liquable/nemo/sdk/ConnectActivity;->displayAuthorizeDialog(Lcom/liquable/nemo/model/openapi/OpenApiAppDto;Lcom/liquable/nemo/sdk/model/ConnectParameters;)V

    goto :goto_0
.end method

.method protected bridge synthetic postExecuteSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 62
    check-cast p1, Lcom/liquable/nemo/model/openapi/OpenApiAppDto;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/sdk/ConnectActivity$2;->postExecuteSuccess(Lcom/liquable/nemo/model/openapi/OpenApiAppDto;)V

    return-void
.end method
