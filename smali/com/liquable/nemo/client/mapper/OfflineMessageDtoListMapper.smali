.class public final enum Lcom/liquable/nemo/client/mapper/OfflineMessageDtoListMapper;
.super Ljava/lang/Enum;
.source "OfflineMessageDtoListMapper.java"

# interfaces
.implements Lcom/liquable/nemo/client/mapper/ResultMapper;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/liquable/nemo/client/mapper/OfflineMessageDtoListMapper;",
        ">;",
        "Lcom/liquable/nemo/client/mapper/ResultMapper",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/liquable/nemo/model/message/OfflineMessageDto;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/liquable/nemo/client/mapper/OfflineMessageDtoListMapper;

.field public static final enum INSTANCE:Lcom/liquable/nemo/client/mapper/OfflineMessageDtoListMapper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 11
    new-instance v0, Lcom/liquable/nemo/client/mapper/OfflineMessageDtoListMapper;

    const-string/jumbo v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/client/mapper/OfflineMessageDtoListMapper;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/client/mapper/OfflineMessageDtoListMapper;->INSTANCE:Lcom/liquable/nemo/client/mapper/OfflineMessageDtoListMapper;

    .line 10
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/liquable/nemo/client/mapper/OfflineMessageDtoListMapper;

    sget-object v1, Lcom/liquable/nemo/client/mapper/OfflineMessageDtoListMapper;->INSTANCE:Lcom/liquable/nemo/client/mapper/OfflineMessageDtoListMapper;

    aput-object v1, v0, v2

    sput-object v0, Lcom/liquable/nemo/client/mapper/OfflineMessageDtoListMapper;->$VALUES:[Lcom/liquable/nemo/client/mapper/OfflineMessageDtoListMapper;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/liquable/nemo/client/mapper/OfflineMessageDtoListMapper;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 10
    const-class v0, Lcom/liquable/nemo/client/mapper/OfflineMessageDtoListMapper;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/client/mapper/OfflineMessageDtoListMapper;

    return-object v0
.end method

.method public static values()[Lcom/liquable/nemo/client/mapper/OfflineMessageDtoListMapper;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/liquable/nemo/client/mapper/OfflineMessageDtoListMapper;->$VALUES:[Lcom/liquable/nemo/client/mapper/OfflineMessageDtoListMapper;

    invoke-virtual {v0}, [Lcom/liquable/nemo/client/mapper/OfflineMessageDtoListMapper;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/liquable/nemo/client/mapper/OfflineMessageDtoListMapper;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic map(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 10
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/client/mapper/OfflineMessageDtoListMapper;->map(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public map(Ljava/lang/Object;)Ljava/util/List;
    .locals 14
    .param p1, "result"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/model/message/OfflineMessageDto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 15
    if-nez p1, :cond_1

    .line 16
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v12

    .line 32
    :cond_0
    return-object v12

    :cond_1
    move-object v10, p1

    .line 19
    check-cast v10, Ljava/util/List;

    .line 20
    .local v10, "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .local v12, "resultList":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/model/message/OfflineMessageDto;>;"
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map;

    .line 23
    .local v11, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Lcom/liquable/nemo/model/message/OfflineMessageDto;

    const-string/jumbo v1, "messageId"

    invoke-interface {v11, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v2, "senderUid"

    .line 24
    invoke-interface {v11, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string/jumbo v3, "receiverUid"

    .line 25
    invoke-interface {v11, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string/jumbo v4, "topic"

    .line 26
    invoke-interface {v11, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string/jumbo v5, "data"

    .line 27
    invoke-interface {v11, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string/jumbo v6, "requirePush"

    .line 28
    invoke-interface {v11, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    const-string/jumbo v7, "sendTime"

    .line 29
    invoke-interface {v11, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->longValue()J

    move-result-wide v7

    const-string/jumbo v9, "sequenceId"

    .line 30
    invoke-interface {v11, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-direct/range {v0 .. v9}, Lcom/liquable/nemo/model/message/OfflineMessageDto;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJLjava/lang/String;)V

    .line 23
    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
