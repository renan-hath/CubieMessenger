.class public final enum Lcom/liquable/nemo/client/mapper/TimedPincodeDtoMapper;
.super Ljava/lang/Enum;
.source "TimedPincodeDtoMapper.java"

# interfaces
.implements Lcom/liquable/nemo/client/mapper/ResultMapper;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/liquable/nemo/client/mapper/TimedPincodeDtoMapper;",
        ">;",
        "Lcom/liquable/nemo/client/mapper/ResultMapper",
        "<",
        "Lcom/liquable/nemo/model/account/TimedPincodeDto;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/liquable/nemo/client/mapper/TimedPincodeDtoMapper;

.field public static final enum INSTANCE:Lcom/liquable/nemo/client/mapper/TimedPincodeDtoMapper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 8
    new-instance v0, Lcom/liquable/nemo/client/mapper/TimedPincodeDtoMapper;

    const-string/jumbo v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/client/mapper/TimedPincodeDtoMapper;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/client/mapper/TimedPincodeDtoMapper;->INSTANCE:Lcom/liquable/nemo/client/mapper/TimedPincodeDtoMapper;

    .line 7
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/liquable/nemo/client/mapper/TimedPincodeDtoMapper;

    sget-object v1, Lcom/liquable/nemo/client/mapper/TimedPincodeDtoMapper;->INSTANCE:Lcom/liquable/nemo/client/mapper/TimedPincodeDtoMapper;

    aput-object v1, v0, v2

    sput-object v0, Lcom/liquable/nemo/client/mapper/TimedPincodeDtoMapper;->$VALUES:[Lcom/liquable/nemo/client/mapper/TimedPincodeDtoMapper;

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

.method public static valueOf(Ljava/lang/String;)Lcom/liquable/nemo/client/mapper/TimedPincodeDtoMapper;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 7
    const-class v0, Lcom/liquable/nemo/client/mapper/TimedPincodeDtoMapper;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/client/mapper/TimedPincodeDtoMapper;

    return-object v0
.end method

.method public static values()[Lcom/liquable/nemo/client/mapper/TimedPincodeDtoMapper;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/liquable/nemo/client/mapper/TimedPincodeDtoMapper;->$VALUES:[Lcom/liquable/nemo/client/mapper/TimedPincodeDtoMapper;

    invoke-virtual {v0}, [Lcom/liquable/nemo/client/mapper/TimedPincodeDtoMapper;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/liquable/nemo/client/mapper/TimedPincodeDtoMapper;

    return-object v0
.end method


# virtual methods
.method public map(Ljava/lang/Object;)Lcom/liquable/nemo/model/account/TimedPincodeDto;
    .locals 5
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 13
    if-nez p1, :cond_0

    .line 14
    const/4 v3, 0x0

    .line 21
    :goto_0
    return-object v3

    :cond_0
    move-object v0, p1

    .line 17
    check-cast v0, Ljava/util/Map;

    .line 19
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v3, "remainSeconds"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 20
    .local v1, "remain":I
    const-string/jumbo v3, "totalSeconds"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 21
    .local v2, "total":I
    new-instance v4, Lcom/liquable/nemo/model/account/TimedPincodeDto;

    const-string/jumbo v3, "pincode"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v4, v3, v2, v1}, Lcom/liquable/nemo/model/account/TimedPincodeDto;-><init>(Ljava/lang/String;II)V

    move-object v3, v4

    goto :goto_0
.end method

.method public bridge synthetic map(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 7
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/client/mapper/TimedPincodeDtoMapper;->map(Ljava/lang/Object;)Lcom/liquable/nemo/model/account/TimedPincodeDto;

    move-result-object v0

    return-object v0
.end method
