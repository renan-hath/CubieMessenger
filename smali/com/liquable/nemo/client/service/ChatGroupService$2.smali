.class Lcom/liquable/nemo/client/service/ChatGroupService$2;
.super Ljava/lang/Object;
.source "ChatGroupService.java"

# interfaces
.implements Lcom/liquable/nemo/client/rpcrest/RpcRestClient$RequestConfig;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/client/service/ChatGroupService;->listMultiChatGroups()Ljava/util/List;
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
        "Lcom/liquable/nemo/model/group/ChatGroupDto;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/client/service/ChatGroupService;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/client/service/ChatGroupService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/client/service/ChatGroupService;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/liquable/nemo/client/service/ChatGroupService$2;->this$0:Lcom/liquable/nemo/client/service/ChatGroupService;

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
            "Lcom/liquable/nemo/model/group/ChatGroupDto;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 99
    const-string/jumbo v0, "/chatGroupService/listMultiChatGroups"

    invoke-virtual {p1, v0}, Lcom/liquable/volley/request/RequestBuilder;->withPath(Ljava/lang/String;)Lcom/liquable/volley/request/RequestBuilder;

    move-result-object v0

    sget-object v1, Lcom/liquable/nemo/client/mapper/ChatGroupDtoListMapper;->INSTANCE:Lcom/liquable/nemo/client/mapper/ChatGroupDtoListMapper;

    .line 100
    invoke-virtual {v0, v1}, Lcom/liquable/volley/request/RequestBuilder;->build(Lcom/liquable/nemo/client/mapper/ResultMapper;)Lcom/liquable/volley/request/Requestable;

    move-result-object v0

    return-object v0
.end method
