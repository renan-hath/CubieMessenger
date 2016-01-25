.class public Lcom/liquable/nemo/client/service/ChattingService;
.super Ljava/lang/Object;
.source "ChattingService.java"

# interfaces
.implements Lcom/liquable/nemo/client/service/IChattingService;


# static fields
.field private static final TIMEOUT_INTERVAL:I = 0x7530


# instance fields
.field private final broadcastManager:Lcom/liquable/nemo/android/BroadcastManager;

.field private final messageProcessor:Lcom/liquable/nemo/message/model/MessageProcessor;

.field private final nemoRpcService:Lcom/liquable/nemo/client/service/NemoRpcService;

.field private final pref:Lcom/liquable/nemo/util/Pref;

.field private final rpcRestClient:Lcom/liquable/nemo/client/rpcrest/RpcRestClient;

.field private final waitSendAcks:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/liquable/nemo/message/model/DomainMessage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/liquable/nemo/client/service/NemoRpcService;Lcom/liquable/nemo/message/model/MessageProcessor;Lcom/liquable/nemo/android/BroadcastManager;Lcom/liquable/nemo/util/Pref;Lcom/liquable/nemo/client/rpcrest/RpcRestClient;)V
    .locals 1
    .param p1, "nemoRpcService"    # Lcom/liquable/nemo/client/service/NemoRpcService;
    .param p2, "messageProcessor"    # Lcom/liquable/nemo/message/model/MessageProcessor;
    .param p3, "broadcastManager"    # Lcom/liquable/nemo/android/BroadcastManager;
    .param p4, "pref"    # Lcom/liquable/nemo/util/Pref;
    .param p5, "rpcRestClient"    # Lcom/liquable/nemo/client/rpcrest/RpcRestClient;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/client/service/ChattingService;->waitSendAcks:Ljava/util/concurrent/ConcurrentHashMap;

    .line 53
    iput-object p1, p0, Lcom/liquable/nemo/client/service/ChattingService;->nemoRpcService:Lcom/liquable/nemo/client/service/NemoRpcService;

    .line 54
    iput-object p2, p0, Lcom/liquable/nemo/client/service/ChattingService;->messageProcessor:Lcom/liquable/nemo/message/model/MessageProcessor;

    .line 55
    iput-object p3, p0, Lcom/liquable/nemo/client/service/ChattingService;->broadcastManager:Lcom/liquable/nemo/android/BroadcastManager;

    .line 56
    iput-object p4, p0, Lcom/liquable/nemo/client/service/ChattingService;->pref:Lcom/liquable/nemo/util/Pref;

    .line 57
    iput-object p5, p0, Lcom/liquable/nemo/client/service/ChattingService;->rpcRestClient:Lcom/liquable/nemo/client/rpcrest/RpcRestClient;

    .line 58
    return-void
.end method

.method static synthetic access$lambda$0(ILcom/liquable/volley/request/RequestBuilder;)Lcom/liquable/volley/request/Requestable;
    .locals 1

    invoke-static {p0, p1}, Lcom/liquable/nemo/client/service/ChattingService;->lambda$getNextSync$8(ILcom/liquable/volley/request/RequestBuilder;)Lcom/liquable/volley/request/Requestable;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$getNextSync$8(ILcom/liquable/volley/request/RequestBuilder;)Lcom/liquable/volley/request/Requestable;
    .locals 3
    .param p1, "builder"    # Lcom/liquable/volley/request/RequestBuilder;

    .prologue
    .line 97
    const-string/jumbo v0, "/offlineMessageService/getNextSync"

    invoke-virtual {p1, v0}, Lcom/liquable/volley/request/RequestBuilder;->withPath(Ljava/lang/String;)Lcom/liquable/volley/request/RequestBuilder;

    move-result-object v0

    const-string/jumbo v1, "size"

    .line 98
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/liquable/volley/request/RequestBuilder;->withAddParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/liquable/volley/request/RequestBuilder;

    move-result-object v0

    const-class v1, Lcom/liquable/nemo/model/message/OfflineSyncDto;

    .line 99
    invoke-virtual {v0, v1}, Lcom/liquable/volley/request/RequestBuilder;->build(Ljava/lang/Class;)Lcom/liquable/volley/request/Requestable;

    move-result-object v0

    return-object v0
.end method

