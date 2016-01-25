.class public Lcom/liquable/nemo/client/home/EndPointServerPicker;
.super Ljava/lang/Object;
.source "EndPointServerPicker.java"


# instance fields
.field private final handler:Landroid/os/Handler;

.field private final logger:Lcom/liquable/nemo/util/Logger;

.field private final nodeService:Lcom/liquable/nemo/client/service/NodeService;

.field private final pref:Lcom/liquable/nemo/util/Pref;

.field private final serverInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/client/ServerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final serverType:Lcom/liquable/nemo/client/ServerType;


# direct methods
.method public constructor <init>(Lcom/liquable/nemo/util/Pref;Lcom/liquable/nemo/client/service/NodeService;Lcom/liquable/nemo/client/ServerType;Landroid/os/Handler;)V
    .locals 1
    .param p1, "pref"    # Lcom/liquable/nemo/util/Pref;
    .param p2, "nodeService"    # Lcom/liquable/nemo/client/service/NodeService;
    .param p3, "serverType"    # Lcom/liquable/nemo/client/ServerType;
    .param p4, "handler"    # Landroid/os/Handler;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-static {}, Lcom/liquable/nemo/util/Logger;->getInstance()Lcom/liquable/nemo/util/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/client/home/EndPointServerPicker;->logger:Lcom/liquable/nemo/util/Logger;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/client/home/EndPointServerPicker;->serverInfos:Ljava/util/List;

    .line 35
    iput-object p1, p0, Lcom/liquable/nemo/client/home/EndPointServerPicker;->pref:Lcom/liquable/nemo/util/Pref;

    .line 36
    iput-object p2, p0, Lcom/liquable/nemo/client/home/EndPointServerPicker;->nodeService:Lcom/liquable/nemo/client/service/NodeService;

    .line 37
    iput-object p3, p0, Lcom/liquable/nemo/client/home/EndPointServerPicker;->serverType:Lcom/liquable/nemo/client/ServerType;

    .line 38
    iput-object p4, p0, Lcom/liquable/nemo/client/home/EndPointServerPicker;->handler:Landroid/os/Handler;

    .line 39
    return-void
.end method

.method static synthetic access$000(Lcom/liquable/nemo/client/home/EndPointServerPicker;)Lcom/liquable/nemo/util/Pref;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/client/home/EndPointServerPicker;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/liquable/nemo/client/home/EndPointServerPicker;->pref:Lcom/liquable/nemo/util/Pref;

    return-object v0
.end method

.method private final restoreServerInfos()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/client/ServerInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    iget-object v1, p0, Lcom/liquable/nemo/client/home/EndPointServerPicker;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v1}, Lcom/liquable/nemo/util/Pref;->listEndPointServers()Ljava/util/List;

    move-result-object v0

    .line 72
    .local v0, "cachedEndPointServers":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/client/ServerInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 75
    .end local v0    # "cachedEndPointServers":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/client/ServerInfo;>;"
    :goto_0
    return-object v0

    .restart local v0    # "cachedEndPointServers":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/client/ServerInfo;>;"
    :cond_0
    sget-object v1, Lcom/liquable/nemo/Constants;->SERVER_TYPE:Lcom/liquable/nemo/client/ServerType;

    invoke-virtual {v1}, Lcom/liquable/nemo/client/ServerType;->getEndpointServerInfos()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method private shuffleTop5(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/client/ServerInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/client/ServerInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    .local p1, "refresh":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/client/ServerInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 81
    .local v0, "set":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/client/ServerInfo;>;"
    invoke-static {v0}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 82
    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public pickServer()Lcom/liquable/nemo/client/ServerInfo;
    .locals 8

    .prologue
    .line 42
    iget-object v4, p0, Lcom/liquable/nemo/client/home/EndPointServerPicker;->serverInfos:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 43
    const/4 v1, 0x0

    .line 44
    .local v1, "refresh":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/client/ServerInfo;>;"
    iget-object v4, p0, Lcom/liquable/nemo/client/home/EndPointServerPicker;->nodeService:Lcom/liquable/nemo/client/service/NodeService;

    invoke-virtual {v4}, Lcom/liquable/nemo/client/service/NodeService;->listEndPointServers()Ljava/util/List;

    move-result-object v3

    .line 46
    .local v3, "servers":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/util/ServerRegions$Server;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .local v0, "newServerInfos":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/client/ServerInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/liquable/nemo/util/ServerRegions$Server;

    .line 48
    .local v2, "server":Lcom/liquable/nemo/util/ServerRegions$Server;
    iget-object v5, p0, Lcom/liquable/nemo/client/home/EndPointServerPicker;->serverType:Lcom/liquable/nemo/client/ServerType;

    invoke-virtual {v2}, Lcom/liquable/nemo/util/ServerRegions$Server;->getHost()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lcom/liquable/nemo/util/ServerRegions$Server;->getPort()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/liquable/nemo/client/ServerType;->createEndPointServerInfo(Ljava/lang/String;I)Lcom/liquable/nemo/client/ServerInfo;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 50
    .end local v2    # "server":Lcom/liquable/nemo/util/ServerRegions$Server;
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 54
    iget-object v4, p0, Lcom/liquable/nemo/client/home/EndPointServerPicker;->handler:Landroid/os/Handler;

    new-instance v5, Lcom/liquable/nemo/client/home/EndPointServerPicker$1;

    invoke-direct {v5, p0, v0}, Lcom/liquable/nemo/client/home/EndPointServerPicker$1;-><init>(Lcom/liquable/nemo/client/home/EndPointServerPicker;Ljava/util/List;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 60
    move-object v1, v0

    .line 64
    :goto_1
    iget-object v4, p0, Lcom/liquable/nemo/client/home/EndPointServerPicker;->serverInfos:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/liquable/nemo/client/home/EndPointServerPicker;->shuffleTop5(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 65
    iget-object v4, p0, Lcom/liquable/nemo/client/home/EndPointServerPicker;->logger:Lcom/liquable/nemo/util/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "retrieved endpoint servers:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/liquable/nemo/client/home/EndPointServerPicker;->serverInfos:Ljava/util/List;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/liquable/nemo/util/Logger;->info(Ljava/lang/String;)V

    .line 67
    .end local v0    # "newServerInfos":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/client/ServerInfo;>;"
    .end local v1    # "refresh":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/client/ServerInfo;>;"
    .end local v3    # "servers":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/util/ServerRegions$Server;>;"
    :cond_1
    iget-object v4, p0, Lcom/liquable/nemo/client/home/EndPointServerPicker;->serverInfos:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/liquable/nemo/client/ServerInfo;

    return-object v4

    .line 62
    .restart local v0    # "newServerInfos":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/client/ServerInfo;>;"
    .restart local v1    # "refresh":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/client/ServerInfo;>;"
    .restart local v3    # "servers":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/util/ServerRegions$Server;>;"
    :cond_2
    invoke-direct {p0}, Lcom/liquable/nemo/client/home/EndPointServerPicker;->restoreServerInfos()Ljava/util/List;

    move-result-object v1

    goto :goto_1
.end method
