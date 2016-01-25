.class public Lcom/liquable/nemo/purchase/model/PurchaseManager;
.super Ljava/lang/Object;
.source "PurchaseManager.java"


# static fields
.field private static final logger:Lcom/liquable/nemo/util/Logger;


# instance fields
.field private final broadcastManager:Lcom/liquable/nemo/android/BroadcastManager;

.field private final purchaseService:Lcom/liquable/nemo/client/service/PurchaseService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/liquable/nemo/purchase/model/PurchaseManager;

    invoke-static {v0}, Lcom/liquable/nemo/util/Logger;->getInstance(Ljava/lang/Class;)Lcom/liquable/nemo/util/Logger;

    move-result-object v0

    sput-object v0, Lcom/liquable/nemo/purchase/model/PurchaseManager;->logger:Lcom/liquable/nemo/util/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/liquable/nemo/client/service/PurchaseService;Lcom/liquable/nemo/android/BroadcastManager;)V
    .locals 0
    .param p1, "purchaseService"    # Lcom/liquable/nemo/client/service/PurchaseService;
    .param p2, "broadcastManager"    # Lcom/liquable/nemo/android/BroadcastManager;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/liquable/nemo/purchase/model/PurchaseManager;->purchaseService:Lcom/liquable/nemo/client/service/PurchaseService;

    .line 28
    iput-object p2, p0, Lcom/liquable/nemo/purchase/model/PurchaseManager;->broadcastManager:Lcom/liquable/nemo/android/BroadcastManager;

    .line 29
    return-void
.end method


# virtual methods
.method public limitedTimeOfferSticker(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "productId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 33
    sget-object v1, Lcom/liquable/nemo/purchase/model/PurchaseManager;->logger:Lcom/liquable/nemo/util/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "limitedTimeOfferSticker: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 34
    iget-object v1, p0, Lcom/liquable/nemo/purchase/model/PurchaseManager;->purchaseService:Lcom/liquable/nemo/client/service/PurchaseService;

    invoke-virtual {v1, p1, p2}, Lcom/liquable/nemo/client/service/PurchaseService;->limitedTimeOfferSticker(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 35
    .local v0, "result":Z
    if-eqz v0, :cond_0

    .line 36
    iget-object v1, p0, Lcom/liquable/nemo/purchase/model/PurchaseManager;->broadcastManager:Lcom/liquable/nemo/android/BroadcastManager;

    invoke-virtual {v1, p2}, Lcom/liquable/nemo/android/BroadcastManager;->broadcastStickerLimitedTimeOfferSuccess(Ljava/lang/String;)V

    .line 38
    :cond_0
    return v0
.end method

.method public purchaseViaGooglePlay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "inappSignedData"    # Ljava/lang/String;
    .param p3, "inappSignature"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/model/purchase/GooglePlayPurchaseResultDto;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;,
            Lcom/liquable/nemo/model/InAppBillingSignatureException;,
            Lcom/liquable/nemo/model/PurchaseDuplicateException;
        }
    .end annotation

    .prologue
    .line 45
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/liquable/nemo/model/purchase/GooglePlayPurchaseResultDto;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/liquable/nemo/purchase/model/PurchaseManager;->purchaseService:Lcom/liquable/nemo/client/service/PurchaseService;

    invoke-virtual {v2, p1, p2, p3}, Lcom/liquable/nemo/client/service/PurchaseService;->purchaseViaGooglePlayV3(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/model/purchase/GooglePlayPurchaseResultDto;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public startPurchasingViaGooglePlay(Ljava/lang/String;)Lcom/liquable/nemo/model/purchase/DeveloperPayload;
    .locals 6
    .param p1, "productId"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 49
    const/4 v0, 0x0

    .line 50
    .local v0, "to":Ljava/lang/String;
    sget-object v1, Lcom/liquable/nemo/purchase/model/PurchaseManager;->logger:Lcom/liquable/nemo/util/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startPurchasing via Google Play: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 51
    iget-object v1, p0, Lcom/liquable/nemo/purchase/model/PurchaseManager;->broadcastManager:Lcom/liquable/nemo/android/BroadcastManager;

    new-array v2, v5, [Ljava/lang/String;

    aput-object p1, v2, v4

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/String;

    aput-object v0, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/liquable/nemo/android/BroadcastManager;->broadcastStickerPurchaseStarted(Ljava/util/List;Ljava/util/List;)V

    .line 52
    new-instance v1, Lcom/liquable/nemo/model/purchase/DeveloperPayload;

    sget-object v2, Lcom/liquable/nemo/model/purchase/ProductType;->STICKER:Lcom/liquable/nemo/model/purchase/ProductType;

    invoke-direct {v1, v2, v0}, Lcom/liquable/nemo/model/purchase/DeveloperPayload;-><init>(Lcom/liquable/nemo/model/purchase/ProductType;Ljava/lang/String;)V

    return-object v1
.end method
