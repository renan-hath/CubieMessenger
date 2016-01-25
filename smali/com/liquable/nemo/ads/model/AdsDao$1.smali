.class Lcom/liquable/nemo/ads/model/AdsDao$1;
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
        "Lcom/liquable/nemo/model/ads/IAdItemDto;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/ads/model/AdsDao;

.field final synthetic val$exist:Lcom/liquable/nemo/ads/model/ConsumableAdItem;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/ads/model/AdsDao;Lcom/liquable/nemo/ads/model/ConsumableAdItem;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/ads/model/AdsDao;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/liquable/nemo/ads/model/AdsDao$1;->this$0:Lcom/liquable/nemo/ads/model/AdsDao;

    iput-object p2, p0, Lcom/liquable/nemo/ads/model/AdsDao$1;->val$exist:Lcom/liquable/nemo/ads/model/ConsumableAdItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/liquable/nemo/model/ads/IAdItemDto;)Z
    .locals 2
    .param p1, "dto"    # Lcom/liquable/nemo/model/ads/IAdItemDto;

    .prologue
    .line 165
    invoke-interface {p1}, Lcom/liquable/nemo/model/ads/IAdItemDto;->getAdId()Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/ads/model/AdsDao$1;->val$exist:Lcom/liquable/nemo/ads/model/ConsumableAdItem;

    invoke-virtual {v1}, Lcom/liquable/nemo/ads/model/ConsumableAdItem;->getAdItemDto()Lcom/liquable/nemo/model/ads/IAdItemDto;

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
    .line 162
    check-cast p1, Lcom/liquable/nemo/model/ads/IAdItemDto;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/ads/model/AdsDao$1;->apply(Lcom/liquable/nemo/model/ads/IAdItemDto;)Z

    move-result v0

    return v0
.end method
