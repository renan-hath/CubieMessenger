.class Lcom/liquable/nemo/sdk/ConnectActivity$4;
.super Lcom/liquable/nemo/util/RpcAsyncTask;
.source "ConnectActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/sdk/ConnectActivity;->getAccessToken(Lcom/liquable/nemo/model/openapi/OpenApiAppDto;Lcom/liquable/nemo/sdk/model/ConnectParameters;)V
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
        "Lcom/liquable/nemo/model/openapi/OpenApiUserAccessTokenDto;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/sdk/ConnectActivity;

.field final synthetic val$loginCredential:Lcom/liquable/nemo/sdk/model/ConnectParameters;

.field final synthetic val$openApiAppDto:Lcom/liquable/nemo/model/openapi/OpenApiAppDto;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/sdk/ConnectActivity;Landroid/content/Context;Lcom/liquable/nemo/model/openapi/OpenApiAppDto;Lcom/liquable/nemo/sdk/model/ConnectParameters;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/sdk/ConnectActivity;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/liquable/nemo/sdk/ConnectActivity$4;->this$0:Lcom/liquable/nemo/sdk/ConnectActivity;

    iput-object p3, p0, Lcom/liquable/nemo/sdk/ConnectActivity$4;->val$openApiAppDto:Lcom/liquable/nemo/model/openapi/OpenApiAppDto;

    iput-object p4, p0, Lcom/liquable/nemo/sdk/ConnectActivity$4;->val$loginCredential:Lcom/liquable/nemo/sdk/model/ConnectParameters;

    invoke-direct {p0, p2}, Lcom/liquable/nemo/util/RpcAsyncTask;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/liquable/nemo/model/openapi/OpenApiUserAccessTokenDto;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;,
            Lcom/liquable/nemo/model/DomainException;
        }
    .end annotation

    .prologue
    .line 182
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->openApiDaemon:Lcom/liquable/nemo/sdk/OpenApiDaemon;

    iget-object v1, p0, Lcom/liquable/nemo/sdk/ConnectActivity$4;->val$openApiAppDto:Lcom/liquable/nemo/model/openapi/OpenApiAppDto;

    iget-object v2, p0, Lcom/liquable/nemo/sdk/ConnectActivity$4;->val$loginCredential:Lcom/liquable/nemo/sdk/model/ConnectParameters;

    invoke-virtual {v0, v1, v2}, Lcom/liquable/nemo/sdk/OpenApiDaemon;->connect(Lcom/liquable/nemo/model/openapi/OpenApiAppDto;Lcom/liquable/nemo/sdk/model/ConnectParameters;)Lcom/liquable/nemo/model/openapi/OpenApiUserAccessTokenDto;

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
    .line 178
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/sdk/ConnectActivity$4;->doInBackground([Ljava/lang/Void;)Lcom/liquable/nemo/model/openapi/OpenApiUserAccessTokenDto;

    move-result-object v0

    return-object v0
.end method

.method protected postExecute()V
    .locals 0

    .prologue
    .line 188
    return-void
.end method

.method protected postExecuteFail(Lcom/liquable/nemo/client/AsyncException;)V
    .locals 1
    .param p1, "exception"    # Lcom/liquable/nemo/client/AsyncException;

    .prologue
    .line 193
    iget-object v0, p0, Lcom/liquable/nemo/sdk/ConnectActivity$4;->this$0:Lcom/liquable/nemo/sdk/ConnectActivity;

    invoke-virtual {v0}, Lcom/liquable/nemo/sdk/ConnectActivity;->finish()V

    .line 194
    return-void
.end method

.method protected postExecuteSuccess(Lcom/liquable/nemo/model/openapi/OpenApiUserAccessTokenDto;)V
    .locals 1
    .param p1, "result"    # Lcom/liquable/nemo/model/openapi/OpenApiUserAccessTokenDto;

    .prologue
    .line 198
    iget-object v0, p0, Lcom/liquable/nemo/sdk/ConnectActivity$4;->this$0:Lcom/liquable/nemo/sdk/ConnectActivity;

    invoke-virtual {v0}, Lcom/liquable/nemo/sdk/ConnectActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    :goto_0
    return-void

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/sdk/ConnectActivity$4;->this$0:Lcom/liquable/nemo/sdk/ConnectActivity;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/sdk/ConnectActivity;->finishWithAccessToken(Lcom/liquable/nemo/model/openapi/OpenApiUserAccessTokenDto;)V

    goto :goto_0
.end method

.method protected bridge synthetic postExecuteSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 178
    check-cast p1, Lcom/liquable/nemo/model/openapi/OpenApiUserAccessTokenDto;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/sdk/ConnectActivity$4;->postExecuteSuccess(Lcom/liquable/nemo/model/openapi/OpenApiUserAccessTokenDto;)V

    return-void
.end method
