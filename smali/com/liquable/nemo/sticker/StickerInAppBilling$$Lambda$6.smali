.class final synthetic Lcom/liquable/nemo/sticker/StickerInAppBilling$$Lambda$6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/liquable/future/FunctionWait;


# static fields
.field private static final instance:Lcom/liquable/nemo/sticker/StickerInAppBilling$$Lambda$6;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/liquable/nemo/sticker/StickerInAppBilling$$Lambda$6;

    invoke-direct {v0}, Lcom/liquable/nemo/sticker/StickerInAppBilling$$Lambda$6;-><init>()V

    sput-object v0, Lcom/liquable/nemo/sticker/StickerInAppBilling$$Lambda$6;->instance:Lcom/liquable/nemo/sticker/StickerInAppBilling$$Lambda$6;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Lcom/liquable/future/FunctionWait;
    .locals 1

    sget-object v0, Lcom/liquable/nemo/sticker/StickerInAppBilling$$Lambda$6;->instance:Lcom/liquable/nemo/sticker/StickerInAppBilling$$Lambda$6;

    return-object v0
.end method


# virtual methods
.method public run(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/liquable/nemo/iab/IabHelper;

    # invokes: Lcom/liquable/nemo/sticker/StickerInAppBilling;->lambda$tryRecoverAllPurchaseFromGoogleInventory$50(Lcom/liquable/nemo/iab/IabHelper;)Lcom/liquable/future/IFuture;
    invoke-static {p1}, Lcom/liquable/nemo/sticker/StickerInAppBilling;->access$lambda$5(Lcom/liquable/nemo/iab/IabHelper;)Lcom/liquable/future/IFuture;

    move-result-object v0

    return-object v0
.end method
