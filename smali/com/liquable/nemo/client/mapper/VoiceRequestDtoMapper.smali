.class public final enum Lcom/liquable/nemo/client/mapper/VoiceRequestDtoMapper;
.super Ljava/lang/Enum;
.source "VoiceRequestDtoMapper.java"

# interfaces
.implements Lcom/liquable/nemo/client/mapper/ResultMapper;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/liquable/nemo/client/mapper/VoiceRequestDtoMapper;",
        ">;",
        "Lcom/liquable/nemo/client/mapper/ResultMapper",
        "<",
        "Lcom/liquable/nemo/model/account/VoiceRequestDto;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/liquable/nemo/client/mapper/VoiceRequestDtoMapper;

.field public static final enum INSTANCE:Lcom/liquable/nemo/client/mapper/VoiceRequestDtoMapper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 8
    new-instance v0, Lcom/liquable/nemo/client/mapper/VoiceRequestDtoMapper;

    const-string/jumbo v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/client/mapper/VoiceRequestDtoMapper;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/client/mapper/VoiceRequestDtoMapper;->INSTANCE:Lcom/liquable/nemo/client/mapper/VoiceRequestDtoMapper;

    .line 7
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/liquable/nemo/client/mapper/VoiceRequestDtoMapper;

    sget-object v1, Lcom/liquable/nemo/client/mapper/VoiceRequestDtoMapper;->INSTANCE:Lcom/liquable/nemo/client/mapper/VoiceRequestDtoMapper;

    aput-object v1, v0, v2

    sput-object v0, Lcom/liquable/nemo/client/mapper/VoiceRequestDtoMapper;->$VALUES:[Lcom/liquable/nemo/client/mapper/VoiceRequestDtoMapper;

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

.method public static valueOf(Ljava/lang/String;)Lcom/liquable/nemo/client/mapper/VoiceRequestDtoMapper;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 7
    const-class v0, Lcom/liquable/nemo/client/mapper/VoiceRequestDtoMapper;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/client/mapper/VoiceRequestDtoMapper;

    return-object v0
.end method

.method public static values()[Lcom/liquable/nemo/client/mapper/VoiceRequestDtoMapper;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/liquable/nemo/client/mapper/VoiceRequestDtoMapper;->$VALUES:[Lcom/liquable/nemo/client/mapper/VoiceRequestDtoMapper;

    invoke-virtual {v0}, [Lcom/liquable/nemo/client/mapper/VoiceRequestDtoMapper;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/liquable/nemo/client/mapper/VoiceRequestDtoMapper;

    return-object v0
.end method


# virtual methods
.method public map(Ljava/lang/Object;)Lcom/liquable/nemo/model/account/VoiceRequestDto;
    .locals 4
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 13
    if-nez p1, :cond_0

    .line 14
    const/4 v1, 0x0

    .line 20
    :goto_0
    return-object v1

    :cond_0
    move-object v0, p1

    .line 17
    check-cast v0, Ljava/util/Map;

    .line 19
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v3, Lcom/liquable/nemo/model/account/VoiceRequestDto;

    const-string/jumbo v1, "formattedPhoneNumber"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v2, "pincode"

    .line 20
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v3, v1, v2}, Lcom/liquable/nemo/model/account/VoiceRequestDto;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v3

    goto :goto_0
.end method

.method public bridge synthetic map(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 7
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/client/mapper/VoiceRequestDtoMapper;->map(Ljava/lang/Object;)Lcom/liquable/nemo/model/account/VoiceRequestDto;

    move-result-object v0

    return-object v0
.end method
