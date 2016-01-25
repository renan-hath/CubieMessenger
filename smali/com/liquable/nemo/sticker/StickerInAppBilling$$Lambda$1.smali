.class final synthetic Lcom/liquable/nemo/sticker/StickerInAppBilling$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/liquable/nemo/iab/IabHelper$OnIabSetupFinishedListener;


# instance fields
.field private final arg$1:Lcom/liquable/nemo/sticker/StickerInAppBilling;


# direct methods
.method private constructor <init>(Lcom/liquable/nemo/sticker/StickerInAppBilling;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/liquable/nemo/sticker/StickerInAppBilling$$Lambda$1;->arg$1:Lcom/liquable/nemo/sticker/StickerInAppBilling;

    return-void
.end method

.method private static get$Lambda(Lcom/liquable/nemo/sticker/StickerInAppBilling;)Lcom/liquable/nemo/iab/IabHelper$OnIabSetupFinishedListener;
    .locals 1

    new-instance v0, Lcom/liquable/nemo/sticker/StickerInAppBilling$$Lambda$1;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/sticker/StickerInAppBilling$$Lambda$1;-><init>(Lcom/liquable/nemo/sticker/StickerInAppBilling;)V

    return-object v0
.end method

.method public static lambdaFactory$(Lcom/liquable/nemo/sticker/StickerInAppBilling;)Lcom/liquable/nemo/iab/IabHelper$OnIabSetupFinishedListener;
    .locals 1

    new-instance v0, Lcom/liquable/nemo/sticker/StickerInAppBilling$$Lambda$1;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/sticker/StickerInAppBilling$$Lambda$1;-><init>(Lcom/liquable/nemo/sticker/StickerInAppBilling;)V

    return-object v0
.end method


# virtual methods
.method public onIabSetupFinished(Lcom/liquable/nemo/iab/IabResult;)V
    .locals 1

    iget-object v0, p0, Lcom/liquable/nemo/sticker/StickerInAppBilling$$Lambda$1;->arg$1:Lcom/liquable/nemo/sticker/StickerInAppBilling;

    # invokes: Lcom/liquable/nemo/sticker/StickerInAppBilling;->lambda$new$43(Lcom/liquable/nemo/iab/IabResult;)V
    invoke-static {v0, p1}, Lcom/liquable/nemo/sticker/StickerInAppBilling;->access$lambda$0(Lcom/liquable/nemo/sticker/StickerInAppBilling;Lcom/liquable/nemo/iab/IabResult;)V

    return-void
.end method
