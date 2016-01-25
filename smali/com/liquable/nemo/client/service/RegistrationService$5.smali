.class Lcom/liquable/nemo/client/service/RegistrationService$5;
.super Ljava/lang/Object;
.source "RegistrationService.java"

# interfaces
.implements Lcom/liquable/nemo/client/rpcrest/RpcRestClient$RequestConfig;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/client/service/RegistrationService;->listAccountsByUids(Ljava/util/List;)Ljava/util/List;
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
        "Ljava/util/List",
        "<",
        "Lcom/liquable/nemo/model/account/AccountDto;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/client/service/RegistrationService;

.field final synthetic val$uids:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/client/service/RegistrationService;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/client/service/RegistrationService;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/liquable/nemo/client/service/RegistrationService$5;->this$0:Lcom/liquable/nemo/client/service/RegistrationService;

    iput-object p2, p0, Lcom/liquable/nemo/client/service/RegistrationService$5;->val$uids:Ljava/util/List;

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
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/model/account/AccountDto;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 163
    const-string/jumbo v0, "/accountService/listAccountsByUids"

    invoke-virtual {p1, v0}, Lcom/liquable/volley/request/RequestBuilder;->withPath(Ljava/lang/String;)Lcom/liquable/volley/request/RequestBuilder;

    move-result-object v0

    const-string/jumbo v1, "uids"

    iget-object v2, p0, Lcom/liquable/nemo/client/service/RegistrationService$5;->val$uids:Ljava/util/List;

    .line 164
    invoke-virtual {v0, v1, v2}, Lcom/liquable/volley/request/RequestBuilder;->withAddParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/liquable/volley/request/RequestBuilder;

    move-result-object v0

    sget-object v1, Lcom/liquable/nemo/client/mapper/AccountDtoListMapper;->INSTANCE:Lcom/liquable/nemo/client/mapper/AccountDtoListMapper;

    .line 165
    invoke-virtual {v0, v1}, Lcom/liquable/volley/request/RequestBuilder;->build(Lcom/liquable/nemo/client/mapper/ResultMapper;)Lcom/liquable/volley/request/Requestable;

    move-result-object v0

    return-object v0
.end method
