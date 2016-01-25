.class final synthetic Lcom/liquable/nemo/sticker/StickerInAppBilling$$Lambda$8;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/liquable/future/FunctionWait;


# instance fields
.field private final arg$1:Lcom/liquable/nemo/sticker/StickerInAppBilling;

.field private final arg$2:I


# direct methods
.method private constructor <init>(Lcom/liquable/nemo/sticker/StickerInAppBilling;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/liquable/nemo/sticker/StickerInAppBilling$$Lambda$8;->arg$1:Lcom/liquable/nemo/sticker/StickerInAppBilling;

    iput p2, p0, Lcom/liquable/nemo/sticker/StickerInAppBilling$$Lambda$8;->arg$2:I

    return-void
.end method

.method private static get$Lambda(Lcom/liquable/nemo/sticker/StickerInAppBilling;I)Lcom/liquable/future/FunctionWait;
    .locals 1

    new-instance v0, Lcom/liquable/nemo/sticker/StickerInAppBilling$$Lambda$8;

    invoke-direct {v0, p0, p1}, Lcom/liquable/nemo/sticker/StickerInAppBilling$$Lambda$8;-><init>(Lcom/liquable/nemo/sticker/StickerInAppBilling;I)V

    return-object v0
.end method

.method public static lambdaFactory$(Lcom/liquable/nemo/sticker/StickerInAppBilling;I)Lcom/liquable/future/FunctionWait;
    .locals 1

    new-instance v0, Lcom/liquable/nemo/sticker/StickerInAppBilling$$Lambda$8;

    invoke-direct {v0, p0, p1}, Lcom/liquable/nemo/sticker/StickerInAppBilling$$Lambda$8;-><init>(Lcom/liquable/nemo/sticker/StickerInAppBilling;I)V

    return-object v0
.end method


# virtual methods
.method public run(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/liquable/nemo/sticker/StickerInAppBilling$$Lambda$8;->arg$1:Lcom/liquable/nemo/sticker/StickerInAppBilling;

    iget v1, p0, Lcom/liquable/nemo/sticker/StickerInAppBilling$$Lambda$8;->arg$2:I

    check-cast p1, Ljava/util/List;

    # invokes: Lcom/liquable/nemo/sticker/StickerInAppBilling;->lambda$tryRecoverAllPurchaseFromGoogleInventory$52(ILjava/util/List;)Lcom/liquable/future/IFuture;
    invoke-static {v0, v1, p1}, Lcom/liquable/nemo/sticker/StickerInAppBilling;->access$lambda$6(Lcom/liquable/nemo/sticker/StickerInAppBilling;ILjava/util/List;)Lcom/liquable/future/IFuture;

    move-result-object v0

    return-object v0
.end method
