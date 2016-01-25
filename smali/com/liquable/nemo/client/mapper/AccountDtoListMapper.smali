.class public final enum Lcom/liquable/nemo/client/mapper/AccountDtoListMapper;
.super Ljava/lang/Enum;
.source "AccountDtoListMapper.java"

# interfaces
.implements Lcom/liquable/nemo/client/mapper/ResultMapper;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/liquable/nemo/client/mapper/AccountDtoListMapper;",
        ">;",
        "Lcom/liquable/nemo/client/mapper/ResultMapper",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/liquable/nemo/model/account/AccountDto;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/liquable/nemo/client/mapper/AccountDtoListMapper;

.field public static final enum INSTANCE:Lcom/liquable/nemo/client/mapper/AccountDtoListMapper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 11
    new-instance v0, Lcom/liquable/nemo/client/mapper/AccountDtoListMapper;

    const-string/jumbo v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/client/mapper/AccountDtoListMapper;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/client/mapper/AccountDtoListMapper;->INSTANCE:Lcom/liquable/nemo/client/mapper/AccountDtoListMapper;

    .line 10
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/liquable/nemo/client/mapper/AccountDtoListMapper;

    sget-object v1, Lcom/liquable/nemo/client/mapper/AccountDtoListMapper;->INSTANCE:Lcom/liquable/nemo/client/mapper/AccountDtoListMapper;

    aput-object v1, v0, v2

    sput-object v0, Lcom/liquable/nemo/client/mapper/AccountDtoListMapper;->$VALUES:[Lcom/liquable/nemo/client/mapper/AccountDtoListMapper;

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

.method public static valueOf(Ljava/lang/String;)Lcom/liquable/nemo/client/mapper/AccountDtoListMapper;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 10
    const-class v0, Lcom/liquable/nemo/client/mapper/AccountDtoListMapper;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/client/mapper/AccountDtoListMapper;

    return-object v0
.end method

.method public static values()[Lcom/liquable/nemo/client/mapper/AccountDtoListMapper;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/liquable/nemo/client/mapper/AccountDtoListMapper;->$VALUES:[Lcom/liquable/nemo/client/mapper/AccountDtoListMapper;

    invoke-virtual {v0}, [Lcom/liquable/nemo/client/mapper/AccountDtoListMapper;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/liquable/nemo/client/mapper/AccountDtoListMapper;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic map(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 10
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/client/mapper/AccountDtoListMapper;->map(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public map(Ljava/lang/Object;)Ljava/util/List;
    .locals 17
    .param p1, "result"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/model/account/AccountDto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 15
    if-nez p1, :cond_1

    .line 16
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v15

    .line 36
    :cond_0
    return-object v15

    :cond_1
    move-object/from16 v13, p1

    .line 19
    check-cast v13, Ljava/util/List;

    .line 20
    .local v13, "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .local v15, "resultList":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/model/account/AccountDto;>;"
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map;

    .line 23
    .local v14, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v0, "iconExists"

    invoke-interface {v14, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    .line 24
    .local v10, "iconExists":Ljava/lang/Boolean;
    const-string/jumbo v0, "isBroadcaster"

    invoke-interface {v14, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    .line 25
    .local v11, "isBroadcaster":Ljava/lang/Boolean;
    const-string/jumbo v0, "lastUpdateTime"

    invoke-interface {v14, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Number;

    .line 26
    .local v12, "lastUpdateTime":Ljava/lang/Number;
    new-instance v0, Lcom/liquable/nemo/model/account/AccountDto;

    const-string/jumbo v1, "uid"

    invoke-interface {v14, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v2, "phone"

    .line 27
    invoke-interface {v14, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string/jumbo v3, "email"

    .line 28
    invoke-interface {v14, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string/jumbo v4, "nickname"

    .line 29
    invoke-interface {v14, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string/jumbo v5, "username"

    .line 30
    invoke-interface {v14, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-nez v10, :cond_2

    const/4 v6, 0x0

    .line 31
    :goto_1
    if-nez v12, :cond_3

    const-wide/16 v7, 0x0

    .line 32
    :goto_2
    if-nez v11, :cond_4

    const/4 v9, 0x0

    .line 33
    :goto_3
    invoke-direct/range {v0 .. v9}, Lcom/liquable/nemo/model/account/AccountDto;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJZ)V

    .line 26
    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 31
    :cond_2
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    goto :goto_1

    .line 32
    :cond_3
    invoke-virtual {v12}, Ljava/lang/Number;->longValue()J

    move-result-wide v7

    goto :goto_2

    .line 33
    :cond_4
    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    goto :goto_3
.end method
