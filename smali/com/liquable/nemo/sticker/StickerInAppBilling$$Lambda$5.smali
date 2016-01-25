.class final synthetic Lcom/liquable/nemo/sticker/StickerInAppBilling$$Lambda$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/liquable/future/Consumer;


# static fields
.field private static final instance:Lcom/liquable/nemo/sticker/StickerInAppBilling$$Lambda$5;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/liquable/nemo/sticker/StickerInAppBilling$$Lambda$5;

    invoke-direct {v0}, Lcom/liquable/nemo/sticker/StickerInAppBilling$$Lambda$5;-><init>()V

    sput-object v0, Lcom/liquable/nemo/sticker/StickerInAppBilling$$Lambda$5;->instance:Lcom/liquable/nemo/sticker/StickerInAppBilling$$Lambda$5;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Lcom/liquable/future/Consumer;
    .locals 1

    sget-object v0, Lcom/liquable/nemo/sticker/StickerInAppBilling$$Lambda$5;->instance:Lcom/liquable/nemo/sticker/StickerInAppBilling$$Lambda$5;

    return-object v0
.end method


# virtual methods
.method public run(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/liquable/nemo/sticker/StickerInAppBilling$IabHelperDisposedException;

    # invokes: Lcom/liquable/nemo/sticker/StickerInAppBilling;->lambda$launchPurchaseFlow$48(Lcom/liquable/nemo/sticker/StickerInAppBilling$IabHelperDisposedException;)V
    invoke-static {p1}, Lcom/liquable/nemo/sticker/StickerInAppBilling;->access$lambda$4(Lcom/liquable/nemo/sticker/StickerInAppBilling$IabHelperDisposedException;)V

    return-void
.end method
