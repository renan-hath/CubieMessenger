.class public final enum Lcom/liquable/nemo/client/mapper/ChatGroupDtoListMapper;
.super Ljava/lang/Enum;
.source "ChatGroupDtoListMapper.java"

# interfaces
.implements Lcom/liquable/nemo/client/mapper/ResultMapper;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/liquable/nemo/client/mapper/ChatGroupDtoListMapper;",
        ">;",
        "Lcom/liquable/nemo/client/mapper/ResultMapper",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/liquable/nemo/model/group/ChatGroupDto;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/liquable/nemo/client/mapper/ChatGroupDtoListMapper;

.field public static final enum INSTANCE:Lcom/liquable/nemo/client/mapper/ChatGroupDtoListMapper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 11
    new-instance v0, Lcom/liquable/nemo/client/mapper/ChatGroupDtoListMapper;

    const-string/jumbo v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/client/mapper/ChatGroupDtoListMapper;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/client/mapper/ChatGroupDtoListMapper;->INSTANCE:Lcom/liquable/nemo/client/mapper/ChatGroupDtoListMapper;

    .line 10
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/liquable/nemo/client/mapper/ChatGroupDtoListMapper;

    sget-object v1, Lcom/liquable/nemo/client/mapper/ChatGroupDtoListMapper;->INSTANCE:Lcom/liquable/nemo/client/mapper/ChatGroupDtoListMapper;

    aput-object v1, v0, v2

    sput-object v0, Lcom/liquable/nemo/client/mapper/ChatGroupDtoListMapper;->$VALUES:[Lcom/liquable/nemo/client/mapper/ChatGroupDtoListMapper;

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

.method public static valueOf(Ljava/lang/String;)Lcom/liquable/nemo/client/mapper/ChatGroupDtoListMapper;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 10
    const-class v0, Lcom/liquable/nemo/client/mapper/ChatGroupDtoListMapper;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/client/mapper/ChatGroupDtoListMapper;

    return-object v0
.end method

.method public static values()[Lcom/liquable/nemo/client/mapper/ChatGroupDtoListMapper;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/liquable/nemo/client/mapper/ChatGroupDtoListMapper;->$VALUES:[Lcom/liquable/nemo/client/mapper/ChatGroupDtoListMapper;

    invoke-virtual {v0}, [Lcom/liquable/nemo/client/mapper/ChatGroupDtoListMapper;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/liquable/nemo/client/mapper/ChatGroupDtoListMapper;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic map(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 10
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/client/mapper/ChatGroupDtoListMapper;->map(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public map(Ljava/lang/Object;)Ljava/util/List;
    .locals 5
    .param p1, "result"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/model/group/ChatGroupDto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 16
    if-nez p1, :cond_1

    .line 17
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 25
    :cond_0
    return-object v2

    :cond_1
    move-object v0, p1

    .line 19
    check-cast v0, Ljava/util/List;

    .line 20
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .local v2, "resultList":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/model/group/ChatGroupDto;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 23
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-object v4, Lcom/liquable/nemo/client/mapper/ChatGroupDtoMapper;->INSTANCE:Lcom/liquable/nemo/client/mapper/ChatGroupDtoMapper;

    invoke-virtual {v4, v1}, Lcom/liquable/nemo/client/mapper/ChatGroupDtoMapper;->map(Ljava/lang/Object;)Lcom/liquable/nemo/model/group/ChatGroupDto;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
