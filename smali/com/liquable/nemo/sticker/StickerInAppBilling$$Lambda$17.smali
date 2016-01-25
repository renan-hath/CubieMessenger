.class final synthetic Lcom/liquable/nemo/sticker/StickerInAppBilling$$Lambda$17;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final arg$1:Lcom/liquable/nemo/iab/IabHelper;


# direct methods
.method private constructor <init>(Lcom/liquable/nemo/iab/IabHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/liquable/nemo/sticker/StickerInAppBilling$$Lambda$17;->arg$1:Lcom/liquable/nemo/iab/IabHelper;

    return-void
.end method

.method private static get$Lambda(Lcom/liquable/nemo/iab/IabHelper;)Ljava/util/concurrent/Callable;
    .locals 1

    new-instance v0, Lcom/liquable/nemo/sticker/StickerInAppBilling$$Lambda$17;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/sticker/StickerInAppBilling$$Lambda$17;-><init>(Lcom/liquable/nemo/iab/IabHelper;)V

    return-object v0
.end method

.method public static lambdaFactory$(Lcom/liquable/nemo/iab/IabHelper;)Ljava/util/concurrent/Callable;
    .locals 1

    new-instance v0, Lcom/liquable/nemo/sticker/StickerInAppBilling$$Lambda$17;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/sticker/StickerInAppBilling$$Lambda$17;-><init>(Lcom/liquable/nemo/iab/IabHelper;)V

    return-object v0
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/liquable/nemo/sticker/StickerInAppBilling$$Lambda$17;->arg$1:Lcom/liquable/nemo/iab/IabHelper;

    # invokes: Lcom/liquable/nemo/sticker/StickerInAppBilling;->lambda$null$56(Lcom/liquable/nemo/iab/IabHelper;)Lcom/liquable/nemo/iab/Inventory;
    invoke-static {v0}, Lcom/liquable/nemo/sticker/StickerInAppBilling;->access$lambda$15(Lcom/liquable/nemo/iab/IabHelper;)Lcom/liquable/nemo/iab/Inventory;

    move-result-object v0

    return-object v0
.end method
