.class final synthetic Lcom/liquable/nemo/sticker/StickerInAppBilling$$Lambda$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/liquable/future/Function;


# static fields
.field private static final instance:Lcom/liquable/nemo/sticker/StickerInAppBilling$$Lambda$3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/liquable/nemo/sticker/StickerInAppBilling$$Lambda$3;

    invoke-direct {v0}, Lcom/liquable/nemo/sticker/StickerInAppBilling$$Lambda$3;-><init>()V

    sput-object v0, Lcom/liquable/nemo/sticker/StickerInAppBilling$$Lambda$3;->instance:Lcom/liquable/nemo/sticker/StickerInAppBilling$$Lambda$3;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Lcom/liquable/future/Function;
    .locals 1

    sget-object v0, Lcom/liquable/nemo/sticker/StickerInAppBilling$$Lambda$3;->instance:Lcom/liquable/nemo/sticker/StickerInAppBilling$$Lambda$3;

    return-object v0
.end method


# virtual methods
.method public run(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/Exception;

    # invokes: Lcom/liquable/nemo/sticker/StickerInAppBilling;->lambda$checkInAppBillingSupport$45(Ljava/lang/Exception;)Ljava/lang/Boolean;
    invoke-static {p1}, Lcom/liquable/nemo/sticker/StickerInAppBilling;->access$lambda$2(Ljava/lang/Exception;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
