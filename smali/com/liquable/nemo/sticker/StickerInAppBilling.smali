.class public Lcom/liquable/nemo/sticker/StickerInAppBilling;
.super Ljava/lang/Object;
.source "StickerInAppBilling.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/sticker/StickerInAppBilling$IabHelperDisposedException;,
        Lcom/liquable/nemo/sticker/StickerInAppBilling$State;
    }
.end annotation


# static fields
.field private static final PURCHASE_RPC_RETRY_COUNT_MAX:I = 0x3

.field private static final PURCHASE_RPC_RETRY_INTERVAL_FACTOR:I = 0xa

.field private static final debugLogger:Lcom/liquable/nemo/util/Logger;


# instance fields
.field private applicationContext:Landroid/content/Context;

.field private handler:Landroid/os/Handler;

.field private helper:Lcom/liquable/nemo/iab/IabHelper;

.field private pendingGetIabHelpers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/liquable/future/Completer",
            "<",
            "Lcom/liquable/nemo/iab/IabHelper;",
            ">;>;"
        }
    .end annotation
.end field

.field private state:Lcom/liquable/nemo/sticker/StickerInAppBilling$State;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-class v0, Lcom/liquable/nemo/sticker/StickerInAppBilling;

    invoke-static {v0}, Lcom/liquable/nemo/util/Logger;->getInstance(Ljava/lang/Class;)Lcom/liquable/nemo/util/Logger;

    move-result-object v0

    sput-object v0, Lcom/liquable/nemo/sticker/StickerInAppBilling;->debugLogger:Lcom/liquable/nemo/util/Logger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    sget-object v1, Lcom/liquable/nemo/sticker/StickerInAppBilling$State;->STARTING:Lcom/liquable/nemo/sticker/StickerInAppBilling$State;

    iput-object v1, p0, Lcom/liquable/nemo/sticker/StickerInAppBilling;->state:Lcom/liquable/nemo/sticker/StickerInAppBilling$State;

    .line 58
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/liquable/nemo/sticker/StickerInAppBilling;->pendingGetIabHelpers:Ljava/util/List;

    .line 59
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/liquable/nemo/sticker/StickerInAppBilling;->handler:Landroid/os/Handler;

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/liquable/nemo/sticker/StickerInAppBilling;->applicationContext:Landroid/content/Context;

    .line 65
    const/4 v0, 0x0

    .line 66
    .local v0, "base64PubKey":Ljava/lang/String;
    new-instance v1, Lcom/liquable/nemo/iab/IabHelper;

    iget-object v2, p0, Lcom/liquable/nemo/sticker/StickerInAppBilling;->applicationContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/liquable/nemo/iab/IabHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/liquable/nemo/sticker/StickerInAppBilling;->helper:Lcom/liquable/nemo/iab/IabHelper;

    .line 67
    iget-object v1, p0, Lcom/liquable/nemo/sticker/StickerInAppBilling;->helper:Lcom/liquable/nemo/iab/IabHelper;

    invoke-static {p0}, Lcom/liquable/nemo/sticker/StickerInAppBilling$$Lambda$1;->lambdaFactory$(Lcom/liquable/nemo/sticker/StickerInAppBilling;)Lcom/liquable/nemo/iab/IabHelper$OnIabSetupFinishedListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/iab/IabHelper;->startSetup(Lcom/liquable/nemo/iab/IabHelper$OnIabSetupFinishedListener;)V

    .line 82
    return-void
.end method

