.class final synthetic Lcom/liquable/nemo/sticker/StickerInAppBilling$$Lambda$11;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/liquable/future/Consumer;


# static fields
.field private static final instance:Lcom/liquable/nemo/sticker/StickerInAppBilling$$Lambda$11;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/liquable/nemo/sticker/StickerInAppBilling$$Lambda$11;

    invoke-direct {v0}, Lcom/liquable/nemo/sticker/StickerInAppBilling$$Lambda$11;-><init>()V

    sput-object v0, Lcom/liquable/nemo/sticker/StickerInAppBilling$$Lambda$11;->instance:Lcom/liquable/nemo/sticker/StickerInAppBilling$$Lambda$11;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Lcom/liquable/future/Consumer;
    .locals 1

    sget-object v0, Lcom/liquable/nemo/sticker/StickerInAppBilling$$Lambda$11;->instance:Lcom/liquable/nemo/sticker/StickerInAppBilling$$Lambda$11;

    return-object v0
.end method


# virtual methods
.method public run(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Exception;

    # invokes: Lcom/liquable/nemo/sticker/StickerInAppBilling;->lambda$tryRecoverPurchasedStickerItem$55(Ljava/lang/Exception;)V
    invoke-static {p1}, Lcom/liquable/nemo/sticker/StickerInAppBilling;->access$lambda$9(Ljava/lang/Exception;)V

    return-void
.end method
