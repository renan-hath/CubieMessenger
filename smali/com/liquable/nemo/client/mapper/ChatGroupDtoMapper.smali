.class public final enum Lcom/liquable/nemo/client/mapper/ChatGroupDtoMapper;
.super Ljava/lang/Enum;
.source "ChatGroupDtoMapper.java"

# interfaces
.implements Lcom/liquable/nemo/client/mapper/ResultMapper;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/liquable/nemo/client/mapper/ChatGroupDtoMapper;",
        ">;",
        "Lcom/liquable/nemo/client/mapper/ResultMapper",
        "<",
        "Lcom/liquable/nemo/model/group/ChatGroupDto;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/liquable/nemo/client/mapper/ChatGroupDtoMapper;

.field public static final enum INSTANCE:Lcom/liquable/nemo/client/mapper/ChatGroupDtoMapper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 9
    new-instance v0, Lcom/liquable/nemo/client/mapper/ChatGroupDtoMapper;

    const-string/jumbo v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/client/mapper/ChatGroupDtoMapper;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/client/mapper/ChatGroupDtoMapper;->INSTANCE:Lcom/liquable/nemo/client/mapper/ChatGroupDtoMapper;

    .line 8
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/liquable/nemo/client/mapper/ChatGroupDtoMapper;

    sget-object v1, Lcom/liquable/nemo/client/mapper/ChatGroupDtoMapper;->INSTANCE:Lcom/liquable/nemo/client/mapper/ChatGroupDtoMapper;

    aput-object v1, v0, v2

    sput-object v0, Lcom/liquable/nemo/client/mapper/ChatGroupDtoMapper;->$VALUES:[Lcom/liquable/nemo/client/mapper/ChatGroupDtoMapper;

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
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/liquable/nemo/client/mapper/ChatGroupDtoMapper;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 8
    const-class v0, Lcom/liquable/nemo/client/mapper/ChatGroupDtoMapper;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/client/mapper/ChatGroupDtoMapper;

    return-object v0
.end method

.method public static values()[Lcom/liquable/nemo/client/mapper/ChatGroupDtoMapper;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/liquable/nemo/client/mapper/ChatGroupDtoMapper;->$VALUES:[Lcom/liquable/nemo/client/mapper/ChatGroupDtoMapper;

    invoke-virtual {v0}, [Lcom/liquable/nemo/client/mapper/ChatGroupDtoMapper;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/liquable/nemo/client/mapper/ChatGroupDtoMapper;

    return-object v0
.end method


# virtual methods
.method public map(Ljava/lang/Object;)Lcom/liquable/nemo/model/group/ChatGroupDto;
    .locals 11
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 13
    if-nez p1, :cond_0

    .line 14
    const/4 v0, 0x0

    .line 28
    :goto_0
    return-object v0

    :cond_0
    move-object v9, p1

    .line 17
    check-cast v9, Ljava/util/Map;

    .line 19
    .local v9, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v0, "memberUids"

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 20
    .local v5, "members":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v0, "createTime"

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    .line 22
    .local v10, "rawCreateTime":Ljava/lang/Long;
    new-instance v0, Lcom/liquable/nemo/model/group/ChatGroupDto;

    const-string/jumbo v1, "topic"

    invoke-interface {v9, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v2, "name"

    .line 23
    invoke-interface {v9, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string/jumbo v3, "creatorUid"

    .line 24
    invoke-interface {v9, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string/jumbo v4, "ownerUid"

    .line 25
    invoke-interface {v9, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string/jumbo v6, "multi"

    .line 27
    invoke-interface {v9, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v10, :cond_1

    const-wide/16 v7, 0x0

    .line 28
    :goto_1
    invoke-direct/range {v0 .. v8}, Lcom/liquable/nemo/model/group/ChatGroupDto;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZJ)V

    goto :goto_0

    :cond_1
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    goto :goto_1
.end method

.method public bridge synthetic map(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 8
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/client/mapper/ChatGroupDtoMapper;->map(Ljava/lang/Object;)Lcom/liquable/nemo/model/group/ChatGroupDto;

    move-result-object v0

    return-object v0
.end method
