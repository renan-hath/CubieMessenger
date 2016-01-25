.class public final enum Lcom/liquable/nemo/client/mapper/AccountDtoMapper;
.super Ljava/lang/Enum;
.source "AccountDtoMapper.java"

# interfaces
.implements Lcom/liquable/nemo/client/mapper/ResultMapper;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/liquable/nemo/client/mapper/AccountDtoMapper;",
        ">;",
        "Lcom/liquable/nemo/client/mapper/ResultMapper",
        "<",
        "Lcom/liquable/nemo/model/account/AccountDto;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/liquable/nemo/client/mapper/AccountDtoMapper;

.field public static final enum INSTANCE:Lcom/liquable/nemo/client/mapper/AccountDtoMapper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 8
    new-instance v0, Lcom/liquable/nemo/client/mapper/AccountDtoMapper;

    const-string/jumbo v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/client/mapper/AccountDtoMapper;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/client/mapper/AccountDtoMapper;->INSTANCE:Lcom/liquable/nemo/client/mapper/AccountDtoMapper;

    .line 7
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/liquable/nemo/client/mapper/AccountDtoMapper;

    sget-object v1, Lcom/liquable/nemo/client/mapper/AccountDtoMapper;->INSTANCE:Lcom/liquable/nemo/client/mapper/AccountDtoMapper;

    aput-object v1, v0, v2

    sput-object v0, Lcom/liquable/nemo/client/mapper/AccountDtoMapper;->$VALUES:[Lcom/liquable/nemo/client/mapper/AccountDtoMapper;

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
    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/liquable/nemo/client/mapper/AccountDtoMapper;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 7
    const-class v0, Lcom/liquable/nemo/client/mapper/AccountDtoMapper;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/client/mapper/AccountDtoMapper;

    return-object v0
.end method

.method public static values()[Lcom/liquable/nemo/client/mapper/AccountDtoMapper;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/liquable/nemo/client/mapper/AccountDtoMapper;->$VALUES:[Lcom/liquable/nemo/client/mapper/AccountDtoMapper;

    invoke-virtual {v0}, [Lcom/liquable/nemo/client/mapper/AccountDtoMapper;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/liquable/nemo/client/mapper/AccountDtoMapper;

    return-object v0
.end method


# virtual methods
.method public map(Ljava/lang/Object;)Lcom/liquable/nemo/model/account/AccountDto;
    .locals 14
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    const/4 v9, 0x0

    .line 13
    if-nez p1, :cond_0

    .line 14
    const/4 v0, 0x0

    .line 29
    :goto_0
    return-object v0

    :cond_0
    move-object v13, p1

    .line 17
    check-cast v13, Ljava/util/Map;

    .line 19
    .local v13, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v0, "iconExists"

    invoke-interface {v13, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    .line 20
    .local v10, "iconExists":Ljava/lang/Boolean;
    const-string/jumbo v0, "isBroadcaster"

    invoke-interface {v13, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    .line 21
    .local v11, "isBroadcaster":Ljava/lang/Boolean;
    const-string/jumbo v0, "lastUpdateTime"

    invoke-interface {v13, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Number;

    .line 22
    .local v12, "lastUpdateTime":Ljava/lang/Number;
    new-instance v0, Lcom/liquable/nemo/model/account/AccountDto;

    const-string/jumbo v1, "uid"

    invoke-interface {v13, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v2, "phone"

    .line 23
    invoke-interface {v13, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string/jumbo v3, "email"

    .line 24
    invoke-interface {v13, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string/jumbo v4, "nickname"

    .line 25
    invoke-interface {v13, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string/jumbo v5, "username"

    .line 26
    invoke-interface {v13, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-nez v10, :cond_1

    move v6, v9

    .line 27
    :goto_1
    if-nez v12, :cond_2

    const-wide/16 v7, 0x0

    .line 28
    :goto_2
    if-nez v11, :cond_3

    .line 29
    :goto_3
    invoke-direct/range {v0 .. v9}, Lcom/liquable/nemo/model/account/AccountDto;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJZ)V

    goto :goto_0

    .line 27
    :cond_1
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    goto :goto_1

    .line 28
    :cond_2
    invoke-virtual {v12}, Ljava/lang/Number;->longValue()J

    move-result-wide v7

    goto :goto_2

    .line 29
    :cond_3
    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    goto :goto_3
.end method

.method public bridge synthetic map(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 7
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/client/mapper/AccountDtoMapper;->map(Ljava/lang/Object;)Lcom/liquable/nemo/model/account/AccountDto;

    move-result-object v0

    return-object v0
.end method
