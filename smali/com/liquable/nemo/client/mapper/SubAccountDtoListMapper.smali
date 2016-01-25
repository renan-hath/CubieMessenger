.class public final enum Lcom/liquable/nemo/client/mapper/SubAccountDtoListMapper;
.super Ljava/lang/Enum;
.source "SubAccountDtoListMapper.java"

# interfaces
.implements Lcom/liquable/nemo/client/mapper/ResultMapper;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/liquable/nemo/client/mapper/SubAccountDtoListMapper;",
        ">;",
        "Lcom/liquable/nemo/client/mapper/ResultMapper",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/liquable/nemo/model/account/SubAccountDto;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/liquable/nemo/client/mapper/SubAccountDtoListMapper;

.field public static final enum INSTANCE:Lcom/liquable/nemo/client/mapper/SubAccountDtoListMapper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 11
    new-instance v0, Lcom/liquable/nemo/client/mapper/SubAccountDtoListMapper;

    const-string/jumbo v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/client/mapper/SubAccountDtoListMapper;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/client/mapper/SubAccountDtoListMapper;->INSTANCE:Lcom/liquable/nemo/client/mapper/SubAccountDtoListMapper;

    .line 10
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/liquable/nemo/client/mapper/SubAccountDtoListMapper;

    sget-object v1, Lcom/liquable/nemo/client/mapper/SubAccountDtoListMapper;->INSTANCE:Lcom/liquable/nemo/client/mapper/SubAccountDtoListMapper;

    aput-object v1, v0, v2

    sput-object v0, Lcom/liquable/nemo/client/mapper/SubAccountDtoListMapper;->$VALUES:[Lcom/liquable/nemo/client/mapper/SubAccountDtoListMapper;

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

.method public static valueOf(Ljava/lang/String;)Lcom/liquable/nemo/client/mapper/SubAccountDtoListMapper;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 10
    const-class v0, Lcom/liquable/nemo/client/mapper/SubAccountDtoListMapper;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/client/mapper/SubAccountDtoListMapper;

    return-object v0
.end method

.method public static values()[Lcom/liquable/nemo/client/mapper/SubAccountDtoListMapper;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/liquable/nemo/client/mapper/SubAccountDtoListMapper;->$VALUES:[Lcom/liquable/nemo/client/mapper/SubAccountDtoListMapper;

    invoke-virtual {v0}, [Lcom/liquable/nemo/client/mapper/SubAccountDtoListMapper;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/liquable/nemo/client/mapper/SubAccountDtoListMapper;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic map(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 10
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/client/mapper/SubAccountDtoListMapper;->map(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public map(Ljava/lang/Object;)Ljava/util/List;
    .locals 7
    .param p1, "result"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/model/account/SubAccountDto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 15
    if-nez p1, :cond_1

    .line 16
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
    .local v2, "resultList":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/model/account/SubAccountDto;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 23
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v6, Lcom/liquable/nemo/model/account/SubAccountDto;

    const-string/jumbo v3, "parentUid"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string/jumbo v4, "subId"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v6, v3, v4}, Lcom/liquable/nemo/model/account/SubAccountDto;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
