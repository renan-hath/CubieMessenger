.class Lcom/liquable/nemo/ads/model/AdsDao$2;
.super Ljava/lang/Object;
.source "AdsDao.java"

# interfaces
.implements Lcom/liquable/util/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/ads/model/AdsDao;->sync(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/liquable/util/Predicate",
        "<",
        "Lcom/liquable/nemo/ads/model/ConsumableAdItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/ads/model/AdsDao;

.field final synthetic val$dto:Lcom/liquable/nemo/model/ads/IAdItemDto;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/ads/model/AdsDao;Lcom/liquable/nemo/model/ads/IAdItemDto;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/ads/model/AdsDao;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/liquable/nemo/ads/model/AdsDao$2;->this$0:Lcom/liquable/nemo/ads/model/AdsDao;

    iput-object p2, p0, Lcom/liquable/nemo/ads/model/AdsDao$2;->val$dto:Lcom/liquable/nemo/model/ads/IAdItemDto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/liquable/nemo/ads/model/ConsumableAdItem;)Z
    .locals 2
    .param p1, "adItem"    # Lcom/liquable/nemo/ads/model/ConsumableAdItem;

    .prologue
    .line 182
    iget-object v0, p0, Lcom/liquable/nemo/ads/model/AdsDao$2;->val$dto:Lcom/liquable/nemo/model/ads/IAdItemDto;

    invoke-interface {v0}, Lcom/liquable/nemo/model/ads/IAdItemDto;->getAdId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1}, Lcom/liquable/nemo/ads/model/ConsumableAdItem;->getAdItemDto()Lcom/liquable/nemo/model/ads/IAdItemDto;

    move-result-object v1

    invoke-interface {v1}, Lcom/liquable/nemo/model/ads/IAdItemDto;->getAdId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 179
    check-cast p1, Lcom/liquable/nemo/ads/model/ConsumableAdItem;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/ads/model/AdsDao$2;->apply(Lcom/liquable/nemo/ads/model/ConsumableAdItem;)Z

    move-result v0

    return v0
.end method
