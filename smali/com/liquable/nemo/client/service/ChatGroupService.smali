.class public Lcom/liquable/nemo/client/service/ChatGroupService;
.super Ljava/lang/Object;
.source "ChatGroupService.java"

# interfaces
.implements Lcom/liquable/nemo/client/service/IChatGroupService;


# instance fields
.field private final nemoRpcService:Lcom/liquable/nemo/client/service/NemoRpcService;

.field private final rpcRestClient:Lcom/liquable/nemo/client/rpcrest/RpcRestClient;


# direct methods
.method public constructor <init>(Lcom/liquable/nemo/client/service/NemoRpcService;Lcom/liquable/nemo/client/rpcrest/RpcRestClient;)V
    .locals 0
    .param p1, "nemoRpcService"    # Lcom/liquable/nemo/client/service/NemoRpcService;
    .param p2, "rpcRestClient"    # Lcom/liquable/nemo/client/rpcrest/RpcRestClient;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/liquable/nemo/client/service/ChatGroupService;->nemoRpcService:Lcom/liquable/nemo/client/service/NemoRpcService;

    .line 26
    iput-object p2, p0, Lcom/liquable/nemo/client/service/ChatGroupService;->rpcRestClient:Lcom/liquable/nemo/client/rpcrest/RpcRestClient;

    .line 27
    return-void
.end method


