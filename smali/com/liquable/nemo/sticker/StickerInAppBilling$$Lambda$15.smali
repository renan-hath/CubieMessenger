.class final synthetic Lcom/liquable/nemo/sticker/StickerInAppBilling$$Lambda$15;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/liquable/future/FunctionWait;


# instance fields
.field private final arg$1:Lcom/liquable/nemo/sticker/StickerInAppBilling;

.field private final arg$2:I

.field private final arg$3:Ljava/util/List;

.field private final arg$4:Ljava/util/List;

.field private final arg$5:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/liquable/nemo/sticker/StickerInAppBilling;ILjava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/liquable/nemo/sticker/StickerInAppBilling$$Lambda$15;->arg$1:Lcom/liquable/nemo/sticker/StickerInAppBilling;

    iput p2, p0, Lcom/liquable/nemo/sticker/StickerInAppBilling$$Lambda$15;->arg$2:I

    iput-object p3, p0, Lcom/liquable/nemo/sticker/StickerInAppBilling$$Lambda$15;->arg$3:Ljava/util/List;

    iput-object p4, p0, Lcom/liquable/nemo/sticker/StickerInAppBilling$$Lambda$15;->arg$4:Ljava/util/List;

    iput-object p5, p0, Lcom/liquable/nemo/sticker/StickerInAppBilling$$Lambda$15;->arg$5:Ljava/lang/String;

    return-void
.end method

.method private static get$Lambda(Lcom/liquable/nemo/sticker/StickerInAppBilling;ILjava/util/List;Ljava/util/List;Ljava/lang/String;)Lcom/liquable/future/FunctionWait;
    .locals 6

    new-instance v0, Lcom/liquable/nemo/sticker/StickerInAppBilling$$Lambda$15;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/liquable/nemo/sticker/StickerInAppBilling$$Lambda$15;-><init>(Lcom/liquable/nemo/sticker/StickerInAppBilling;ILjava/util/List;Ljava/util/List;Ljava/lang/String;)V

    return-object v0
.end method

.method public static lambdaFactory$(Lcom/liquable/nemo/sticker/StickerInAppBilling;ILjava/util/List;Ljava/util/List;Ljava/lang/String;)Lcom/liquable/future/FunctionWait;
    .locals 6

    new-instance v0, Lcom/liquable/nemo/sticker/StickerInAppBilling$$Lambda$15;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/liquable/nemo/sticker/StickerInAppBilling$$Lambda$15;-><init>(Lcom/liquable/nemo/sticker/StickerInAppBilling;ILjava/util/List;Ljava/util/List;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public run(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/liquable/nemo/sticker/StickerInAppBilling$$Lambda$15;->arg$1:Lcom/liquable/nemo/sticker/StickerInAppBilling;

    iget v1, p0, Lcom/liquable/nemo/sticker/StickerInAppBilling$$Lambda$15;->arg$2:I

    iget-object v2, p0, Lcom/liquable/nemo/sticker/StickerInAppBilling$$Lambda$15;->arg$3:Ljava/util/List;

    iget-object v3, p0, Lcom/liquable/nemo/sticker/StickerInAppBilling$$Lambda$15;->arg$4:Ljava/util/List;

    iget-object v4, p0, Lcom/liquable/nemo/sticker/StickerInAppBilling$$Lambda$15;->arg$5:Ljava/lang/String;

    move-object v5, p1

    check-cast v5, Lcom/liquable/nemo/client/AsyncException;

    # invokes: Lcom/liquable/nemo/sticker/StickerInAppBilling;->lambda$doRpcPurchase$61(ILjava/util/List;Ljava/util/List;Ljava/lang/String;Lcom/liquable/nemo/client/AsyncException;)Lcom/liquable/future/IFuture;
    invoke-static/range {v0 .. v5}, Lcom/liquable/nemo/sticker/StickerInAppBilling;->access$lambda$13(Lcom/liquable/nemo/sticker/StickerInAppBilling;ILjava/util/List;Ljava/util/List;Ljava/lang/String;Lcom/liquable/nemo/client/AsyncException;)Lcom/liquable/future/IFuture;

    move-result-object v0

    return-object v0
.end method
