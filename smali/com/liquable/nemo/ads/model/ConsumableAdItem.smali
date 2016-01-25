.class public Lcom/liquable/nemo/ads/model/ConsumableAdItem;
.super Ljava/lang/Object;
.source "ConsumableAdItem.java"


# instance fields
.field private final adItemDto:Lcom/liquable/nemo/model/ads/IAdItemDto;

.field private final consumed:Z

.field private final displayCount:I

.field private final id:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Ljava/lang/Long;Lcom/liquable/nemo/model/ads/IAdItemDto;ZI)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Long;
    .param p2, "adItemDto"    # Lcom/liquable/nemo/model/ads/IAdItemDto;
    .param p3, "consumed"    # Z
    .param p4, "displayCount"    # I

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p2, p0, Lcom/liquable/nemo/ads/model/ConsumableAdItem;->adItemDto:Lcom/liquable/nemo/model/ads/IAdItemDto;

    .line 22
    iput-object p1, p0, Lcom/liquable/nemo/ads/model/ConsumableAdItem;->id:Ljava/lang/Long;

    .line 23
    iput-boolean p3, p0, Lcom/liquable/nemo/ads/model/ConsumableAdItem;->consumed:Z

    .line 24
    iput p4, p0, Lcom/liquable/nemo/ads/model/ConsumableAdItem;->displayCount:I

    .line 25
    return-void
.end method


# virtual methods
.method public getAdItemDto()Lcom/liquable/nemo/model/ads/IAdItemDto;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/liquable/nemo/ads/model/ConsumableAdItem;->adItemDto:Lcom/liquable/nemo/model/ads/IAdItemDto;

    return-object v0
.end method

.method public getDisplayCount()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/liquable/nemo/ads/model/ConsumableAdItem;->displayCount:I

    return v0
.end method

.method getId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/liquable/nemo/ads/model/ConsumableAdItem;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getTypeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/liquable/nemo/ads/model/ConsumableAdItem;->adItemDto:Lcom/liquable/nemo/model/ads/IAdItemDto;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isConsumed()Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/liquable/nemo/ads/model/ConsumableAdItem;->consumed:Z

    return v0
.end method

.method public isExceedDisplayCount()Z
    .locals 2

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/liquable/nemo/ads/model/ConsumableAdItem;->getAdItemDto()Lcom/liquable/nemo/model/ads/IAdItemDto;

    move-result-object v0

    invoke-virtual {p0}, Lcom/liquable/nemo/ads/model/ConsumableAdItem;->getDisplayCount()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/liquable/nemo/model/ads/IAdItemDto;->isExceedDisplayCount(I)Z

    move-result v0

    return v0
.end method

.method public isExpired(Ljava/util/Date;)Z
    .locals 1
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/liquable/nemo/ads/model/ConsumableAdItem;->adItemDto:Lcom/liquable/nemo/model/ads/IAdItemDto;

    invoke-interface {v0, p1}, Lcom/liquable/nemo/model/ads/IAdItemDto;->isExpire(Ljava/util/Date;)Z

    move-result v0

    return v0
.end method

.method public withConsume()Lcom/liquable/nemo/ads/model/ConsumableAdItem;
    .locals 5

    .prologue
    .line 56
    new-instance v0, Lcom/liquable/nemo/ads/model/ConsumableAdItem;

    iget-object v1, p0, Lcom/liquable/nemo/ads/model/ConsumableAdItem;->id:Ljava/lang/Long;

    iget-object v2, p0, Lcom/liquable/nemo/ads/model/ConsumableAdItem;->adItemDto:Lcom/liquable/nemo/model/ads/IAdItemDto;

    const/4 v3, 0x1

    iget v4, p0, Lcom/liquable/nemo/ads/model/ConsumableAdItem;->displayCount:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/liquable/nemo/ads/model/ConsumableAdItem;-><init>(Ljava/lang/Long;Lcom/liquable/nemo/model/ads/IAdItemDto;ZI)V

    return-object v0
.end method

.method public withIncreaseDisplayCount()Lcom/liquable/nemo/ads/model/ConsumableAdItem;
    .locals 5

    .prologue
    .line 60
    new-instance v0, Lcom/liquable/nemo/ads/model/ConsumableAdItem;

    iget-object v1, p0, Lcom/liquable/nemo/ads/model/ConsumableAdItem;->id:Ljava/lang/Long;

    iget-object v2, p0, Lcom/liquable/nemo/ads/model/ConsumableAdItem;->adItemDto:Lcom/liquable/nemo/model/ads/IAdItemDto;

    iget-boolean v3, p0, Lcom/liquable/nemo/ads/model/ConsumableAdItem;->consumed:Z

    iget v4, p0, Lcom/liquable/nemo/ads/model/ConsumableAdItem;->displayCount:I

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/liquable/nemo/ads/model/ConsumableAdItem;-><init>(Ljava/lang/Long;Lcom/liquable/nemo/model/ads/IAdItemDto;ZI)V

    return-object v0
.end method

.method withNewAdItem(Lcom/liquable/nemo/model/ads/IAdItemDto;)Lcom/liquable/nemo/ads/model/ConsumableAdItem;
    .locals 4
    .param p1, "newAdItemDto"    # Lcom/liquable/nemo/model/ads/IAdItemDto;

    .prologue
    .line 64
    new-instance v0, Lcom/liquable/nemo/ads/model/ConsumableAdItem;

    iget-object v1, p0, Lcom/liquable/nemo/ads/model/ConsumableAdItem;->id:Ljava/lang/Long;

    iget-boolean v2, p0, Lcom/liquable/nemo/ads/model/ConsumableAdItem;->consumed:Z

    iget v3, p0, Lcom/liquable/nemo/ads/model/ConsumableAdItem;->displayCount:I

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/liquable/nemo/ads/model/ConsumableAdItem;-><init>(Ljava/lang/Long;Lcom/liquable/nemo/model/ads/IAdItemDto;ZI)V

    return-object v0
.end method