# virtual methods
.method public addMember(Lcom/liquable/nemo/group/model/ChatGroup;Lcom/liquable/nemo/friend/model/Account;Ljava/lang/String;)Z
    .locals 6
    .param p1, "chatGroup"    # Lcom/liquable/nemo/group/model/ChatGroup;
    .param p2, "friend"    # Lcom/liquable/nemo/friend/model/Account;
    .param p3, "myUid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 33
    :try_start_0
    iget-object v1, p0, Lcom/liquable/nemo/client/service/ChatGroupService;->nemoRpcService:Lcom/liquable/nemo/client/service/NemoRpcService;

    const-string/jumbo v2, "chatGroupService.addMemberByMember"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 34
    invoke-virtual {p1}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p2}, Lcom/liquable/nemo/friend/model/Account;->getId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    sget-object v4, Lcom/liquable/nemo/client/mapper/BooleanMapper;->INSTANCE:Lcom/liquable/nemo/client/mapper/BooleanMapper;

    .line 33
    invoke-virtual {v1, v2, v3, v4}, Lcom/liquable/nemo/client/service/NemoRpcService;->sendFrameWithResult(Ljava/lang/String;[Ljava/lang/Object;Lcom/liquable/nemo/client/mapper/ResultMapper;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Lcom/liquable/nemo/model/DomainException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 35
    :catch_0
    move-exception v0

    .line 36
    .local v0, "e":Lcom/liquable/nemo/model/DomainException;
    new-instance v1, Lcom/liquable/nemo/client/SyntaxErrorException;

    invoke-direct {v1}, Lcom/liquable/nemo/client/SyntaxErrorException;-><init>()V

    throw v1
.end method

.method public changeOwner(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "topic"    # Ljava/lang/String;
    .param p2, "newOwnerUid"    # Ljava/lang/String;
    .param p3, "myUid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;,
            Lcom/liquable/nemo/model/NotChatGroupOwnerException;
        }
    .end annotation

    .prologue
    .line 44
    :try_start_0
    iget-object v1, p0, Lcom/liquable/nemo/client/service/ChatGroupService;->nemoRpcService:Lcom/liquable/nemo/client/service/NemoRpcService;

    const-string/jumbo v2, "chatGroupService.changeOwner"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    sget-object v4, Lcom/liquable/nemo/client/mapper/BooleanMapper;->INSTANCE:Lcom/liquable/nemo/client/mapper/BooleanMapper;

    invoke-virtual {v1, v2, v3, v4}, Lcom/liquable/nemo/client/service/NemoRpcService;->sendFrameWithResult(Ljava/lang/String;[Ljava/lang/Object;Lcom/liquable/nemo/client/mapper/ResultMapper;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Lcom/liquable/nemo/model/DomainException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 46
    :catch_0
    move-exception v0

    .line 47
    .local v0, "e":Lcom/liquable/nemo/model/DomainException;
    instance-of v1, v0, Lcom/liquable/nemo/model/NotChatGroupOwnerException;

    if-eqz v1, :cond_0

    .line 48
    check-cast v0, Lcom/liquable/nemo/model/NotChatGroupOwnerException;

    .end local v0    # "e":Lcom/liquable/nemo/model/DomainException;
    throw v0

    .line 50
    .restart local v0    # "e":Lcom/liquable/nemo/model/DomainException;
    :cond_0
    new-instance v1, Lcom/liquable/nemo/client/SyntaxErrorException;

    invoke-direct {v1}, Lcom/liquable/nemo/client/SyntaxErrorException;-><init>()V

    throw v1
.end method

.method public createChatGroup(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/liquable/nemo/model/group/ChatGroupDto;
    .locals 5
    .param p1, "creatorUid"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/liquable/nemo/model/group/ChatGroupDto;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 59
    .local p3, "memberUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v1, p0, Lcom/liquable/nemo/client/service/ChatGroupService;->nemoRpcService:Lcom/liquable/nemo/client/service/NemoRpcService;

    const-string/jumbo v2, "chatGroupService.createChatGroup"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    sget-object v4, Lcom/liquable/nemo/client/mapper/ChatGroupDtoMapper;->INSTANCE:Lcom/liquable/nemo/client/mapper/ChatGroupDtoMapper;

    invoke-virtual {v1, v2, v3, v4}, Lcom/liquable/nemo/client/service/NemoRpcService;->sendFrameWithResult(Ljava/lang/String;[Ljava/lang/Object;Lcom/liquable/nemo/client/mapper/ResultMapper;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/model/group/ChatGroupDto;
    :try_end_0
    .catch Lcom/liquable/nemo/model/DomainException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Lcom/liquable/nemo/model/DomainException;
    new-instance v1, Lcom/liquable/nemo/client/SyntaxErrorException;

    invoke-direct {v1}, Lcom/liquable/nemo/client/SyntaxErrorException;-><init>()V

    throw v1
.end method

.method public findOrCreateOneToOneGroups(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/model/group/ChatGroupDto;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 69
    .local p1, "friendUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v1, p0, Lcom/liquable/nemo/client/service/ChatGroupService;->rpcRestClient:Lcom/liquable/nemo/client/rpcrest/RpcRestClient;

    new-instance v2, Lcom/liquable/nemo/client/service/ChatGroupService$1;

    invoke-direct {v2, p0, p1}, Lcom/liquable/nemo/client/service/ChatGroupService$1;-><init>(Lcom/liquable/nemo/client/service/ChatGroupService;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/client/rpcrest/RpcRestClient;->execute(Lcom/liquable/nemo/client/rpcrest/RpcRestClient$RequestConfig;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;
    :try_end_0
    .catch Lcom/liquable/nemo/model/DomainException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Lcom/liquable/nemo/model/DomainException;
    new-instance v1, Lcom/liquable/nemo/client/SyntaxErrorException;

    invoke-direct {v1}, Lcom/liquable/nemo/client/SyntaxErrorException;-><init>()V

    throw v1
.end method

.method public getChatGroup(Ljava/lang/String;)Lcom/liquable/nemo/model/group/ChatGroupDto;
    .locals 5
    .param p1, "topic"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 85
    :try_start_0
    iget-object v1, p0, Lcom/liquable/nemo/client/service/ChatGroupService;->nemoRpcService:Lcom/liquable/nemo/client/service/NemoRpcService;

    const-string/jumbo v2, "chatGroupService.getGroup"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    sget-object v4, Lcom/liquable/nemo/client/mapper/ChatGroupDtoMapper;->INSTANCE:Lcom/liquable/nemo/client/mapper/ChatGroupDtoMapper;

    invoke-virtual {v1, v2, v3, v4}, Lcom/liquable/nemo/client/service/NemoRpcService;->sendFrameWithResult(Ljava/lang/String;[Ljava/lang/Object;Lcom/liquable/nemo/client/mapper/ResultMapper;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/model/group/ChatGroupDto;
    :try_end_0
    .catch Lcom/liquable/nemo/model/DomainException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Lcom/liquable/nemo/model/DomainException;
    new-instance v1, Lcom/liquable/nemo/client/SyntaxErrorException;

    invoke-direct {v1}, Lcom/liquable/nemo/client/SyntaxErrorException;-><init>()V

    throw v1
.end method

.method public listMultiChatGroups()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/model/group/ChatGroupDto;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 96
    :try_start_0
    iget-object v1, p0, Lcom/liquable/nemo/client/service/ChatGroupService;->rpcRestClient:Lcom/liquable/nemo/client/rpcrest/RpcRestClient;

    new-instance v2, Lcom/liquable/nemo/client/service/ChatGroupService$2;

    invoke-direct {v2, p0}, Lcom/liquable/nemo/client/service/ChatGroupService$2;-><init>(Lcom/liquable/nemo/client/service/ChatGroupService;)V

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/client/rpcrest/RpcRestClient;->execute(Lcom/liquable/nemo/client/rpcrest/RpcRestClient$RequestConfig;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;
    :try_end_0
    .catch Lcom/liquable/nemo/model/DomainException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 103
    :catch_0
    move-exception v0

    .line 104
    .local v0, "e":Lcom/liquable/nemo/model/DomainException;
    new-instance v1, Lcom/liquable/nemo/client/SyntaxErrorException;

    invoke-direct {v1}, Lcom/liquable/nemo/client/SyntaxErrorException;-><init>()V

    throw v1
.end method

.method public removeMember(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "topic"    # Ljava/lang/String;
    .param p2, "myUid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 111
    :try_start_0
    iget-object v1, p0, Lcom/liquable/nemo/client/service/ChatGroupService;->nemoRpcService:Lcom/liquable/nemo/client/service/NemoRpcService;

    const-string/jumbo v2, "chatGroupService.removeMember"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    sget-object v4, Lcom/liquable/nemo/client/mapper/BooleanMapper;->INSTANCE:Lcom/liquable/nemo/client/mapper/BooleanMapper;

    invoke-virtual {v1, v2, v3, v4}, Lcom/liquable/nemo/client/service/NemoRpcService;->sendFrameWithResult(Ljava/lang/String;[Ljava/lang/Object;Lcom/liquable/nemo/client/mapper/ResultMapper;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Lcom/liquable/nemo/model/DomainException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 113
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Lcom/liquable/nemo/model/DomainException;
    new-instance v1, Lcom/liquable/nemo/client/SyntaxErrorException;

    invoke-direct {v1}, Lcom/liquable/nemo/client/SyntaxErrorException;-><init>()V

    throw v1
.end method

.method public removeMemberByOwner(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "topic"    # Ljava/lang/String;
    .param p2, "removeMemberUid"    # Ljava/lang/String;
    .param p3, "myUid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;,
            Lcom/liquable/nemo/model/NotChatGroupOwnerException;
        }
    .end annotation

    .prologue
    .line 123
    :try_start_0
    iget-object v1, p0, Lcom/liquable/nemo/client/service/ChatGroupService;->nemoRpcService:Lcom/liquable/nemo/client/service/NemoRpcService;

    const-string/jumbo v2, "chatGroupService.removeMemberByOwner"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    sget-object v4, Lcom/liquable/nemo/client/mapper/BooleanMapper;->INSTANCE:Lcom/liquable/nemo/client/mapper/BooleanMapper;

    invoke-virtual {v1, v2, v3, v4}, Lcom/liquable/nemo/client/service/NemoRpcService;->sendFrameWithResult(Ljava/lang/String;[Ljava/lang/Object;Lcom/liquable/nemo/client/mapper/ResultMapper;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Lcom/liquable/nemo/model/DomainException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, "e":Lcom/liquable/nemo/model/DomainException;
    instance-of v1, v0, Lcom/liquable/nemo/model/NotChatGroupOwnerException;

    if-eqz v1, :cond_0

    .line 128
    check-cast v0, Lcom/liquable/nemo/model/NotChatGroupOwnerException;

    .end local v0    # "e":Lcom/liquable/nemo/model/DomainException;
    throw v0

    .line 130
    .restart local v0    # "e":Lcom/liquable/nemo/model/DomainException;
    :cond_0
    new-instance v1, Lcom/liquable/nemo/client/SyntaxErrorException;

    invoke-direct {v1}, Lcom/liquable/nemo/client/SyntaxErrorException;-><init>()V

    throw v1
.end method

.method public updateChatGroupName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "topic"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "myUid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 138
    :try_start_0
    iget-object v1, p0, Lcom/liquable/nemo/client/service/ChatGroupService;->nemoRpcService:Lcom/liquable/nemo/client/service/NemoRpcService;

    const-string/jumbo v2, "chatGroupService.updateNameByMember"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    sget-object v4, Lcom/liquable/nemo/client/mapper/VoidMapper;->INSTANCE:Lcom/liquable/nemo/client/mapper/VoidMapper;

    invoke-virtual {v1, v2, v3, v4}, Lcom/liquable/nemo/client/service/NemoRpcService;->sendFrameWithResult(Ljava/lang/String;[Ljava/lang/Object;Lcom/liquable/nemo/client/mapper/ResultMapper;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/liquable/nemo/model/DomainException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    return-void

    .line 140
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Lcom/liquable/nemo/model/DomainException;
    new-instance v1, Lcom/liquable/nemo/client/SyntaxErrorException;

    invoke-direct {v1}, Lcom/liquable/nemo/client/SyntaxErrorException;-><init>()V

    throw v1
.end method
