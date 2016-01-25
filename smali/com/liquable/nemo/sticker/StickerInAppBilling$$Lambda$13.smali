.class final synthetic Lcom/liquable/nemo/sticker/StickerInAppBilling$$Lambda$13;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/liquable/future/Function;


# instance fields
.field private final arg$1:Lcom/liquable/nemo/model/sticker/StickerItemDto;


# direct methods
.method private constructor <init>(Lcom/liquable/nemo/model/sticker/StickerItemDto;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/liquable/nemo/sticker/StickerInAppBilling$$Lambda$13;->arg$1:Lcom/liquable/nemo/model/sticker/StickerItemDto;

    return-void
.end method

.method private static get$Lambda(Lcom/liquable/nemo/model/sticker/StickerItemDto;)Lcom/liquable/future/Function;
    .locals 1

    new-instance v0, Lcom/liquable/nemo/sticker/StickerInAppBilling$$Lambda$13;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/sticker/StickerInAppBilling$$Lambda$13;-><init>(Lcom/liquable/nemo/model/sticker/StickerItemDto;)V

    return-object v0
.end method

.method public static lambdaFactory$(Lcom/liquable/nemo/model/sticker/StickerItemDto;)Lcom/liquable/future/Function;
    .locals 1

    new-instance v0, Lcom/liquable/nemo/sticker/StickerInAppBilling$$Lambda$13;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/sticker/StickerInAppBilling$$Lambda$13;-><init>(Lcom/liquable/nemo/model/sticker/StickerItemDto;)V

    return-object v0
.end method


# virtual methods
.method public run(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/liquable/nemo/sticker/StickerInAppBilling$$Lambda$13;->arg$1:Lcom/liquable/nemo/model/sticker/StickerItemDto;

    check-cast p1, Lcom/liquable/nemo/iab/Inventory;

    # invokes: Lcom/liquable/nemo/sticker/StickerInAppBilling;->lambda$findPurchaseInGooglePlay$58(Lcom/liquable/nemo/model/sticker/StickerItemDto;Lcom/liquable/nemo/iab/Inventory;)Lcom/liquable/nemo/iab/Purchase;
    invoke-static {v0, p1}, Lcom/liquable/nemo/sticker/StickerInAppBilling;->access$lambda$11(Lcom/liquable/nemo/model/sticker/StickerItemDto;Lcom/liquable/nemo/iab/Inventory;)Lcom/liquable/nemo/iab/Purchase;

    move-result-object v0

    return-object v0
.end method
