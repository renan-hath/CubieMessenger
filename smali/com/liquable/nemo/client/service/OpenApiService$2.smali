.class Lcom/liquable/nemo/client/service/OpenApiService$2;
.super Ljava/lang/Object;
.source "OpenApiService.java"

# interfaces
.implements Lcom/liquable/nemo/client/rpcrest/RpcRestClient$RequestConfig;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/client/service/OpenApiService;->connect(Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/model/openapi/OpenApiUserAccessTokenDto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/liquable/nemo/client/rpcrest/RpcRestClient$RequestConfig",
        "<",
        "Lcom/liquable/nemo/model/openapi/OpenApiUserAccessTokenDto;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/client/service/OpenApiService;

.field final synthetic val$appUniqueDeviceId:Ljava/lang/String;

.field final synthetic val$openApiAppId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/client/service/OpenApiService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/client/service/OpenApiService;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/liquable/nemo/client/service/OpenApiService$2;->this$0:Lcom/liquable/nemo/client/service/OpenApiService;

    iput-object p2, p0, Lcom/liquable/nemo/client/service/OpenApiService$2;->val$openApiAppId:Ljava/lang/String;

    iput-object p3, p0, Lcom/liquable/nemo/client/service/OpenApiService$2;->val$appUniqueDeviceId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public config(Lcom/liquable/volley/request/RequestBuilder;)Lcom/liquable/volley/request/Requestable;
    .locals 3
    .param p1, "builder"    # Lcom/liquable/volley/request/RequestBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/liquable/volley/request/RequestBuilder;",
            ")",
            "Lcom/liquable/volley/request/Requestable",
            "<",
            "Lcom/liquable/nemo/model/openapi/OpenApiUserAccessTokenDto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    invoke-virtual {p1}, Lcom/liquable/volley/request/RequestBuilder;->withHttpPost()Lcom/liquable/volley/request/RequestBuilder;

    move-result-object v0

    const-string/jumbo v1, "/openApiService/connect"

    .line 62
    invoke-virtual {v0, v1}, Lcom/liquable/volley/request/RequestBuilder;->withPath(Ljava/lang/String;)Lcom/liquable/volley/request/RequestBuilder;

    move-result-object v0

    const-string/jumbo v1, "openApiAppId"

    iget-object v2, p0, Lcom/liquable/nemo/client/service/OpenApiService$2;->val$openApiAppId:Ljava/lang/String;

    .line 63
    invoke-virtual {v0, v1, v2}, Lcom/liquable/volley/request/RequestBuilder;->withAddParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/liquable/volley/request/RequestBuilder;

    move-result-object v0

    const-string/jumbo v1, "uniqueDeviceId"

    iget-object v2, p0, Lcom/liquable/nemo/client/service/OpenApiService$2;->val$appUniqueDeviceId:Ljava/lang/String;

    .line 64
    invoke-virtual {v0, v1, v2}, Lcom/liquable/volley/request/RequestBuilder;->withAddParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/liquable/volley/request/RequestBuilder;

    move-result-object v0

    const-class v1, Lcom/liquable/nemo/model/openapi/OpenApiUserAccessTokenDto;

    .line 65
    invoke-virtual {v0, v1}, Lcom/liquable/volley/request/RequestBuilder;->build(Ljava/lang/Class;)Lcom/liquable/volley/request/Requestable;

    move-result-object v0

    return-object v0
.end method
