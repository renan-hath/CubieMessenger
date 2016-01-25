.class final synthetic Lcom/liquable/nemo/sticker/StickerInAppBilling$$Lambda$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/liquable/future/Consumer;


# instance fields
.field private final arg$1:Lcom/liquable/nemo/sticker/StickerInAppBilling;

.field private final arg$2:Landroid/app/Activity;

.field private final arg$3:Ljava/lang/String;

.field private final arg$4:Ljava/lang/String;

.field private final arg$5:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/liquable/nemo/sticker/StickerInAppBilling;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/liquable/nemo/sticker/StickerInAppBilling$$Lambda$4;->arg$1:Lcom/liquable/nemo/sticker/StickerInAppBilling;

    iput-object p2, p0, Lcom/liquable/nemo/sticker/StickerInAppBilling$$Lambda$4;->arg$2:Landroid/app/Activity;

    iput-object p3, p0, Lcom/liquable/nemo/sticker/StickerInAppBilling$$Lambda$4;->arg$3:Ljava/lang/String;

    iput-object p4, p0, Lcom/liquable/nemo/sticker/StickerInAppBilling$$Lambda$4;->arg$4:Ljava/lang/String;

    iput-object p5, p0, Lcom/liquable/nemo/sticker/StickerInAppBilling$$Lambda$4;->arg$5:Ljava/lang/String;

    return-void
.end method

.method private static get$Lambda(Lcom/liquable/nemo/sticker/StickerInAppBilling;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/future/Consumer;
    .locals 6

    new-instance v0, Lcom/liquable/nemo/sticker/StickerInAppBilling$$Lambda$4;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/liquable/nemo/sticker/StickerInAppBilling$$Lambda$4;-><init>(Lcom/liquable/nemo/sticker/StickerInAppBilling;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static lambdaFactory$(Lcom/liquable/nemo/sticker/StickerInAppBilling;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/future/Consumer;
    .locals 6

    new-instance v0, Lcom/liquable/nemo/sticker/StickerInAppBilling$$Lambda$4;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/liquable/nemo/sticker/StickerInAppBilling$$Lambda$4;-><init>(Lcom/liquable/nemo/sticker/StickerInAppBilling;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public run(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/liquable/nemo/sticker/StickerInAppBilling$$Lambda$4;->arg$1:Lcom/liquable/nemo/sticker/StickerInAppBilling;

    iget-object v1, p0, Lcom/liquable/nemo/sticker/StickerInAppBilling$$Lambda$4;->arg$2:Landroid/app/Activity;

    iget-object v2, p0, Lcom/liquable/nemo/sticker/StickerInAppBilling$$Lambda$4;->arg$3:Ljava/lang/String;

    iget-object v3, p0, Lcom/liquable/nemo/sticker/StickerInAppBilling$$Lambda$4;->arg$4:Ljava/lang/String;

    iget-object v4, p0, Lcom/liquable/nemo/sticker/StickerInAppBilling$$Lambda$4;->arg$5:Ljava/lang/String;

    move-object v5, p1

    check-cast v5, Lcom/liquable/nemo/iab/IabHelper;

    # invokes: Lcom/liquable/nemo/sticker/StickerInAppBilling;->lambda$launchPurchaseFlow$47(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/liquable/nemo/iab/IabHelper;)V
    invoke-static/range {v0 .. v5}, Lcom/liquable/nemo/sticker/StickerInAppBilling;->access$lambda$3(Lcom/liquable/nemo/sticker/StickerInAppBilling;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/liquable/nemo/iab/IabHelper;)V

    return-void
.end method
