.class Lcom/liquable/nemo/client/service/AccountService$1;
.super Ljava/lang/Object;
.source "AccountService.java"

# interfaces
.implements Lcom/liquable/nemo/client/rpcrest/RpcRestClient$RequestConfig;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/client/service/AccountService;->listSubAccounts()Ljava/util/List;
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
        "Lcom/liquable/nemo/model/account/SubAccountDto;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/client/service/AccountService;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/client/service/AccountService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/client/service/AccountService;

    .prologue
    .line 276
    iput-object p1, p0, Lcom/liquable/nemo/client/service/AccountService$1;->this$0:Lcom/liquable/nemo/client/service/AccountService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public config(Lcom/liquable/volley/request/RequestBuilder;)Lcom/liquable/volley/request/Requestable;
    .locals 2
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
            "Lcom/liquable/nemo/model/account/SubAccountDto;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 279
    const-string/jumbo v0, "/accountService/listSubAccounts"

    invoke-virtual {p1, v0}, Lcom/liquable/volley/request/RequestBuilder;->withPath(Ljava/lang/String;)Lcom/liquable/volley/request/RequestBuilder;

    move-result-object v0

    sget-object v1, Lcom/liquable/nemo/client/mapper/SubAccountDtoListMapper;->INSTANCE:Lcom/liquable/nemo/client/mapper/SubAccountDtoListMapper;

    .line 280
    invoke-virtual {v0, v1}, Lcom/liquable/volley/request/RequestBuilder;->build(Lcom/liquable/nemo/client/mapper/ResultMapper;)Lcom/liquable/volley/request/Requestable;

    move-result-object v0

    return-object v0
.end method
