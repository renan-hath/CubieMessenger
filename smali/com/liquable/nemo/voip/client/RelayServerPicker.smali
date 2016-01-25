.class public final enum Lcom/liquable/nemo/voip/client/RelayServerPicker;
.super Ljava/lang/Enum;
.source "RelayServerPicker.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/liquable/nemo/voip/client/RelayServerPicker;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/liquable/nemo/voip/client/RelayServerPicker;

.field public static final enum INSTANCE:Lcom/liquable/nemo/voip/client/RelayServerPicker;

.field private static final logger:Lcom/liquable/nemo/util/Logger;


# instance fields
.field private final regionsPool:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/liquable/nemo/util/ServerRegions;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 17
    new-instance v0, Lcom/liquable/nemo/voip/client/RelayServerPicker;

    const-string/jumbo v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/voip/client/RelayServerPicker;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/voip/client/RelayServerPicker;->INSTANCE:Lcom/liquable/nemo/voip/client/RelayServerPicker;

    .line 16
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/liquable/nemo/voip/client/RelayServerPicker;

    sget-object v1, Lcom/liquable/nemo/voip/client/RelayServerPicker;->INSTANCE:Lcom/liquable/nemo/voip/client/RelayServerPicker;

    aput-object v1, v0, v2

    sput-object v0, Lcom/liquable/nemo/voip/client/RelayServerPicker;->$VALUES:[Lcom/liquable/nemo/voip/client/RelayServerPicker;

    .line 19
    const-class v0, Lcom/liquable/nemo/voip/client/RelayServerPicker;

    invoke-static {v0}, Lcom/liquable/nemo/util/Logger;->getInstance(Ljava/lang/Class;)Lcom/liquable/nemo/util/Logger;

    move-result-object v0

    sput-object v0, Lcom/liquable/nemo/voip/client/RelayServerPicker;->logger:Lcom/liquable/nemo/util/Logger;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 21
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/liquable/nemo/voip/client/RelayServerPicker;->regionsPool:Ljava/util/concurrent/BlockingQueue;

    return-void
.end method

.method private randomPickTwoPerRegion(Lcom/liquable/nemo/util/ServerRegions;)Ljava/util/List;
    .locals 7
    .param p1, "serverRegions"    # Lcom/liquable/nemo/util/ServerRegions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/liquable/nemo/util/ServerRegions;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/util/ServerRegions$Server;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 64
    .local v1, "picked":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/util/ServerRegions$Server;>;"
    invoke-virtual {p1}, Lcom/liquable/nemo/util/ServerRegions;->regionEntries()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 65
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/liquable/nemo/util/ServerRegions$Server;>;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 66
    .local v2, "shuffle":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/liquable/nemo/util/ServerRegions$Server;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 69
    invoke-static {v2}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 70
    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x2

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {v2, v3, v5}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 72
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/liquable/nemo/util/ServerRegions$Server;>;>;"
    .end local v2    # "shuffle":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/liquable/nemo/util/ServerRegions$Server;>;"
    :cond_1
    return-object v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/liquable/nemo/voip/client/RelayServerPicker;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 16
    const-class v0, Lcom/liquable/nemo/voip/client/RelayServerPicker;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/voip/client/RelayServerPicker;

    return-object v0
.end method

.method public static values()[Lcom/liquable/nemo/voip/client/RelayServerPicker;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/liquable/nemo/voip/client/RelayServerPicker;->$VALUES:[Lcom/liquable/nemo/voip/client/RelayServerPicker;

    invoke-virtual {v0}, [Lcom/liquable/nemo/voip/client/RelayServerPicker;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/liquable/nemo/voip/client/RelayServerPicker;

    return-object v0
.end method


# virtual methods
.method public pickServersSync(Lcom/liquable/nemo/client/service/NodeService;)Ljava/util/List;
    .locals 4
    .param p1, "nodeService"    # Lcom/liquable/nemo/client/service/NodeService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/liquable/nemo/client/service/NodeService;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/util/ServerRegions$Server;",
            ">;"
        }
    .end annotation

    .prologue
    .line 28
    iget-object v2, p0, Lcom/liquable/nemo/voip/client/RelayServerPicker;->regionsPool:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/util/ServerRegions;

    .line 29
    .local v0, "cached":Lcom/liquable/nemo/util/ServerRegions;
    if-eqz v0, :cond_0

    .line 30
    invoke-direct {p0, v0}, Lcom/liquable/nemo/voip/client/RelayServerPicker;->randomPickTwoPerRegion(Lcom/liquable/nemo/util/ServerRegions;)Ljava/util/List;

    move-result-object v2

    .line 42
    :goto_0
    return-object v2

    .line 33
    :cond_0
    invoke-virtual {p1}, Lcom/liquable/nemo/client/service/NodeService;->findRelayServerRegions()Lcom/liquable/nemo/util/ServerRegions;

    move-result-object v1

    .line 34
    .local v1, "serverRegions":Lcom/liquable/nemo/util/ServerRegions;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/liquable/nemo/util/ServerRegions;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 35
    :cond_1
    sget-object v2, Lcom/liquable/nemo/voip/client/RelayServerPicker;->logger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v3, "no relay server regions in home server"

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/util/Logger;->warn(Ljava/lang/String;)V

    .line 36
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    goto :goto_0

    .line 39
    :cond_2
    iget-object v2, p0, Lcom/liquable/nemo/voip/client/RelayServerPicker;->regionsPool:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2, v1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 42
    invoke-direct {p0, v1}, Lcom/liquable/nemo/voip/client/RelayServerPicker;->randomPickTwoPerRegion(Lcom/liquable/nemo/util/ServerRegions;)Ljava/util/List;

    move-result-object v2

    goto :goto_0
.end method

.method public prefetchSync(Lcom/liquable/nemo/client/service/NodeService;)V
    .locals 3
    .param p1, "nodeService"    # Lcom/liquable/nemo/client/service/NodeService;

    .prologue
    .line 46
    iget-object v1, p0, Lcom/liquable/nemo/voip/client/RelayServerPicker;->regionsPool:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 60
    :goto_0
    return-void

    .line 50
    :cond_0
    invoke-virtual {p1}, Lcom/liquable/nemo/client/service/NodeService;->findRelayServerRegions()Lcom/liquable/nemo/util/ServerRegions;

    move-result-object v0

    .line 51
    .local v0, "serverRegions":Lcom/liquable/nemo/util/ServerRegions;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/liquable/nemo/util/ServerRegions;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 52
    :cond_1
    sget-object v1, Lcom/liquable/nemo/voip/client/RelayServerPicker;->logger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v2, "no relay server regions in home server, abort prefetch"

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/util/Logger;->warn(Ljava/lang/String;)V

    goto :goto_0

    .line 56
    :cond_2
    iget-object v1, p0, Lcom/liquable/nemo/voip/client/RelayServerPicker;->regionsPool:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 59
    sget-object v1, Lcom/liquable/nemo/voip/client/RelayServerPicker;->logger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v2, "prefetch relay server regions success"

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/liquable/nemo/voip/client/RelayServerPicker;->regionsPool:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 77
    return-void
.end method
