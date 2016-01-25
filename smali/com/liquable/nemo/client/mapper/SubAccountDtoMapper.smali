.class public final enum Lcom/liquable/nemo/client/mapper/SubAccountDtoMapper;
.super Ljava/lang/Enum;
.source "SubAccountDtoMapper.java"

# interfaces
.implements Lcom/liquable/nemo/client/mapper/ResultMapper;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/liquable/nemo/client/mapper/SubAccountDtoMapper;",
        ">;",
        "Lcom/liquable/nemo/client/mapper/ResultMapper",
        "<",
        "Lcom/liquable/nemo/model/account/SubAccountDto;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/liquable/nemo/client/mapper/SubAccountDtoMapper;

.field public static final enum INSTANCE:Lcom/liquable/nemo/client/mapper/SubAccountDtoMapper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 8
    new-instance v0, Lcom/liquable/nemo/client/mapper/SubAccountDtoMapper;

    const-string/jumbo v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/client/mapper/SubAccountDtoMapper;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/client/mapper/SubAccountDtoMapper;->INSTANCE:Lcom/liquable/nemo/client/mapper/SubAccountDtoMapper;

    .line 7
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/liquable/nemo/client/mapper/SubAccountDtoMapper;

    sget-object v1, Lcom/liquable/nemo/client/mapper/SubAccountDtoMapper;->INSTANCE:Lcom/liquable/nemo/client/mapper/SubAccountDtoMapper;

    aput-object v1, v0, v2

    sput-object v0, Lcom/liquable/nemo/client/mapper/SubAccountDtoMapper;->$VALUES:[Lcom/liquable/nemo/client/mapper/SubAccountDtoMapper;

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

.method public static valueOf(Ljava/lang/String;)Lcom/liquable/nemo/client/mapper/SubAccountDtoMapper;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 7
    const-class v0, Lcom/liquable/nemo/client/mapper/SubAccountDtoMapper;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/client/mapper/SubAccountDtoMapper;

    return-object v0
.end method

.method public static values()[Lcom/liquable/nemo/client/mapper/SubAccountDtoMapper;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/liquable/nemo/client/mapper/SubAccountDtoMapper;->$VALUES:[Lcom/liquable/nemo/client/mapper/SubAccountDtoMapper;

    invoke-virtual {v0}, [Lcom/liquable/nemo/client/mapper/SubAccountDtoMapper;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/liquable/nemo/client/mapper/SubAccountDtoMapper;

    return-object v0
.end method


# virtual methods
.method public map(Ljava/lang/Object;)Lcom/liquable/nemo/model/account/SubAccountDto;
    .locals 4
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 13
    if-nez p1, :cond_0

    .line 14
    const/4 v1, 0x0

    .line 18
    :goto_0
    return-object v1

    :cond_0
    move-object v0, p1

    .line 17
    check-cast v0, Ljava/util/Map;

    .line 18
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v3, Lcom/liquable/nemo/model/account/SubAccountDto;

    const-string/jumbo v1, "parentUid"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v2, "subId"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v3, v1, v2}, Lcom/liquable/nemo/model/account/SubAccountDto;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v3

    goto :goto_0
.end method

.method public bridge synthetic map(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 7
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/client/mapper/SubAccountDtoMapper;->map(Ljava/lang/Object;)Lcom/liquable/nemo/model/account/SubAccountDto;

    move-result-object v0

    return-object v0
.end method
