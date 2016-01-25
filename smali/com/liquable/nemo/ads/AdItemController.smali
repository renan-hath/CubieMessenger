.class public Lcom/liquable/nemo/ads/AdItemController;
.super Ljava/lang/Object;
.source "AdItemController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/ads/AdItemController$RefreshableAdItemController;,
        Lcom/liquable/nemo/ads/AdItemController$ImageAdItemController;,
        Lcom/liquable/nemo/ads/AdItemController$AdModeAdItemController;
    }
.end annotation


# static fields
.field private static final BLANK:Lcom/liquable/nemo/ads/AdItemController$RefreshableAdItemController;


# instance fields
.field private adItemViewParent:Landroid/widget/ListView;

.field private consumableAdItem:Lcom/liquable/nemo/ads/model/ConsumableAdItem;

.field private final imageLoader:Lcom/liquable/nemo/util/ImageLoader;

.field private final refreshableAdItemController:Lcom/liquable/nemo/ads/AdItemController$RefreshableAdItemController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 154
    new-instance v0, Lcom/liquable/nemo/ads/AdItemController$1;

    invoke-direct {v0}, Lcom/liquable/nemo/ads/AdItemController$1;-><init>()V

    sput-object v0, Lcom/liquable/nemo/ads/AdItemController;->BLANK:Lcom/liquable/nemo/ads/AdItemController$RefreshableAdItemController;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imageLoader"    # Lcom/liquable/nemo/util/ImageLoader;

    .prologue
    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    iput-object p2, p0, Lcom/liquable/nemo/ads/AdItemController;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    .line 176
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->adsManager:Lcom/liquable/nemo/ads/model/AdsManager;

    invoke-virtual {v0}, Lcom/liquable/nemo/ads/model/AdsManager;->findRandomAds()Lcom/liquable/nemo/ads/model/ConsumableAdItem;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/ads/AdItemController;->consumableAdItem:Lcom/liquable/nemo/ads/model/ConsumableAdItem;

    .line 177
    iget-object v0, p0, Lcom/liquable/nemo/ads/AdItemController;->consumableAdItem:Lcom/liquable/nemo/ads/model/ConsumableAdItem;

    if-eqz v0, :cond_0

    .line 178
    new-instance v0, Lcom/liquable/nemo/ads/AdItemController$ImageAdItemController;

    iget-object v1, p0, Lcom/liquable/nemo/ads/AdItemController;->consumableAdItem:Lcom/liquable/nemo/ads/model/ConsumableAdItem;

    invoke-direct {v0, p0, p1, v1}, Lcom/liquable/nemo/ads/AdItemController$ImageAdItemController;-><init>(Lcom/liquable/nemo/ads/AdItemController;Landroid/content/Context;Lcom/liquable/nemo/ads/model/ConsumableAdItem;)V

    iput-object v0, p0, Lcom/liquable/nemo/ads/AdItemController;->refreshableAdItemController:Lcom/liquable/nemo/ads/AdItemController$RefreshableAdItemController;

    .line 182
    :goto_0
    iget-object v0, p0, Lcom/liquable/nemo/ads/AdItemController;->refreshableAdItemController:Lcom/liquable/nemo/ads/AdItemController$RefreshableAdItemController;

    invoke-interface {v0}, Lcom/liquable/nemo/ads/AdItemController$RefreshableAdItemController;->refresh()V

    .line 183
    return-void

    .line 180
    :cond_0
    sget-object v0, Lcom/liquable/nemo/ads/AdItemController;->BLANK:Lcom/liquable/nemo/ads/AdItemController$RefreshableAdItemController;

    iput-object v0, p0, Lcom/liquable/nemo/ads/AdItemController;->refreshableAdItemController:Lcom/liquable/nemo/ads/AdItemController$RefreshableAdItemController;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/liquable/nemo/ads/AdItemController;)Lcom/liquable/nemo/ads/model/ConsumableAdItem;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/ads/AdItemController;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/liquable/nemo/ads/AdItemController;->consumableAdItem:Lcom/liquable/nemo/ads/model/ConsumableAdItem;

    return-object v0
.end method

.method static synthetic access$100(Lcom/liquable/nemo/ads/AdItemController;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/ads/AdItemController;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/liquable/nemo/ads/AdItemController;->adItemViewParent:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$102(Lcom/liquable/nemo/ads/AdItemController;Landroid/widget/ListView;)Landroid/widget/ListView;
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/ads/AdItemController;
    .param p1, "x1"    # Landroid/widget/ListView;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/liquable/nemo/ads/AdItemController;->adItemViewParent:Landroid/widget/ListView;

    return-object p1
.end method

.method static synthetic access$200(Lcom/liquable/nemo/ads/AdItemController;)Lcom/liquable/nemo/util/ImageLoader;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/ads/AdItemController;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/liquable/nemo/ads/AdItemController;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    return-object v0
.end method


# virtual methods
.method public refresh()V
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/liquable/nemo/ads/AdItemController;->refreshableAdItemController:Lcom/liquable/nemo/ads/AdItemController$RefreshableAdItemController;

    invoke-interface {v0}, Lcom/liquable/nemo/ads/AdItemController$RefreshableAdItemController;->refresh()V

    .line 187
    return-void
.end method

.method public showAdsInHeader(Landroid/widget/ListView;)Z
    .locals 2
    .param p1, "parent"    # Landroid/widget/ListView;

    .prologue
    .line 190
    iget-object v0, p0, Lcom/liquable/nemo/ads/AdItemController;->refreshableAdItemController:Lcom/liquable/nemo/ads/AdItemController$RefreshableAdItemController;

    sget-object v1, Lcom/liquable/nemo/ads/AdItemController;->BLANK:Lcom/liquable/nemo/ads/AdItemController$RefreshableAdItemController;

    if-ne v0, v1, :cond_0

    .line 191
    const/4 v0, 0x0

    .line 201
    :goto_0
    return v0

    .line 193
    :cond_0
    iput-object p1, p0, Lcom/liquable/nemo/ads/AdItemController;->adItemViewParent:Landroid/widget/ListView;

    .line 194
    iget-object v0, p0, Lcom/liquable/nemo/ads/AdItemController;->refreshableAdItemController:Lcom/liquable/nemo/ads/AdItemController$RefreshableAdItemController;

    invoke-interface {v0}, Lcom/liquable/nemo/ads/AdItemController$RefreshableAdItemController;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 196
    iget-object v0, p0, Lcom/liquable/nemo/ads/AdItemController;->consumableAdItem:Lcom/liquable/nemo/ads/model/ConsumableAdItem;

    if-eqz v0, :cond_1

    .line 197
    iget-object v0, p0, Lcom/liquable/nemo/ads/AdItemController;->consumableAdItem:Lcom/liquable/nemo/ads/model/ConsumableAdItem;

    invoke-virtual {v0}, Lcom/liquable/nemo/ads/model/ConsumableAdItem;->withIncreaseDisplayCount()Lcom/liquable/nemo/ads/model/ConsumableAdItem;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/ads/AdItemController;->consumableAdItem:Lcom/liquable/nemo/ads/model/ConsumableAdItem;

    .line 198
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->adsManager:Lcom/liquable/nemo/ads/model/AdsManager;

    iget-object v1, p0, Lcom/liquable/nemo/ads/AdItemController;->consumableAdItem:Lcom/liquable/nemo/ads/model/ConsumableAdItem;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/ads/model/AdsManager;->update(Lcom/liquable/nemo/ads/model/ConsumableAdItem;)V

    .line 201
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