.method private listByReceiverWithOrder(Lcom/liquable/nemo/model/account/CompositeUid;I)Ljava/util/List;
    .locals 6
    .param p1, "compositeUid"    # Lcom/liquable/nemo/model/account/CompositeUid;
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/liquable/nemo/model/account/CompositeUid;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/model/message/OfflineMessageDto;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 86
    :try_start_0
    iget-object v1, p0, Lcom/liquable/nemo/client/service/ChattingService;->nemoRpcService:Lcom/liquable/nemo/client/service/NemoRpcService;

    const-string/jumbo v2, "offlineMessageService.listByReceiverWithOrder"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 87
    invoke-virtual {p1}, Lcom/liquable/nemo/model/account/CompositeUid;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    sget-object v4, Lcom/liquable/nemo/client/mapper/OfflineMessageDtoListMapper;->INSTANCE:Lcom/liquable/nemo/client/mapper/OfflineMessageDtoListMapper;

    .line 86
    invoke-virtual {v1, v2, v3, v4}, Lcom/liquable/nemo/client/service/NemoRpcService;->sendFrameWithResult(Ljava/lang/String;[Ljava/lang/Object;Lcom/liquable/nemo/client/mapper/ResultMapper;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;
    :try_end_0
    .catch Lcom/liquable/nemo/model/DomainException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 89
    :catch_0
    move-exception v0

    .line 90
    .local v0, "e":Lcom/liquable/nemo/model/DomainException;
    new-instance v1, Lcom/liquable/nemo/client/SyntaxErrorException;

    invoke-direct {v1}, Lcom/liquable/nemo/client/SyntaxErrorException;-><init>()V

    throw v1
.end method


# virtual methods
.method public acknowledge(Lcom/liquable/nemo/model/message/OfflineSyncDto;)V
    .locals 5
    .param p1, "syncDto"    # Lcom/liquable/nemo/model/message/OfflineSyncDto;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 134
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 135
    .local v2, "seqIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/liquable/nemo/model/message/OfflineSyncDto;->getMessages()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/model/message/OfflineMessageDto;

    .line 136
    .local v0, "dto":Lcom/liquable/nemo/model/message/OfflineMessageDto;
    invoke-virtual {v0}, Lcom/liquable/nemo/model/message/OfflineMessageDto;->getSequenceId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/liquable/nemo/model/DomainException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 150
    .end local v0    # "dto":Lcom/liquable/nemo/model/message/OfflineMessageDto;
    .end local v2    # "seqIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    .line 151
    .local v1, "e":Lcom/liquable/nemo/model/DomainException;
    new-instance v3, Lcom/liquable/nemo/client/SyntaxErrorException;

    invoke-direct {v3}, Lcom/liquable/nemo/client/SyntaxErrorException;-><init>()V

    throw v3

    .line 138
    .end local v1    # "e":Lcom/liquable/nemo/model/DomainException;
    .restart local v2    # "seqIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/liquable/nemo/client/service/ChattingService;->rpcRestClient:Lcom/liquable/nemo/client/rpcrest/RpcRestClient;

    new-instance v4, Lcom/liquable/nemo/client/service/ChattingService$1;

    invoke-direct {v4, p0, p1, v2}, Lcom/liquable/nemo/client/service/ChattingService$1;-><init>(Lcom/liquable/nemo/client/service/ChattingService;Lcom/liquable/nemo/model/message/OfflineSyncDto;Ljava/util/List;)V

    invoke-virtual {v3, v4}, Lcom/liquable/nemo/client/rpcrest/RpcRestClient;->execute(Lcom/liquable/nemo/client/rpcrest/RpcRestClient$RequestConfig;)Ljava/lang/Object;
    :try_end_1
    .catch Lcom/liquable/nemo/model/DomainException; {:try_start_1 .. :try_end_1} :catch_0

    .line 153
    return-void
.end method

.method public convertDomainMessage(Lcom/liquable/nemo/model/message/OfflineMessageDto;)Lcom/liquable/nemo/message/model/DomainMessage;
    .locals 6
    .param p1, "offlineMessageDto"    # Lcom/liquable/nemo/model/message/OfflineMessageDto;

    .prologue
    .line 107
    new-instance v0, Lcom/liquable/nemo/message/model/MessageInfo;

    invoke-virtual {p1}, Lcom/liquable/nemo/model/message/OfflineMessageDto;->getMessageId()Ljava/lang/String;

    move-result-object v1

    .line 108
    invoke-virtual {p1}, Lcom/liquable/nemo/model/message/OfflineMessageDto;->getTopic()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    .line 109
    invoke-virtual {p1}, Lcom/liquable/nemo/model/message/OfflineMessageDto;->getSendTime()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 110
    invoke-virtual {p1}, Lcom/liquable/nemo/model/message/OfflineMessageDto;->getSenderUid()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/liquable/nemo/message/model/MessageInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;)V

    .line 111
    .local v0, "messageInfo":Lcom/liquable/nemo/message/model/MessageInfo;
    iget-object v1, p0, Lcom/liquable/nemo/client/service/ChattingService;->messageProcessor:Lcom/liquable/nemo/message/model/MessageProcessor;

    invoke-virtual {p1}, Lcom/liquable/nemo/model/message/OfflineMessageDto;->getData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/liquable/nemo/message/model/MessageProcessor;->decode(Ljava/lang/String;Lcom/liquable/nemo/message/model/MessageInfo;)Lcom/liquable/nemo/message/model/DomainMessage;

    move-result-object v1

    return-object v1
.end method

.method public getNextSync(I)Lcom/liquable/nemo/model/message/OfflineSyncDto;
    .locals 3
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 97
    :try_start_0
    iget-object v1, p0, Lcom/liquable/nemo/client/service/ChattingService;->rpcRestClient:Lcom/liquable/nemo/client/rpcrest/RpcRestClient;

    invoke-static {p1}, Lcom/liquable/nemo/client/service/ChattingService$$Lambda$1;->lambdaFactory$(I)Lcom/liquable/nemo/client/rpcrest/RpcRestClient$RequestConfig;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/client/rpcrest/RpcRestClient;->execute(Lcom/liquable/nemo/client/rpcrest/RpcRestClient$RequestConfig;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/model/message/OfflineSyncDto;
    :try_end_0
    .catch Lcom/liquable/nemo/model/DomainException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, "e":Lcom/liquable/nemo/model/DomainException;
    new-instance v1, Lcom/liquable/nemo/client/SyntaxErrorException;

    invoke-direct {v1}, Lcom/liquable/nemo/client/SyntaxErrorException;-><init>()V

    throw v1
.end method

.method public isMessageResendable(Ljava/lang/String;)Z
    .locals 6
    .param p1, "messageId"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 62
    iget-object v2, p0, Lcom/liquable/nemo/client/service/ChattingService;->waitSendAcks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/message/model/DomainMessage;

    .line 63
    .local v0, "domainMessage":Lcom/liquable/nemo/message/model/DomainMessage;
    if-nez v0, :cond_1

    .line 66
    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/liquable/nemo/message/model/DomainMessage;->getCreateTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x7530

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isWaitSendAck(Ljava/lang/String;)Z
    .locals 1
    .param p1, "messageId"    # Ljava/lang/String;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/liquable/nemo/client/service/ChattingService;->waitSendAcks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public listOfflineMessages(Lcom/liquable/nemo/model/account/CompositeUid;I)Ljava/util/List;
    .locals 1
    .param p1, "compositeUid"    # Lcom/liquable/nemo/model/account/CompositeUid;
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/liquable/nemo/model/account/CompositeUid;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/model/message/OfflineMessageDto;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Lcom/liquable/nemo/client/service/ChattingService;->listByReceiverWithOrder(Lcom/liquable/nemo/model/account/CompositeUid;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public purge(Lcom/liquable/nemo/model/account/CompositeUid;Ljava/util/List;)V
    .locals 8
    .param p1, "compositeUid"    # Lcom/liquable/nemo/model/account/CompositeUid;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/liquable/nemo/model/account/CompositeUid;",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/model/message/OfflineMessageDto;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 119
    .local p2, "dtos":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/model/message/OfflineMessageDto;>;"
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 120
    .local v2, "msgIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/model/message/OfflineMessageDto;

    .line 121
    .local v0, "dto":Lcom/liquable/nemo/model/message/OfflineMessageDto;
    invoke-virtual {v0}, Lcom/liquable/nemo/model/message/OfflineMessageDto;->getMessageId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/liquable/nemo/model/DomainException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 126
    .end local v0    # "dto":Lcom/liquable/nemo/model/message/OfflineMessageDto;
    .end local v2    # "msgIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    .line 127
    .local v1, "e":Lcom/liquable/nemo/model/DomainException;
    new-instance v3, Lcom/liquable/nemo/client/SyntaxErrorException;

    invoke-direct {v3}, Lcom/liquable/nemo/client/SyntaxErrorException;-><init>()V

    throw v3

    .line 123
    .end local v1    # "e":Lcom/liquable/nemo/model/DomainException;
    .restart local v2    # "msgIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/liquable/nemo/client/service/ChattingService;->nemoRpcService:Lcom/liquable/nemo/client/service/NemoRpcService;

    const-string/jumbo v4, "offlineMessageService.purge"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 124
    invoke-virtual {p1}, Lcom/liquable/nemo/model/account/CompositeUid;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v2, v5, v6

    sget-object v6, Lcom/liquable/nemo/client/mapper/VoidMapper;->INSTANCE:Lcom/liquable/nemo/client/mapper/VoidMapper;

    .line 123
    invoke-virtual {v3, v4, v5, v6}, Lcom/liquable/nemo/client/service/NemoRpcService;->sendFrameWithResult(Ljava/lang/String;[Ljava/lang/Object;Lcom/liquable/nemo/client/mapper/ResultMapper;)Ljava/lang/Object;
    :try_end_1
    .catch Lcom/liquable/nemo/model/DomainException; {:try_start_1 .. :try_end_1} :catch_0

    .line 129
    return-void
.end method

.method public removeWaitSendAcks(Ljava/lang/String;)Z
    .locals 2
    .param p1, "messageId"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 157
    iget-object v1, p0, Lcom/liquable/nemo/client/service/ChattingService;->nemoRpcService:Lcom/liquable/nemo/client/service/NemoRpcService;

    invoke-virtual {v1, p1}, Lcom/liquable/nemo/client/service/NemoRpcService;->isSendTextInSendQueue(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 160
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/liquable/nemo/client/service/ChattingService;->waitSendAcks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public sendMessage(Lcom/liquable/nemo/message/model/DomainMessage;)V
    .locals 2
    .param p1, "message"    # Lcom/liquable/nemo/message/model/DomainMessage;

    .prologue
    .line 165
    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/DomainMessage;->getChatGroupTopic()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/liquable/nemo/group/model/ChatGroup;->isRobot(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/liquable/nemo/client/service/ChattingService;->broadcastManager:Lcom/liquable/nemo/android/BroadcastManager;

    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/DomainMessage;->getMessageId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/android/BroadcastManager;->broadcastSendFromRobot(Ljava/lang/String;)V

    .line 174
    :goto_0
    return-void

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/client/service/ChattingService;->waitSendAcks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/DomainMessage;->getMessageId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    iget-object v0, p0, Lcom/liquable/nemo/client/service/ChattingService;->nemoRpcService:Lcom/liquable/nemo/client/service/NemoRpcService;

    iget-object v1, p0, Lcom/liquable/nemo/client/service/ChattingService;->messageProcessor:Lcom/liquable/nemo/message/model/MessageProcessor;

    invoke-virtual {v1, p1}, Lcom/liquable/nemo/message/model/MessageProcessor;->toSendText(Lcom/liquable/nemo/message/model/IDomainMessage;)Lcom/liquable/nemo/endpoint/frame/SendText;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/client/service/NemoRpcService;->sendFrame(Lcom/liquable/nemo/endpoint/frame/IEpFrame;)V

    goto :goto_0
.end method

.method public sendReceiveAck(Ljava/lang/String;)V
    .locals 2
    .param p1, "receiveTextMsgId"    # Ljava/lang/String;

    .prologue
    .line 178
    iget-object v0, p0, Lcom/liquable/nemo/client/service/ChattingService;->nemoRpcService:Lcom/liquable/nemo/client/service/NemoRpcService;

    new-instance v1, Lcom/liquable/nemo/endpoint/frame/ReceiveAck;

    invoke-direct {v1, p1}, Lcom/liquable/nemo/endpoint/frame/ReceiveAck;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/client/service/NemoRpcService;->sendFrame(Lcom/liquable/nemo/endpoint/frame/IEpFrame;)V

    .line 179
    return-void
.end method

.method public sendStatus(Ljava/lang/String;Lcom/liquable/nemo/status/model/IChatStatus;)V
    .locals 5
    .param p1, "topic"    # Ljava/lang/String;
    .param p2, "chatStatus"    # Lcom/liquable/nemo/status/model/IChatStatus;

    .prologue
    .line 183
    invoke-static {p1}, Lcom/liquable/nemo/group/model/ChatGroup;->isRobot(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 191
    :goto_0
    return-void

    .line 186
    :cond_0
    invoke-static {}, Lcom/liquable/nemo/status/model/ChatStatusMapper;->getInstance()Lcom/liquable/nemo/status/model/ChatStatusMapper;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/liquable/nemo/status/model/ChatStatusMapper;->encode(Lcom/liquable/nemo/status/model/IChatStatus;)Ljava/lang/String;

    move-result-object v0

    .line 188
    .local v0, "encode":Ljava/lang/String;
    iget-object v1, p0, Lcom/liquable/nemo/client/service/ChattingService;->nemoRpcService:Lcom/liquable/nemo/client/service/NemoRpcService;

    new-instance v2, Lcom/liquable/nemo/endpoint/frame/SendLiteText;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/liquable/nemo/endpoint/frame/Destination;

    invoke-direct {v4, p1}, Lcom/liquable/nemo/endpoint/frame/Destination;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3, v4, v0}, Lcom/liquable/nemo/endpoint/frame/SendLiteText;-><init>(Ljava/lang/String;Lcom/liquable/nemo/endpoint/frame/Destination;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/client/service/NemoRpcService;->sendFrame(Lcom/liquable/nemo/endpoint/frame/IEpFrame;)V

    goto :goto_0
.end method
