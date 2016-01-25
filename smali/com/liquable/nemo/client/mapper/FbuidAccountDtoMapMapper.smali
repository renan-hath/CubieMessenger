.class public final enum Lcom/liquable/nemo/client/mapper/FbuidAccountDtoMapMapper;
.super Ljava/lang/Enum;
.source "FbuidAccountDtoMapMapper.java"

# interfaces
.implements Lcom/liquable/nemo/client/mapper/ResultMapper;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/liquable/nemo/client/mapper/FbuidAccountDtoMapMapper;",
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
.field private static final synthetic $VALUES:[Lcom/liquable/nemo/client/mapper/FbuidAccountDtoMapMapper;

.field public static final enum INSTANCE:Lcom/liquable/nemo/client/mapper/FbuidAccountDtoMapMapper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 10
    new-instance v0, Lcom/liquable/nemo/client/mapper/FbuidAccountDtoMapMapper;

    const-string/jumbo v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/client/mapper/FbuidAccountDtoMapMapper;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/client/mapper/FbuidAccountDtoMapMapper;->INSTANCE:Lcom/liquable/nemo/client/mapper/FbuidAccountDtoMapMapper;

    .line 9
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/liquable/nemo/client/mapper/FbuidAccountDtoMapMapper;

    sget-object v1, Lcom/liquable/nemo/client/mapper/FbuidAccountDtoMapMapper;->INSTANCE:Lcom/liquable/nemo/client/mapper/FbuidAccountDtoMapMapper;

    aput-object v1, v0, v2

    sput-object v0, Lcom/liquable/nemo/client/mapper/FbuidAccountDtoMapMapper;->$VALUES:[Lcom/liquable/nemo/client/mapper/FbuidAccountDtoMapMapper;

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
    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/liquable/nemo/client/mapper/FbuidAccountDtoMapMapper;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 9
    const-class v0, Lcom/liquable/nemo/client/mapper/FbuidAccountDtoMapMapper;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/client/mapper/FbuidAccountDtoMapMapper;

    return-object v0
.end method

.method public static values()[Lcom/liquable/nemo/client/mapper/FbuidAccountDtoMapMapper;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/liquable/nemo/client/mapper/FbuidAccountDtoMapMapper;->$VALUES:[Lcom/liquable/nemo/client/mapper/FbuidAccountDtoMapMapper;

    invoke-virtual {v0}, [Lcom/liquable/nemo/client/mapper/FbuidAccountDtoMapMapper;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/liquable/nemo/client/mapper/FbuidAccountDtoMapMapper;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic map(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 9
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/client/mapper/FbuidAccountDtoMapMapper;->map(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public map(Ljava/lang/Object;)Ljava/util/Map;
    .locals 7
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
    .line 14
    if-nez p1, :cond_1

    .line 15
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v4

    .line 28
    :cond_0
    return-object v4

    :cond_1
    move-object v3, p1

    .line 18
    check-cast v3, Ljava/util/Map;

    .line 19
    .local v3, "list":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 21
    .local v4, "results":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/liquable/nemo/model/account/AccountDto;>;"
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 23
    .local v2, "fbuid":Ljava/lang/String;
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 25
    .local v1, "accountMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-object v6, Lcom/liquable/nemo/client/mapper/AccountDtoMapper;->INSTANCE:Lcom/liquable/nemo/client/mapper/AccountDtoMapper;

    invoke-virtual {v6, v1}, Lcom/liquable/nemo/client/mapper/AccountDtoMapper;->map(Ljava/lang/Object;)Lcom/liquable/nemo/model/account/AccountDto;

    move-result-object v0

    .line 26
    .local v0, "accountDto":Lcom/liquable/nemo/model/account/AccountDto;
    invoke-interface {v4, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
