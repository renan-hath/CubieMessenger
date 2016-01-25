.class final synthetic Lcom/liquable/nemo/sticker/StickerInAppBilling$$Lambda$20;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/liquable/nemo/iab/IabHelper$OnIabPurchaseFinishedListener;


# instance fields
.field private final arg$1:Lcom/liquable/nemo/sticker/StickerInAppBilling;

.field private final arg$2:Ljava/lang/String;

.field private final arg$3:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/liquable/nemo/sticker/StickerInAppBilling;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/liquable/nemo/sticker/StickerInAppBilling$$Lambda$20;->arg$1:Lcom/liquable/nemo/sticker/StickerInAppBilling;

    iput-object p2, p0, Lcom/liquable/nemo/sticker/StickerInAppBilling$$Lambda$20;->arg$2:Ljava/lang/String;

    iput-object p3, p0, Lcom/liquable/nemo/sticker/StickerInAppBilling$$Lambda$20;->arg$3:Ljava/lang/String;

    return-void
.end method

.method private static get$Lambda(Lcom/liquable/nemo/sticker/StickerInAppBilling;Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/iab/IabHelper$OnIabPurchaseFinishedListener;
    .locals 1

    new-instance v0, Lcom/liquable/nemo/sticker/StickerInAppBilling$$Lambda$20;

    invoke-direct {v0, p0, p1, p2}, Lcom/liquable/nemo/sticker/StickerInAppBilling$$Lambda$20;-><init>(Lcom/liquable/nemo/sticker/StickerInAppBilling;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static lambdaFactory$(Lcom/liquable/nemo/sticker/StickerInAppBilling;Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/iab/IabHelper$OnIabPurchaseFinishedListener;
    .locals 1

    new-instance v0, Lcom/liquable/nemo/sticker/StickerInAppBilling$$Lambda$20;

    invoke-direct {v0, p0, p1, p2}, Lcom/liquable/nemo/sticker/StickerInAppBilling$$Lambda$20;-><init>(Lcom/liquable/nemo/sticker/StickerInAppBilling;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public onIabPurchaseFinished(Lcom/liquable/nemo/iab/IabResult;Lcom/liquable/nemo/iab/Purchase;)V
    .locals 3

    iget-object v0, p0, Lcom/liquable/nemo/sticker/StickerInAppBilling$$Lambda$20;->arg$1:Lcom/liquable/nemo/sticker/StickerInAppBilling;

    iget-object v1, p0, Lcom/liquable/nemo/sticker/StickerInAppBilling$$Lambda$20;->arg$2:Ljava/lang/String;

    iget-object v2, p0, Lcom/liquable/nemo/sticker/StickerInAppBilling$$Lambda$20;->arg$3:Ljava/lang/String;

    # invokes: Lcom/liquable/nemo/sticker/StickerInAppBilling;->lambda$null$46(Ljava/lang/String;Ljava/lang/String;Lcom/liquable/nemo/iab/IabResult;Lcom/liquable/nemo/iab/Purchase;)V
    invoke-static {v0, v1, v2, p1, p2}, Lcom/liquable/nemo/sticker/StickerInAppBilling;->access$lambda$18(Lcom/liquable/nemo/sticker/StickerInAppBilling;Ljava/lang/String;Ljava/lang/String;Lcom/liquable/nemo/iab/IabResult;Lcom/liquable/nemo/iab/Purchase;)V

    return-void
.end method
