.class final synthetic Lcom/liquable/nemo/sticker/StickerInAppBilling$$Lambda$10;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/liquable/future/FunctionWait;


# instance fields
.field private final arg$1:Lcom/liquable/nemo/sticker/StickerInAppBilling;

.field private final arg$2:Lcom/liquable/nemo/model/sticker/StickerItemDto;


# direct methods
.method private constructor <init>(Lcom/liquable/nemo/sticker/StickerInAppBilling;Lcom/liquable/nemo/model/sticker/StickerItemDto;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/liquable/nemo/sticker/StickerInAppBilling$$Lambda$10;->arg$1:Lcom/liquable/nemo/sticker/StickerInAppBilling;

    iput-object p2, p0, Lcom/liquable/nemo/sticker/StickerInAppBilling$$Lambda$10;->arg$2:Lcom/liquable/nemo/model/sticker/StickerItemDto;

    return-void
.end method

.method private static get$Lambda(Lcom/liquable/nemo/sticker/StickerInAppBilling;Lcom/liquable/nemo/model/sticker/StickerItemDto;)Lcom/liquable/future/FunctionWait;
    .locals 1

    new-instance v0, Lcom/liquable/nemo/sticker/StickerInAppBilling$$Lambda$10;

    invoke-direct {v0, p0, p1}, Lcom/liquable/nemo/sticker/StickerInAppBilling$$Lambda$10;-><init>(Lcom/liquable/nemo/sticker/StickerInAppBilling;Lcom/liquable/nemo/model/sticker/StickerItemDto;)V

    return-object v0
.end method

.method public static lambdaFactory$(Lcom/liquable/nemo/sticker/StickerInAppBilling;Lcom/liquable/nemo/model/sticker/StickerItemDto;)Lcom/liquable/future/FunctionWait;
    .locals 1

    new-instance v0, Lcom/liquable/nemo/sticker/StickerInAppBilling$$Lambda$10;

    invoke-direct {v0, p0, p1}, Lcom/liquable/nemo/sticker/StickerInAppBilling$$Lambda$10;-><init>(Lcom/liquable/nemo/sticker/StickerInAppBilling;Lcom/liquable/nemo/model/sticker/StickerItemDto;)V

    return-object v0
.end method


# virtual methods
.method public run(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/liquable/nemo/sticker/StickerInAppBilling$$Lambda$10;->arg$1:Lcom/liquable/nemo/sticker/StickerInAppBilling;

    iget-object v1, p0, Lcom/liquable/nemo/sticker/StickerInAppBilling$$Lambda$10;->arg$2:Lcom/liquable/nemo/model/sticker/StickerItemDto;

    check-cast p1, Lcom/liquable/nemo/iab/Purchase;

    # invokes: Lcom/liquable/nemo/sticker/StickerInAppBilling;->lambda$tryRecoverPurchasedStickerItem$54(Lcom/liquable/nemo/model/sticker/StickerItemDto;Lcom/liquable/nemo/iab/Purchase;)Lcom/liquable/future/IFuture;
    invoke-static {v0, v1, p1}, Lcom/liquable/nemo/sticker/StickerInAppBilling;->access$lambda$8(Lcom/liquable/nemo/sticker/StickerInAppBilling;Lcom/liquable/nemo/model/sticker/StickerItemDto;Lcom/liquable/nemo/iab/Purchase;)Lcom/liquable/future/IFuture;

    move-result-object v0

    return-object v0
.end method
