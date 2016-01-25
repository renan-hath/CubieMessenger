.class public final enum Lcom/liquable/nemo/ads/model/UnknownAdItemDto;
.super Ljava/lang/Enum;
.source "UnknownAdItemDto.java"

# interfaces
.implements Lcom/liquable/nemo/model/ads/IAdItemDto;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/liquable/nemo/ads/model/UnknownAdItemDto;",
        ">;",
        "Lcom/liquable/nemo/model/ads/IAdItemDto;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/liquable/nemo/ads/model/UnknownAdItemDto;

.field public static final enum INSTANCE:Lcom/liquable/nemo/ads/model/UnknownAdItemDto;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 8
    new-instance v0, Lcom/liquable/nemo/ads/model/UnknownAdItemDto;

    const-string/jumbo v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/ads/model/UnknownAdItemDto;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/ads/model/UnknownAdItemDto;->INSTANCE:Lcom/liquable/nemo/ads/model/UnknownAdItemDto;

    .line 7
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/liquable/nemo/ads/model/UnknownAdItemDto;

    sget-object v1, Lcom/liquable/nemo/ads/model/UnknownAdItemDto;->INSTANCE:Lcom/liquable/nemo/ads/model/UnknownAdItemDto;

    aput-object v1, v0, v2

    sput-object v0, Lcom/liquable/nemo/ads/model/UnknownAdItemDto;->$VALUES:[Lcom/liquable/nemo/ads/model/UnknownAdItemDto;

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

.method public static valueOf(Ljava/lang/String;)Lcom/liquable/nemo/ads/model/UnknownAdItemDto;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 7
    const-class v0, Lcom/liquable/nemo/ads/model/UnknownAdItemDto;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/ads/model/UnknownAdItemDto;

    return-object v0
.end method

.method public static values()[Lcom/liquable/nemo/ads/model/UnknownAdItemDto;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/liquable/nemo/ads/model/UnknownAdItemDto;->$VALUES:[Lcom/liquable/nemo/ads/model/UnknownAdItemDto;

    invoke-virtual {v0}, [Lcom/liquable/nemo/ads/model/UnknownAdItemDto;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/liquable/nemo/ads/model/UnknownAdItemDto;

    return-object v0
.end method


# virtual methods
.method public getAdId()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 12
    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public isExceedDisplayCount(I)Z
    .locals 1
    .param p1, "displayCount"    # I

    .prologue
    .line 17
    const/4 v0, 0x1

    return v0
.end method

.method public isExpire(Ljava/util/Date;)Z
    .locals 1
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 22
    const/4 v0, 0x1

    return v0
.end method
