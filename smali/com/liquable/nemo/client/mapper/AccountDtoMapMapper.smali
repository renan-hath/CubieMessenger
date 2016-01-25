.class public final enum Lcom/liquable/nemo/client/mapper/AccountDtoMapMapper;
.super Ljava/lang/Enum;
.source "AccountDtoMapMapper.java"

# interfaces
.implements Lcom/liquable/nemo/client/mapper/ResultMapper;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/liquable/nemo/client/mapper/AccountDtoMapMapper;",
        ">;",
        "Lcom/liquable/nemo/client/mapper/ResultMapper",
        "<",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Lcom/liquable/nemo/model/account/AccountDto;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/liquable/nemo/client/mapper/AccountDtoMapMapper;

.field public static final enum INSTANCE:Lcom/liquable/nemo/client/mapper/AccountDtoMapMapper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 12
    new-instance v0, Lcom/liquable/nemo/client/mapper/AccountDtoMapMapper;

    const-string/jumbo v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/client/mapper/AccountDtoMapMapper;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/client/mapper/AccountDtoMapMapper;->INSTANCE:Lcom/liquable/nemo/client/mapper/AccountDtoMapMapper;

    .line 11
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/liquable/nemo/client/mapper/AccountDtoMapMapper;

    sget-object v1, Lcom/liquable/nemo/client/mapper/AccountDtoMapMapper;->INSTANCE:Lcom/liquable/nemo/client/mapper/AccountDtoMapMapper;

    aput-object v1, v0, v2

    sput-object v0, Lcom/liquable/nemo/client/mapper/AccountDtoMapMapper;->$VALUES:[Lcom/liquable/nemo/client/mapper/AccountDtoMapMapper;

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
    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/liquable/nemo/client/mapper/AccountDtoMapMapper;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 11
    const-class v0, Lcom/liquable/nemo/client/mapper/AccountDtoMapMapper;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/client/mapper/AccountDtoMapMapper;

    return-object v0
.end method

.method public static values()[Lcom/liquable/nemo/client/mapper/AccountDtoMapMapper;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/liquable/nemo/client/mapper/AccountDtoMapMapper;->$VALUES:[Lcom/liquable/nemo/client/mapper/AccountDtoMapMapper;

    invoke-virtual {v0}, [Lcom/liquable/nemo/client/mapper/AccountDtoMapMapper;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/liquable/nemo/client/mapper/AccountDtoMapMapper;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic map(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/client/mapper/AccountDtoMapMapper;->map(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public map(Ljava/lang/Object;)Ljava/util/Map;
    .locals 8
    .param p1, "result"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/liquable/nemo/model/account/AccountDto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 16
    if-nez p1, :cond_1

    .line 17
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v4

    .line 29
    :cond_0
    return-object v4

    :cond_1
    move-object v3, p1

    .line 20
    check-cast v3, Ljava/util/Map;

    .line 21
    .local v3, "list":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 23
    .local v4, "results":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/liquable/nemo/model/account/AccountDto;>;"
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 24
    .local v2, "entrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 25
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    .line 26
    .local v5, "value":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-object v7, Lcom/liquable/nemo/client/mapper/AccountDtoMapper;->INSTANCE:Lcom/liquable/nemo/client/mapper/AccountDtoMapper;

    invoke-virtual {v7, v5}, Lcom/liquable/nemo/client/mapper/AccountDtoMapper;->map(Ljava/lang/Object;)Lcom/liquable/nemo/model/account/AccountDto;

    move-result-object v0

    .line 27
    .local v0, "accountDto":Lcom/liquable/nemo/model/account/AccountDto;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v4, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
