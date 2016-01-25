.class final synthetic Lcom/liquable/nemo/sticker/StickerInAppBilling$$Lambda$16;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/liquable/future/FunctionWait;


# instance fields
.field private final arg$1:Lcom/liquable/nemo/sticker/StickerInAppBilling;

.field private final arg$2:Ljava/lang/String;

.field private final arg$3:Ljava/util/List;

.field private final arg$4:Ljava/util/List;

.field private final arg$5:I


# direct methods
.method private constructor <init>(Lcom/liquable/nemo/sticker/StickerInAppBilling;Ljava/lang/String;Ljava/util/List;Ljava/util/List;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/liquable/nemo/sticker/StickerInAppBilling$$Lambda$16;->arg$1:Lcom/liquable/nemo/sticker/StickerInAppBilling;

    iput-object p2, p0, Lcom/liquable/nemo/sticker/StickerInAppBilling$$Lambda$16;->arg$2:Ljava/lang/String;

    iput-object p3, p0, Lcom/liquable/nemo/sticker/StickerInAppBilling$$Lambda$16;->arg$3:Ljava/util/List;

    iput-object p4, p0, Lcom/liquable/nemo/sticker/StickerInAppBilling$$Lambda$16;->arg$4:Ljava/util/List;

    iput p5, p0, Lcom/liquable/nemo/sticker/StickerInAppBilling$$Lambda$16;->arg$5:I

    return-void
.end method

.method private static get$Lambda(Lcom/liquable/nemo/sticker/StickerInAppBilling;Ljava/lang/String;Ljava/util/List;Ljava/util/List;I)Lcom/liquable/future/FunctionWait;
    .locals 6

    new-instance v0, Lcom/liquable/nemo/sticker/StickerInAppBilling$$Lambda$16;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/liquable/nemo/sticker/StickerInAppBilling$$Lambda$16;-><init>(Lcom/liquable/nemo/sticker/StickerInAppBilling;Ljava/lang/String;Ljava/util/List;Ljava/util/List;I)V

    return-object v0
.end method

.method public static lambdaFactory$(Lcom/liquable/nemo/sticker/StickerInAppBilling;Ljava/lang/String;Ljava/util/List;Ljava/util/List;I)Lcom/liquable/future/FunctionWait;
    .locals 6

    new-instance v0, Lcom/liquable/nemo/sticker/StickerInAppBilling$$Lambda$16;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/liquable/nemo/sticker/StickerInAppBilling$$Lambda$16;-><init>(Lcom/liquable/nemo/sticker/StickerInAppBilling;Ljava/lang/String;Ljava/util/List;Ljava/util/List;I)V

    return-object v0
.end method


# virtual methods
.method public run(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/liquable/nemo/sticker/StickerInAppBilling$$Lambda$16;->arg$1:Lcom/liquable/nemo/sticker/StickerInAppBilling;

    iget-object v1, p0, Lcom/liquable/nemo/sticker/StickerInAppBilling$$Lambda$16;->arg$2:Ljava/lang/String;

    iget-object v2, p0, Lcom/liquable/nemo/sticker/StickerInAppBilling$$Lambda$16;->arg$3:Ljava/util/List;

    iget-object v3, p0, Lcom/liquable/nemo/sticker/StickerInAppBilling$$Lambda$16;->arg$4:Ljava/util/List;

    iget v4, p0, Lcom/liquable/nemo/sticker/StickerInAppBilling$$Lambda$16;->arg$5:I

    move-object v5, p1

    check-cast v5, Ljava/lang/Void;

    # invokes: Lcom/liquable/nemo/sticker/StickerInAppBilling;->lambda$null$60(Ljava/lang/String;Ljava/util/List;Ljava/util/List;ILjava/lang/Void;)Lcom/liquable/future/IFuture;
    invoke-static/range {v0 .. v5}, Lcom/liquable/nemo/sticker/StickerInAppBilling;->access$lambda$14(Lcom/liquable/nemo/sticker/StickerInAppBilling;Ljava/lang/String;Ljava/util/List;Ljava/util/List;ILjava/lang/Void;)Lcom/liquable/future/IFuture;

    move-result-object v0

    return-object v0
.end method