.method static synthetic access$000()Lcom/liquable/nemo/util/Logger;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/liquable/nemo/sticker/StickerInAppBilling;->debugLogger:Lcom/liquable/nemo/util/Logger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/liquable/nemo/sticker/StickerInAppBilling;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/sticker/StickerInAppBilling;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/liquable/nemo/sticker/StickerInAppBilling;->extractToFieldInPayload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/liquable/nemo/sticker/StickerInAppBilling;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/sticker/StickerInAppBilling;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/liquable/nemo/sticker/StickerInAppBilling;->insertNotices(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$300(Lcom/liquable/nemo/sticker/StickerInAppBilling;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/sticker/StickerInAppBilling;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/liquable/nemo/sticker/StickerInAppBilling;->applicationContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$lambda$0(Lcom/liquable/nemo/sticker/StickerInAppBilling;Lcom/liquable/nemo/iab/IabResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/liquable/nemo/sticker/StickerInAppBilling;->lambda$new$43(Lcom/liquable/nemo/iab/IabResult;)V

    return-void
.end method

.method static synthetic access$lambda$1(Lcom/liquable/nemo/iab/IabHelper;)Ljava/lang/Boolean;
    .locals 1

    invoke-static {p0}, Lcom/liquable/nemo/sticker/StickerInAppBilling;->lambda$checkInAppBillingSupport$44(Lcom/liquable/nemo/iab/IabHelper;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$10(Lcom/liquable/nemo/iab/IabHelper;)Lcom/liquable/future/IFuture;
    .locals 1

    invoke-static {p0}, Lcom/liquable/nemo/sticker/StickerInAppBilling;->lambda$findPurchaseInGooglePlay$57(Lcom/liquable/nemo/iab/IabHelper;)Lcom/liquable/future/IFuture;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$11(Lcom/liquable/nemo/model/sticker/StickerItemDto;Lcom/liquable/nemo/iab/Inventory;)Lcom/liquable/nemo/iab/Purchase;
    .locals 1

    invoke-static {p0, p1}, Lcom/liquable/nemo/sticker/StickerInAppBilling;->lambda$findPurchaseInGooglePlay$58(Lcom/liquable/nemo/model/sticker/StickerItemDto;Lcom/liquable/nemo/iab/Inventory;)Lcom/liquable/nemo/iab/Purchase;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$12(Lcom/liquable/nemo/sticker/StickerInAppBilling$IabHelperDisposedException;)Lcom/liquable/nemo/iab/Purchase;
    .locals 1

    invoke-static {p0}, Lcom/liquable/nemo/sticker/StickerInAppBilling;->lambda$findPurchaseInGooglePlay$59(Lcom/liquable/nemo/sticker/StickerInAppBilling$IabHelperDisposedException;)Lcom/liquable/nemo/iab/Purchase;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$13(Lcom/liquable/nemo/sticker/StickerInAppBilling;ILjava/util/List;Ljava/util/List;Ljava/lang/String;Lcom/liquable/nemo/client/AsyncException;)Lcom/liquable/future/IFuture;
    .locals 1

    invoke-direct/range {p0 .. p5}, Lcom/liquable/nemo/sticker/StickerInAppBilling;->lambda$doRpcPurchase$61(ILjava/util/List;Ljava/util/List;Ljava/lang/String;Lcom/liquable/nemo/client/AsyncException;)Lcom/liquable/future/IFuture;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$14(Lcom/liquable/nemo/sticker/StickerInAppBilling;Ljava/lang/String;Ljava/util/List;Ljava/util/List;ILjava/lang/Void;)Lcom/liquable/future/IFuture;
    .locals 1

    invoke-direct/range {p0 .. p5}, Lcom/liquable/nemo/sticker/StickerInAppBilling;->lambda$null$60(Ljava/lang/String;Ljava/util/List;Ljava/util/List;ILjava/lang/Void;)Lcom/liquable/future/IFuture;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$15(Lcom/liquable/nemo/iab/IabHelper;)Lcom/liquable/nemo/iab/Inventory;
    .locals 1

    invoke-static {p0}, Lcom/liquable/nemo/sticker/StickerInAppBilling;->lambda$null$56(Lcom/liquable/nemo/iab/IabHelper;)Lcom/liquable/nemo/iab/Inventory;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$16(Ljava/util/List;)Ljava/lang/Integer;
    .locals 1

    invoke-static {p0}, Lcom/liquable/nemo/sticker/StickerInAppBilling;->lambda$null$51(Ljava/util/List;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$17(Lcom/liquable/nemo/iab/IabHelper;)Lcom/liquable/nemo/iab/Inventory;
    .locals 1

    invoke-static {p0}, Lcom/liquable/nemo/sticker/StickerInAppBilling;->lambda$null$49(Lcom/liquable/nemo/iab/IabHelper;)Lcom/liquable/nemo/iab/Inventory;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$18(Lcom/liquable/nemo/sticker/StickerInAppBilling;Ljava/lang/String;Ljava/lang/String;Lcom/liquable/nemo/iab/IabResult;Lcom/liquable/nemo/iab/Purchase;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/liquable/nemo/sticker/StickerInAppBilling;->lambda$null$46(Ljava/lang/String;Ljava/lang/String;Lcom/liquable/nemo/iab/IabResult;Lcom/liquable/nemo/iab/Purchase;)V

    return-void
.end method

.method static synthetic access$lambda$2(Ljava/lang/Exception;)Ljava/lang/Boolean;
    .locals 1

    invoke-static {p0}, Lcom/liquable/nemo/sticker/StickerInAppBilling;->lambda$checkInAppBillingSupport$45(Ljava/lang/Exception;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$3(Lcom/liquable/nemo/sticker/StickerInAppBilling;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/liquable/nemo/iab/IabHelper;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/liquable/nemo/sticker/StickerInAppBilling;->lambda$launchPurchaseFlow$47(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/liquable/nemo/iab/IabHelper;)V

    return-void
.end method

.method static synthetic access$lambda$4(Lcom/liquable/nemo/sticker/StickerInAppBilling$IabHelperDisposedException;)V
    .locals 0

    invoke-static {p0}, Lcom/liquable/nemo/sticker/StickerInAppBilling;->lambda$launchPurchaseFlow$48(Lcom/liquable/nemo/sticker/StickerInAppBilling$IabHelperDisposedException;)V

    return-void
.end method

.method static synthetic access$lambda$5(Lcom/liquable/nemo/iab/IabHelper;)Lcom/liquable/future/IFuture;
    .locals 1

    invoke-static {p0}, Lcom/liquable/nemo/sticker/StickerInAppBilling;->lambda$tryRecoverAllPurchaseFromGoogleInventory$50(Lcom/liquable/nemo/iab/IabHelper;)Lcom/liquable/future/IFuture;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$6(Lcom/liquable/nemo/sticker/StickerInAppBilling;ILjava/util/List;)Lcom/liquable/future/IFuture;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/liquable/nemo/sticker/StickerInAppBilling;->lambda$tryRecoverAllPurchaseFromGoogleInventory$52(ILjava/util/List;)Lcom/liquable/future/IFuture;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$7(Lcom/liquable/nemo/sticker/StickerInAppBilling$IabHelperDisposedException;)V
    .locals 0

    invoke-static {p0}, Lcom/liquable/nemo/sticker/StickerInAppBilling;->lambda$tryRecoverAllPurchaseFromGoogleInventory$53(Lcom/liquable/nemo/sticker/StickerInAppBilling$IabHelperDisposedException;)V

    return-void
.end method

.method static synthetic access$lambda$8(Lcom/liquable/nemo/sticker/StickerInAppBilling;Lcom/liquable/nemo/model/sticker/StickerItemDto;Lcom/liquable/nemo/iab/Purchase;)Lcom/liquable/future/IFuture;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/liquable/nemo/sticker/StickerInAppBilling;->lambda$tryRecoverPurchasedStickerItem$54(Lcom/liquable/nemo/model/sticker/StickerItemDto;Lcom/liquable/nemo/iab/Purchase;)Lcom/liquable/future/IFuture;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$9(Ljava/lang/Exception;)V
    .locals 0

    invoke-static {p0}, Lcom/liquable/nemo/sticker/StickerInAppBilling;->lambda$tryRecoverPurchasedStickerItem$55(Ljava/lang/Exception;)V

    return-void
.end method

.method private doRpcPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;I)Lcom/liquable/future/IFuture;
    .locals 6
    .param p1, "signedData"    # Ljava/lang/String;
    .param p2, "signature"    # Ljava/lang/String;
    .param p5, "retryCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)",
            "Lcom/liquable/future/IFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 256
    .local p3, "productIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "tos":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/liquable/future/Futures;->createCompleter()Lcom/liquable/future/Completer;

    move-result-object v5

    .line 257
    .local v5, "completer":Lcom/liquable/future/Completer;, "Lcom/liquable/future/Completer<Ljava/lang/Void;>;"
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->broadcastService:Lcom/liquable/nemo/android/BroadcastManager;

    invoke-virtual {v0, p3}, Lcom/liquable/nemo/android/BroadcastManager;->broadcastStickerPurchaseRpcStarted(Ljava/util/List;)V

    .line 258
    new-instance v0, Lcom/liquable/nemo/sticker/StickerInAppBilling$1;

    iget-object v2, p0, Lcom/liquable/nemo/sticker/StickerInAppBilling;->applicationContext:Landroid/content/Context;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/liquable/nemo/sticker/StickerInAppBilling$1;-><init>(Lcom/liquable/nemo/sticker/StickerInAppBilling;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/liquable/future/Completer;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 322
    invoke-virtual {v0, v1}, Lcom/liquable/nemo/sticker/StickerInAppBilling$1;->execute([Ljava/lang/Object;)V

    .line 323
    invoke-virtual {v5}, Lcom/liquable/future/Completer;->getFuture()Lcom/liquable/future/IFuture;

    move-result-object v0

    const-class v1, Lcom/liquable/nemo/client/AsyncException;

    invoke-static {p0, p5, p3, p4, p1}, Lcom/liquable/nemo/sticker/StickerInAppBilling$$Lambda$15;->lambdaFactory$(Lcom/liquable/nemo/sticker/StickerInAppBilling;ILjava/util/List;Ljava/util/List;Ljava/lang/String;)Lcom/liquable/future/FunctionWait;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/liquable/future/IFuture;->flatMapError(Ljava/lang/Class;Lcom/liquable/future/FunctionWait;)Lcom/liquable/future/IFuture;

    move-result-object v0

    return-object v0
.end method

.method private extractToFieldInPayload(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "payloadString"    # Ljava/lang/String;

    .prologue
    .line 234
    const/4 v2, 0x0

    .line 236
    .local v2, "payload":Lcom/liquable/nemo/model/purchase/DeveloperPayload;
    :try_start_0
    invoke-static {}, Lcom/liquable/nemo/json/SimpleJsonMapper;->getInstance()Lcom/liquable/nemo/json/SimpleJsonMapper;

    move-result-object v3

    const-class v4, Lcom/liquable/nemo/model/purchase/DeveloperPayload;

    invoke-virtual {v3, p1, v4}, Lcom/liquable/nemo/json/SimpleJsonMapper;->decode(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/liquable/nemo/model/purchase/DeveloperPayload;

    move-object v2, v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    :goto_0
    if-eqz v2, :cond_1

    .line 242
    invoke-virtual {v2}, Lcom/liquable/nemo/model/purchase/DeveloperPayload;->getReceiverUid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, ""

    .line 244
    :goto_1
    return-object v3

    .line 237
    :catch_0
    move-exception v1

    .line 238
    .local v1, "e":Ljava/io/IOException;
    sget-object v3, Lcom/liquable/nemo/sticker/StickerInAppBilling;->debugLogger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v4, "could not decode developer payload, ignore."

    invoke-virtual {v3, v4, v1}, Lcom/liquable/nemo/util/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 242
    .end local v1    # "e":Ljava/io/IOException;
    :cond_0
    invoke-virtual {v2}, Lcom/liquable/nemo/model/purchase/DeveloperPayload;->getReceiverUid()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 244
    :cond_1
    const-string/jumbo v3, ""

    goto :goto_1
.end method

.method private findPurchaseInGooglePlay(Lcom/liquable/nemo/model/sticker/StickerItemDto;)Lcom/liquable/future/IFuture;
    .locals 3
    .param p1, "itemDto"    # Lcom/liquable/nemo/model/sticker/StickerItemDto;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/liquable/nemo/model/sticker/StickerItemDto;",
            ")",
            "Lcom/liquable/future/IFuture",
            "<",
            "Lcom/liquable/nemo/iab/Purchase;",
            ">;"
        }
    .end annotation

    .prologue
    .line 223
    invoke-direct {p0}, Lcom/liquable/nemo/sticker/StickerInAppBilling;->getIabHelper()Lcom/liquable/future/IFuture;

    move-result-object v0

    invoke-static {}, Lcom/liquable/nemo/sticker/StickerInAppBilling$$Lambda$12;->lambdaFactory$()Lcom/liquable/future/FunctionWait;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/liquable/future/IFuture;->flatMap(Lcom/liquable/future/FunctionWait;)Lcom/liquable/future/IFuture;

    move-result-object v0

    invoke-static {p1}, Lcom/liquable/nemo/sticker/StickerInAppBilling$$Lambda$13;->lambdaFactory$(Lcom/liquable/nemo/model/sticker/StickerItemDto;)Lcom/liquable/future/Function;

    move-result-object v1

    .line 225
    invoke-interface {v0, v1}, Lcom/liquable/future/IFuture;->map(Lcom/liquable/future/Function;)Lcom/liquable/future/IFuture;

    move-result-object v0

    const-class v1, Lcom/liquable/nemo/sticker/StickerInAppBilling$IabHelperDisposedException;

    invoke-static {}, Lcom/liquable/nemo/sticker/StickerInAppBilling$$Lambda$14;->lambdaFactory$()Lcom/liquable/future/Function;

    move-result-object v2

    .line 227
    invoke-interface {v0, v1, v2}, Lcom/liquable/future/IFuture;->mapError(Ljava/lang/Class;Lcom/liquable/future/Function;)Lcom/liquable/future/IFuture;

    move-result-object v0

    return-object v0
.end method

.method private getIabHelper()Lcom/liquable/future/IFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/liquable/future/IFuture",
            "<",
            "Lcom/liquable/nemo/iab/IabHelper;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    sget-object v1, Lcom/liquable/nemo/sticker/StickerInAppBilling$3;->$SwitchMap$com$liquable$nemo$sticker$StickerInAppBilling$State:[I

    iget-object v2, p0, Lcom/liquable/nemo/sticker/StickerInAppBilling;->state:Lcom/liquable/nemo/sticker/StickerInAppBilling$State;

    invoke-virtual {v2}, Lcom/liquable/nemo/sticker/StickerInAppBilling$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 104
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "not supported"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/liquable/future/Futures;->error(Ljava/lang/Exception;)Lcom/liquable/future/IFuture;

    move-result-object v1

    :goto_0
    return-object v1

    .line 95
    :pswitch_0
    invoke-static {}, Lcom/liquable/future/Futures;->createCompleter()Lcom/liquable/future/Completer;

    move-result-object v0

    .line 96
    .local v0, "completer":Lcom/liquable/future/Completer;, "Lcom/liquable/future/Completer<Lcom/liquable/nemo/iab/IabHelper;>;"
    iget-object v1, p0, Lcom/liquable/nemo/sticker/StickerInAppBilling;->pendingGetIabHelpers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    invoke-virtual {v0}, Lcom/liquable/future/Completer;->getFuture()Lcom/liquable/future/IFuture;

    move-result-object v1

    goto :goto_0

    .line 99
    .end local v0    # "completer":Lcom/liquable/future/Completer;, "Lcom/liquable/future/Completer<Lcom/liquable/nemo/iab/IabHelper;>;"
    :pswitch_1
    iget-object v1, p0, Lcom/liquable/nemo/sticker/StickerInAppBilling;->helper:Lcom/liquable/nemo/iab/IabHelper;

    invoke-static {v1}, Lcom/liquable/future/Futures;->value(Ljava/lang/Object;)Lcom/liquable/future/IFuture;

    move-result-object v1

    goto :goto_0

    .line 101
    :pswitch_2
    new-instance v1, Lcom/liquable/nemo/sticker/StickerInAppBilling$IabHelperDisposedException;

    invoke-direct {v1}, Lcom/liquable/nemo/sticker/StickerInAppBilling$IabHelperDisposedException;-><init>()V

    invoke-static {v1}, Lcom/liquable/future/Futures;->error(Ljava/lang/Exception;)Lcom/liquable/future/IFuture;

    move-result-object v1

    goto :goto_0

    .line 93
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private insertNotices(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/model/purchase/GooglePlayPurchaseResultDto;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 337
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/model/purchase/GooglePlayPurchaseResultDto;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 338
    .local v3, "purchasedProductIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 339
    .local v5, "purchaseTos":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 341
    .local v4, "purchaseOrderIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/liquable/nemo/model/purchase/GooglePlayPurchaseResultDto;

    .line 342
    .local v7, "purchaseResult":Lcom/liquable/nemo/model/purchase/GooglePlayPurchaseResultDto;
    invoke-virtual {v7}, Lcom/liquable/nemo/model/purchase/GooglePlayPurchaseResultDto;->getResultType()Lcom/liquable/nemo/model/purchase/ResultType;

    move-result-object v1

    sget-object v2, Lcom/liquable/nemo/model/purchase/ResultType;->SUCCESS:Lcom/liquable/nemo/model/purchase/ResultType;

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/model/purchase/ResultType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 343
    invoke-virtual {v7}, Lcom/liquable/nemo/model/purchase/GooglePlayPurchaseResultDto;->getProductId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 344
    invoke-virtual {v7}, Lcom/liquable/nemo/model/purchase/GooglePlayPurchaseResultDto;->getDeveloperPayload()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/liquable/nemo/sticker/StickerInAppBilling;->extractToFieldInPayload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 345
    invoke-virtual {v7}, Lcom/liquable/nemo/model/purchase/GooglePlayPurchaseResultDto;->getOrderId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 349
    .end local v7    # "purchaseResult":Lcom/liquable/nemo/model/purchase/GooglePlayPurchaseResultDto;
    :cond_1
    new-instance v0, Lcom/liquable/nemo/sticker/StickerInAppBilling$2;

    iget-object v2, p0, Lcom/liquable/nemo/sticker/StickerInAppBilling;->applicationContext:Landroid/content/Context;

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/liquable/nemo/sticker/StickerInAppBilling$2;-><init>(Lcom/liquable/nemo/sticker/StickerInAppBilling;Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 409
    invoke-virtual {v0, v1}, Lcom/liquable/nemo/sticker/StickerInAppBilling$2;->execute([Ljava/lang/Object;)V

    .line 410
    return-void
.end method

.method private static synthetic lambda$checkInAppBillingSupport$44(Lcom/liquable/nemo/iab/IabHelper;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "h"    # Lcom/liquable/nemo/iab/IabHelper;

    .prologue
    .line 85
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static synthetic lambda$checkInAppBillingSupport$45(Ljava/lang/Exception;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "e"    # Ljava/lang/Exception;

    .prologue
    .line 85
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$doRpcPurchase$61(ILjava/util/List;Ljava/util/List;Ljava/lang/String;Lcom/liquable/nemo/client/AsyncException;)Lcom/liquable/future/IFuture;
    .locals 4
    .param p5, "e"    # Lcom/liquable/nemo/client/AsyncException;

    .prologue
    .line 324
    const/4 v0, 0x3

    if-lt p1, v0, :cond_0

    .line 325
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->broadcastService:Lcom/liquable/nemo/android/BroadcastManager;

    invoke-virtual {v0, p2, p3}, Lcom/liquable/nemo/android/BroadcastManager;->broadcastStickerPurchaseRpcFailedAfterRetries(Ljava/util/List;Ljava/util/List;)V

    .line 327
    sget-object v0, Lcom/liquable/nemo/sticker/StickerInAppBilling;->debugLogger:Lcom/liquable/nemo/util/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "purchaseStickerViaGooglePlay: give up "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " retries"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 328
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/liquable/future/Futures;->value(Ljava/lang/Object;)Lcom/liquable/future/IFuture;

    move-result-object v0

    .line 331
    :goto_0
    return-object v0

    .line 330
    :cond_0
    int-to-long v0, p1

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    const-wide/16 v2, 0xa

    mul-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/liquable/future/Futures;->delayed(J)Lcom/liquable/future/IFuture;

    move-result-object v0

    invoke-static {p0, p4, p2, p3, p1}, Lcom/liquable/nemo/sticker/StickerInAppBilling$$Lambda$16;->lambdaFactory$(Lcom/liquable/nemo/sticker/StickerInAppBilling;Ljava/lang/String;Ljava/util/List;Ljava/util/List;I)Lcom/liquable/future/FunctionWait;

    move-result-object v1

    .line 331
    invoke-interface {v0, v1}, Lcom/liquable/future/IFuture;->flatMap(Lcom/liquable/future/FunctionWait;)Lcom/liquable/future/IFuture;

    move-result-object v0

    goto :goto_0
.end method

.method private static synthetic lambda$findPurchaseInGooglePlay$57(Lcom/liquable/nemo/iab/IabHelper;)Lcom/liquable/future/IFuture;
    .locals 1
    .param p0, "helper"    # Lcom/liquable/nemo/iab/IabHelper;

    .prologue
    .line 224
    invoke-static {p0}, Lcom/liquable/nemo/sticker/StickerInAppBilling$$Lambda$17;->lambdaFactory$(Lcom/liquable/nemo/iab/IabHelper;)Ljava/util/concurrent/Callable;

    move-result-object v0

    invoke-static {v0}, Lcom/liquable/future/Futures;->async(Ljava/util/concurrent/Callable;)Lcom/liquable/future/IFuture;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$findPurchaseInGooglePlay$58(Lcom/liquable/nemo/model/sticker/StickerItemDto;Lcom/liquable/nemo/iab/Inventory;)Lcom/liquable/nemo/iab/Purchase;
    .locals 1
    .param p1, "inventory"    # Lcom/liquable/nemo/iab/Inventory;

    .prologue
    .line 226
    invoke-virtual {p0}, Lcom/liquable/nemo/model/sticker/StickerItemDto;->getProductId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/liquable/nemo/iab/Inventory;->getPurchase(Ljava/lang/String;)Lcom/liquable/nemo/iab/Purchase;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$findPurchaseInGooglePlay$59(Lcom/liquable/nemo/sticker/StickerInAppBilling$IabHelperDisposedException;)Lcom/liquable/nemo/iab/Purchase;
    .locals 2
    .param p0, "e"    # Lcom/liquable/nemo/sticker/StickerInAppBilling$IabHelperDisposedException;

    .prologue
    .line 228
    sget-object v0, Lcom/liquable/nemo/sticker/StickerInAppBilling;->debugLogger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v1, "iabHelper disposed, return no purchase in google play"

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/Logger;->warn(Ljava/lang/String;)V

    .line 229
    const/4 v0, 0x0

    return-object v0
.end method

.method private synthetic lambda$launchPurchaseFlow$47(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/liquable/nemo/iab/IabHelper;)V
    .locals 6
    .param p5, "helper"    # Lcom/liquable/nemo/iab/IabHelper;

    .prologue
    .line 124
    const/4 v3, 0x0

    invoke-static {p0, p2, p3}, Lcom/liquable/nemo/sticker/StickerInAppBilling$$Lambda$20;->lambdaFactory$(Lcom/liquable/nemo/sticker/StickerInAppBilling;Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/iab/IabHelper$OnIabPurchaseFinishedListener;

    move-result-object v4

    move-object v0, p5

    move-object v1, p1

    move-object v2, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/liquable/nemo/iab/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/liquable/nemo/iab/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    .line 142
    return-void
.end method

.method private static synthetic lambda$launchPurchaseFlow$48(Lcom/liquable/nemo/sticker/StickerInAppBilling$IabHelperDisposedException;)V
    .locals 2
    .param p0, "e"    # Lcom/liquable/nemo/sticker/StickerInAppBilling$IabHelperDisposedException;

    .prologue
    .line 143
    sget-object v0, Lcom/liquable/nemo/sticker/StickerInAppBilling;->debugLogger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v1, "iabHelper disposed, skip launchPurchaseFlow"

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/Logger;->warn(Ljava/lang/String;)V

    .line 144
    return-void
.end method

.method private synthetic lambda$new$43(Lcom/liquable/nemo/iab/IabResult;)V
    .locals 4
    .param p1, "result"    # Lcom/liquable/nemo/iab/IabResult;

    .prologue
    .line 68
    invoke-virtual {p1}, Lcom/liquable/nemo/iab/IabResult;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_0

    .line 69
    sget-object v1, Lcom/liquable/nemo/sticker/StickerInAppBilling$State;->FAIL:Lcom/liquable/nemo/sticker/StickerInAppBilling$State;

    iput-object v1, p0, Lcom/liquable/nemo/sticker/StickerInAppBilling;->state:Lcom/liquable/nemo/sticker/StickerInAppBilling$State;

    .line 70
    iget-object v1, p0, Lcom/liquable/nemo/sticker/StickerInAppBilling;->pendingGetIabHelpers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/future/Completer;

    .line 71
    .local v0, "pendingGetIabHelper":Lcom/liquable/future/Completer;, "Lcom/liquable/future/Completer<Lcom/liquable/nemo/iab/IabHelper;>;"
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "not supported"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/liquable/future/Completer;->completeError(Ljava/lang/Exception;)V

    goto :goto_0

    .line 74
    .end local v0    # "pendingGetIabHelper":Lcom/liquable/future/Completer;, "Lcom/liquable/future/Completer<Lcom/liquable/nemo/iab/IabHelper;>;"
    :cond_0
    sget-object v1, Lcom/liquable/nemo/sticker/StickerInAppBilling$State;->SUCCESS:Lcom/liquable/nemo/sticker/StickerInAppBilling$State;

    iput-object v1, p0, Lcom/liquable/nemo/sticker/StickerInAppBilling;->state:Lcom/liquable/nemo/sticker/StickerInAppBilling$State;

    .line 75
    iget-object v1, p0, Lcom/liquable/nemo/sticker/StickerInAppBilling;->pendingGetIabHelpers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/future/Completer;

    .line 76
    .restart local v0    # "pendingGetIabHelper":Lcom/liquable/future/Completer;, "Lcom/liquable/future/Completer<Lcom/liquable/nemo/iab/IabHelper;>;"
    iget-object v2, p0, Lcom/liquable/nemo/sticker/StickerInAppBilling;->helper:Lcom/liquable/nemo/iab/IabHelper;

    invoke-virtual {v0, v2}, Lcom/liquable/future/Completer;->complete(Ljava/lang/Object;)V

    goto :goto_1

    .line 79
    .end local v0    # "pendingGetIabHelper":Lcom/liquable/future/Completer;, "Lcom/liquable/future/Completer<Lcom/liquable/nemo/iab/IabHelper;>;"
    :cond_1
    iget-object v1, p0, Lcom/liquable/nemo/sticker/StickerInAppBilling;->pendingGetIabHelpers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 80
    return-void
.end method

.method private synthetic lambda$null$46(Ljava/lang/String;Ljava/lang/String;Lcom/liquable/nemo/iab/IabResult;Lcom/liquable/nemo/iab/Purchase;)V
    .locals 6
    .param p3, "result"    # Lcom/liquable/nemo/iab/IabResult;
    .param p4, "info"    # Lcom/liquable/nemo/iab/Purchase;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 125
    invoke-virtual {p3}, Lcom/liquable/nemo/iab/IabResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {p4}, Lcom/liquable/nemo/iab/Purchase;->getOriginalJson()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4}, Lcom/liquable/nemo/iab/Purchase;->getSignature()Ljava/lang/String;

    move-result-object v2

    new-array v0, v4, [Ljava/lang/String;

    aput-object p1, v0, v5

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    new-array v0, v4, [Ljava/lang/String;

    aput-object p2, v0, v5

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/liquable/nemo/sticker/StickerInAppBilling;->doRpcPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;I)Lcom/liquable/future/IFuture;

    .line 141
    :goto_0
    return-void

    .line 128
    :cond_0
    invoke-virtual {p3}, Lcom/liquable/nemo/iab/IabResult;->getResponse()I

    move-result v0

    const/16 v1, -0x3ed

    if-ne v0, v1, :cond_1

    .line 129
    sget-object v0, Lcom/liquable/nemo/sticker/StickerInAppBilling;->debugLogger:Lcom/liquable/nemo/util/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "user cancel google play purchase:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 139
    :goto_1
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->broadcastService:Lcom/liquable/nemo/android/BroadcastManager;

    new-array v1, v4, [Ljava/lang/String;

    aput-object p1, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/String;

    aput-object p2, v2, v5

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/liquable/nemo/android/BroadcastManager;->broadcastStickerPurchaseCanceled(Ljava/util/List;Ljava/util/List;)V

    goto :goto_0

    .line 134
    :cond_1
    sget-object v0, Lcom/liquable/nemo/sticker/StickerInAppBilling;->debugLogger:Lcom/liquable/nemo/util/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "google play purchase failed, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 135
    invoke-virtual {p3}, Lcom/liquable/nemo/iab/IabResult;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", abort:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 134
    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static synthetic lambda$null$49(Lcom/liquable/nemo/iab/IabHelper;)Lcom/liquable/nemo/iab/Inventory;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 150
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/liquable/nemo/iab/IabHelper;->queryInventory(ZLjava/util/List;)Lcom/liquable/nemo/iab/Inventory;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$null$51(Ljava/util/List;)Ljava/lang/Integer;
    .locals 1
    .param p0, "all"    # Ljava/util/List;

    .prologue
    .line 160
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$null$56(Lcom/liquable/nemo/iab/IabHelper;)Lcom/liquable/nemo/iab/Inventory;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 224
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/liquable/nemo/iab/IabHelper;->queryInventory(ZLjava/util/List;)Lcom/liquable/nemo/iab/Inventory;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$null$60(Ljava/lang/String;Ljava/util/List;Ljava/util/List;ILjava/lang/Void;)Lcom/liquable/future/IFuture;
    .locals 6
    .param p5, "n"    # Ljava/lang/Void;

    .prologue
    .line 331
    add-int/lit8 v5, p4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/liquable/nemo/sticker/StickerInAppBilling;->doRpcPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;I)Lcom/liquable/future/IFuture;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$tryRecoverAllPurchaseFromGoogleInventory$50(Lcom/liquable/nemo/iab/IabHelper;)Lcom/liquable/future/IFuture;
    .locals 1
    .param p0, "helper"    # Lcom/liquable/nemo/iab/IabHelper;

    .prologue
    .line 150
    invoke-static {p0}, Lcom/liquable/nemo/sticker/StickerInAppBilling$$Lambda$19;->lambdaFactory$(Lcom/liquable/nemo/iab/IabHelper;)Ljava/util/concurrent/Callable;

    move-result-object v0

    invoke-static {v0}, Lcom/liquable/future/Futures;->async(Ljava/util/concurrent/Callable;)Lcom/liquable/future/IFuture;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$tryRecoverAllPurchaseFromGoogleInventory$52(ILjava/util/List;)Lcom/liquable/future/IFuture;
    .locals 11
    .param p2, "purchases"    # Ljava/util/List;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 152
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 153
    .local v6, "futures":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/future/IFuture<Ljava/lang/Void;>;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/liquable/nemo/iab/Purchase;

    .line 154
    .local v7, "purchase":Lcom/liquable/nemo/iab/Purchase;
    invoke-virtual {v7}, Lcom/liquable/nemo/iab/Purchase;->getOriginalJson()Ljava/lang/String;

    move-result-object v1

    .line 155
    invoke-virtual {v7}, Lcom/liquable/nemo/iab/Purchase;->getSignature()Ljava/lang/String;

    move-result-object v2

    new-array v0, v10, [Ljava/lang/String;

    .line 156
    invoke-virtual {v7}, Lcom/liquable/nemo/iab/Purchase;->getSku()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v9

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    new-array v0, v10, [Ljava/lang/String;

    .line 157
    invoke-virtual {v7}, Lcom/liquable/nemo/iab/Purchase;->getDeveloperPayload()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/liquable/nemo/sticker/StickerInAppBilling;->extractToFieldInPayload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v9

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    move-object v0, p0

    move v5, p1

    .line 154
    invoke-direct/range {v0 .. v5}, Lcom/liquable/nemo/sticker/StickerInAppBilling;->doRpcPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;I)Lcom/liquable/future/IFuture;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 160
    .end local v7    # "purchase":Lcom/liquable/nemo/iab/Purchase;
    :cond_0
    new-array v0, v9, [Lcom/liquable/future/IFuture;

    invoke-interface {v6, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/liquable/future/IFuture;

    invoke-static {v0}, Lcom/liquable/future/Futures;->wait([Lcom/liquable/future/IFuture;)Lcom/liquable/future/IFuture;

    move-result-object v0

    invoke-static {}, Lcom/liquable/nemo/sticker/StickerInAppBilling$$Lambda$18;->lambdaFactory$()Lcom/liquable/future/Function;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/liquable/future/IFuture;->map(Lcom/liquable/future/Function;)Lcom/liquable/future/IFuture;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$tryRecoverAllPurchaseFromGoogleInventory$53(Lcom/liquable/nemo/sticker/StickerInAppBilling$IabHelperDisposedException;)V
    .locals 2
    .param p0, "e"    # Lcom/liquable/nemo/sticker/StickerInAppBilling$IabHelperDisposedException;

    .prologue
    .line 162
    sget-object v0, Lcom/liquable/nemo/sticker/StickerInAppBilling;->debugLogger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v1, "iabHelper disposed, return no purchase in google play"

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/Logger;->warn(Ljava/lang/String;)V

    .line 163
    return-void
.end method

.method private synthetic lambda$tryRecoverPurchasedStickerItem$54(Lcom/liquable/nemo/model/sticker/StickerItemDto;Lcom/liquable/nemo/iab/Purchase;)Lcom/liquable/future/IFuture;
    .locals 6
    .param p2, "purchase"    # Lcom/liquable/nemo/iab/Purchase;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 174
    if-nez p2, :cond_0

    .line 175
    sget-object v0, Lcom/liquable/nemo/sticker/StickerInAppBilling;->debugLogger:Lcom/liquable/nemo/util/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "no purchase "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 176
    invoke-virtual {p1}, Lcom/liquable/nemo/model/sticker/StickerItemDto;->getProductId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " in google play, skip recovery"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 175
    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 178
    invoke-static {v3}, Lcom/liquable/future/Futures;->value(Ljava/lang/Object;)Lcom/liquable/future/IFuture;

    move-result-object v0

    .line 211
    :goto_0
    return-object v0

    .line 187
    :cond_0
    invoke-virtual {p2}, Lcom/liquable/nemo/iab/Purchase;->getPurchaseState()I

    move-result v0

    if-eqz v0, :cond_1

    .line 195
    sget-object v0, Lcom/liquable/nemo/sticker/StickerInAppBilling;->debugLogger:Lcom/liquable/nemo/util/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "google purchase state for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 196
    invoke-virtual {p1}, Lcom/liquable/nemo/model/sticker/StickerItemDto;->getProductId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not purchase, skip recovery. actual state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 198
    invoke-virtual {p2}, Lcom/liquable/nemo/iab/Purchase;->getPurchaseState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 195
    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/Logger;->warn(Ljava/lang/String;)V

    .line 199
    invoke-static {v3}, Lcom/liquable/future/Futures;->value(Ljava/lang/Object;)Lcom/liquable/future/IFuture;

    move-result-object v0

    goto :goto_0

    .line 202
    :cond_1
    invoke-virtual {p1}, Lcom/liquable/nemo/model/sticker/StickerItemDto;->isPurchased()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 203
    sget-object v0, Lcom/liquable/nemo/sticker/StickerInAppBilling;->debugLogger:Lcom/liquable/nemo/util/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "purchase state consistent between google play and nemo server. no recovery required:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 205
    invoke-virtual {p1}, Lcom/liquable/nemo/model/sticker/StickerItemDto;->getProductId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 203
    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 206
    invoke-static {v3}, Lcom/liquable/future/Futures;->value(Ljava/lang/Object;)Lcom/liquable/future/IFuture;

    move-result-object v0

    goto :goto_0

    .line 208
    :cond_2
    sget-object v0, Lcom/liquable/nemo/sticker/StickerInAppBilling;->debugLogger:Lcom/liquable/nemo/util/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "lost purchase detected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 209
    invoke-virtual {p1}, Lcom/liquable/nemo/model/sticker/StickerItemDto;->getProductId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " in google play, starting recovery in nemo server"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 208
    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/Logger;->info(Ljava/lang/String;)V

    .line 211
    invoke-virtual {p2}, Lcom/liquable/nemo/iab/Purchase;->getOriginalJson()Ljava/lang/String;

    move-result-object v1

    .line 212
    invoke-virtual {p2}, Lcom/liquable/nemo/iab/Purchase;->getSignature()Ljava/lang/String;

    move-result-object v2

    new-array v0, v4, [Ljava/lang/String;

    .line 213
    invoke-virtual {p2}, Lcom/liquable/nemo/iab/Purchase;->getSku()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v5

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    new-array v0, v4, [Ljava/lang/String;

    .line 214
    invoke-virtual {p2}, Lcom/liquable/nemo/iab/Purchase;->getDeveloperPayload()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/liquable/nemo/sticker/StickerInAppBilling;->extractToFieldInPayload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v5

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    move-object v0, p0

    .line 211
    invoke-direct/range {v0 .. v5}, Lcom/liquable/nemo/sticker/StickerInAppBilling;->doRpcPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;I)Lcom/liquable/future/IFuture;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private static synthetic lambda$tryRecoverPurchasedStickerItem$55(Ljava/lang/Exception;)V
    .locals 2
    .param p0, "e"    # Ljava/lang/Exception;

    .prologue
    .line 218
    sget-object v0, Lcom/liquable/nemo/sticker/StickerInAppBilling;->debugLogger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v1, "Could not reach google play v3 for recovery, abort"

    invoke-virtual {v0, v1, p0}, Lcom/liquable/nemo/util/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 219
    return-void
.end method


# virtual methods
.method public checkInAppBillingSupport()Lcom/liquable/future/IFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/liquable/future/IFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/liquable/nemo/sticker/StickerInAppBilling;->getIabHelper()Lcom/liquable/future/IFuture;

    move-result-object v0

    invoke-static {}, Lcom/liquable/nemo/sticker/StickerInAppBilling$$Lambda$2;->lambdaFactory$()Lcom/liquable/future/Function;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/liquable/future/IFuture;->map(Lcom/liquable/future/Function;)Lcom/liquable/future/IFuture;

    move-result-object v0

    const-class v1, Ljava/lang/Exception;

    invoke-static {}, Lcom/liquable/nemo/sticker/StickerInAppBilling$$Lambda$3;->lambdaFactory$()Lcom/liquable/future/Function;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/liquable/future/IFuture;->mapError(Ljava/lang/Class;Lcom/liquable/future/Function;)Lcom/liquable/future/IFuture;

    move-result-object v0

    return-object v0
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 413
    iget-object v0, p0, Lcom/liquable/nemo/sticker/StickerInAppBilling;->pendingGetIabHelpers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 414
    iget-object v0, p0, Lcom/liquable/nemo/sticker/StickerInAppBilling;->state:Lcom/liquable/nemo/sticker/StickerInAppBilling$State;

    sget-object v1, Lcom/liquable/nemo/sticker/StickerInAppBilling$State;->DISPOSED:Lcom/liquable/nemo/sticker/StickerInAppBilling$State;

    if-ne v0, v1, :cond_0

    .line 419
    :goto_0
    return-void

    .line 417
    :cond_0
    sget-object v0, Lcom/liquable/nemo/sticker/StickerInAppBilling$State;->DISPOSED:Lcom/liquable/nemo/sticker/StickerInAppBilling$State;

    iput-object v0, p0, Lcom/liquable/nemo/sticker/StickerInAppBilling;->state:Lcom/liquable/nemo/sticker/StickerInAppBilling$State;

    .line 418
    iget-object v0, p0, Lcom/liquable/nemo/sticker/StickerInAppBilling;->helper:Lcom/liquable/nemo/iab/IabHelper;

    invoke-virtual {v0}, Lcom/liquable/nemo/iab/IabHelper;->dispose()V

    goto :goto_0
.end method

.method public handleActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 422
    iget-object v0, p0, Lcom/liquable/nemo/sticker/StickerInAppBilling;->state:Lcom/liquable/nemo/sticker/StickerInAppBilling$State;

    sget-object v1, Lcom/liquable/nemo/sticker/StickerInAppBilling$State;->SUCCESS:Lcom/liquable/nemo/sticker/StickerInAppBilling$State;

    if-ne v0, v1, :cond_0

    .line 423
    iget-object v0, p0, Lcom/liquable/nemo/sticker/StickerInAppBilling;->helper:Lcom/liquable/nemo/iab/IabHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/liquable/nemo/iab/IabHelper;->handleActivityResult(IILandroid/content/Intent;)Z

    .line 425
    :cond_0
    return-void
.end method

.method public launchPurchaseFlow(Landroid/app/Activity;Lcom/liquable/nemo/model/sticker/StickerItemDto;)Lcom/liquable/future/IFuture;
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "item"    # Lcom/liquable/nemo/model/sticker/StickerItemDto;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/liquable/nemo/model/sticker/StickerItemDto;",
            ")",
            "Lcom/liquable/future/IFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 117
    sget-object v4, Lcom/liquable/nemo/NemoManagers;->purchaseManager:Lcom/liquable/nemo/purchase/model/PurchaseManager;

    .line 118
    invoke-virtual {p2}, Lcom/liquable/nemo/model/sticker/StickerItemDto;->getProductId()Ljava/lang/String;

    move-result-object v5

    .line 117
    invoke-virtual {v4, v5}, Lcom/liquable/nemo/purchase/model/PurchaseManager;->startPurchasingViaGooglePlay(Ljava/lang/String;)Lcom/liquable/nemo/model/purchase/DeveloperPayload;

    move-result-object v0

    .line 119
    .local v0, "developerPayload":Lcom/liquable/nemo/model/purchase/DeveloperPayload;
    invoke-virtual {p2}, Lcom/liquable/nemo/model/sticker/StickerItemDto;->getProductId()Ljava/lang/String;

    move-result-object v2

    .line 120
    .local v2, "sku":Ljava/lang/String;
    invoke-static {}, Lcom/liquable/nemo/json/SimpleJsonMapper;->getInstance()Lcom/liquable/nemo/json/SimpleJsonMapper;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/liquable/nemo/json/SimpleJsonMapper;->encode(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 121
    .local v1, "payload":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/liquable/nemo/model/purchase/DeveloperPayload;->getReceiverUid()Ljava/lang/String;

    move-result-object v3

    .line 123
    .local v3, "to":Ljava/lang/String;
    invoke-direct {p0}, Lcom/liquable/nemo/sticker/StickerInAppBilling;->getIabHelper()Lcom/liquable/future/IFuture;

    move-result-object v4

    invoke-static {p0, p1, v2, v3, v1}, Lcom/liquable/nemo/sticker/StickerInAppBilling$$Lambda$4;->lambdaFactory$(Lcom/liquable/nemo/sticker/StickerInAppBilling;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/future/Consumer;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/liquable/future/IFuture;->consume(Lcom/liquable/future/Consumer;)Lcom/liquable/future/IFuture;

    move-result-object v4

    const-class v5, Lcom/liquable/nemo/sticker/StickerInAppBilling$IabHelperDisposedException;

    invoke-static {}, Lcom/liquable/nemo/sticker/StickerInAppBilling$$Lambda$5;->lambdaFactory$()Lcom/liquable/future/Consumer;

    move-result-object v6

    .line 142
    invoke-interface {v4, v5, v6}, Lcom/liquable/future/IFuture;->consumeError(Ljava/lang/Class;Lcom/liquable/future/Consumer;)Lcom/liquable/future/IFuture;

    move-result-object v4

    return-object v4
.end method

.method public tryRecoverAllPurchaseFromGoogleInventory()Lcom/liquable/future/IFuture;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/liquable/future/IFuture",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 148
    const/4 v0, 0x2

    .line 149
    .local v0, "retryOnce":I
    invoke-direct {p0}, Lcom/liquable/nemo/sticker/StickerInAppBilling;->getIabHelper()Lcom/liquable/future/IFuture;

    move-result-object v1

    invoke-static {}, Lcom/liquable/nemo/sticker/StickerInAppBilling$$Lambda$6;->lambdaFactory$()Lcom/liquable/future/FunctionWait;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/liquable/future/IFuture;->flatMap(Lcom/liquable/future/FunctionWait;)Lcom/liquable/future/IFuture;

    move-result-object v1

    invoke-static {}, Lcom/liquable/nemo/sticker/StickerInAppBilling$$Lambda$7;->lambdaFactory$()Lcom/liquable/future/Function;

    move-result-object v2

    .line 151
    invoke-interface {v1, v2}, Lcom/liquable/future/IFuture;->map(Lcom/liquable/future/Function;)Lcom/liquable/future/IFuture;

    move-result-object v1

    invoke-static {p0, v0}, Lcom/liquable/nemo/sticker/StickerInAppBilling$$Lambda$8;->lambdaFactory$(Lcom/liquable/nemo/sticker/StickerInAppBilling;I)Lcom/liquable/future/FunctionWait;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/liquable/future/IFuture;->flatMap(Lcom/liquable/future/FunctionWait;)Lcom/liquable/future/IFuture;

    move-result-object v1

    const-class v2, Lcom/liquable/nemo/sticker/StickerInAppBilling$IabHelperDisposedException;

    invoke-static {}, Lcom/liquable/nemo/sticker/StickerInAppBilling$$Lambda$9;->lambdaFactory$()Lcom/liquable/future/Consumer;

    move-result-object v3

    .line 161
    invoke-interface {v1, v2, v3}, Lcom/liquable/future/IFuture;->consumeError(Ljava/lang/Class;Lcom/liquable/future/Consumer;)Lcom/liquable/future/IFuture;

    move-result-object v1

    return-object v1
.end method

.method public tryRecoverPurchasedStickerItem(Lcom/liquable/nemo/model/sticker/StickerItemDto;)V
    .locals 3
    .param p1, "itemDto"    # Lcom/liquable/nemo/model/sticker/StickerItemDto;

    .prologue
    .line 167
    invoke-virtual {p1}, Lcom/liquable/nemo/model/sticker/StickerItemDto;->isCanBuy()Z

    move-result v0

    if-nez v0, :cond_1

    .line 220
    :cond_0
    :goto_0
    return-void

    .line 170
    :cond_1
    invoke-virtual {p1}, Lcom/liquable/nemo/model/sticker/StickerItemDto;->getProductId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 173
    invoke-direct {p0, p1}, Lcom/liquable/nemo/sticker/StickerInAppBilling;->findPurchaseInGooglePlay(Lcom/liquable/nemo/model/sticker/StickerItemDto;)Lcom/liquable/future/IFuture;

    move-result-object v0

    invoke-static {p0, p1}, Lcom/liquable/nemo/sticker/StickerInAppBilling$$Lambda$10;->lambdaFactory$(Lcom/liquable/nemo/sticker/StickerInAppBilling;Lcom/liquable/nemo/model/sticker/StickerItemDto;)Lcom/liquable/future/FunctionWait;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/liquable/future/IFuture;->flatMap(Lcom/liquable/future/FunctionWait;)Lcom/liquable/future/IFuture;

    move-result-object v0

    const-class v1, Ljava/lang/Exception;

    invoke-static {}, Lcom/liquable/nemo/sticker/StickerInAppBilling$$Lambda$11;->lambdaFactory$()Lcom/liquable/future/Consumer;

    move-result-object v2

    .line 217
    invoke-interface {v0, v1, v2}, Lcom/liquable/future/IFuture;->consumeError(Ljava/lang/Class;Lcom/liquable/future/Consumer;)Lcom/liquable/future/IFuture;

    goto :goto_0
.end method
