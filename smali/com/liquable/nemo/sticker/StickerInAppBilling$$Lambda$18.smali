.class final synthetic Lcom/liquable/nemo/sticker/StickerInAppBilling$$Lambda$18;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/liquable/future/Function;


# static fields
.field private static final instance:Lcom/liquable/nemo/sticker/StickerInAppBilling$$Lambda$18;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/liquable/nemo/sticker/StickerInAppBilling$$Lambda$18;

    invoke-direct {v0}, Lcom/liquable/nemo/sticker/StickerInAppBilling$$Lambda$18;-><init>()V

    sput-object v0, Lcom/liquable/nemo/sticker/StickerInAppBilling$$Lambda$18;->instance:Lcom/liquable/nemo/sticker/StickerInAppBilling$$Lambda$18;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Lcom/liquable/future/Function;
    .locals 1

    sget-object v0, Lcom/liquable/nemo/sticker/StickerInAppBilling$$Lambda$18;->instance:Lcom/liquable/nemo/sticker/StickerInAppBilling$$Lambda$18;

    return-object v0
.end method


# virtual methods
.method public run(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/util/List;

    # invokes: Lcom/liquable/nemo/sticker/StickerInAppBilling;->lambda$null$51(Ljava/util/List;)Ljava/lang/Integer;
    invoke-static {p1}, Lcom/liquable/nemo/sticker/StickerInAppBilling;->access$lambda$16(Ljava/util/List;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
