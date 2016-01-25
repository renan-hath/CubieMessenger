.class final synthetic Lcom/liquable/nemo/sticker/PaidStickerItemFragment$$Lambda$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/liquable/future/Consumer;


# instance fields
.field private final arg$1:Lcom/liquable/nemo/sticker/PaidStickerItemFragment;

.field private final arg$2:Lcom/liquable/nemo/sticker/PaidStickerItemActivity;


# direct methods
.method private constructor <init>(Lcom/liquable/nemo/sticker/PaidStickerItemFragment;Lcom/liquable/nemo/sticker/PaidStickerItemActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/liquable/nemo/sticker/PaidStickerItemFragment$$Lambda$2;->arg$1:Lcom/liquable/nemo/sticker/PaidStickerItemFragment;

    iput-object p2, p0, Lcom/liquable/nemo/sticker/PaidStickerItemFragment$$Lambda$2;->arg$2:Lcom/liquable/nemo/sticker/PaidStickerItemActivity;

    return-void
.end method

.method private static get$Lambda(Lcom/liquable/nemo/sticker/PaidStickerItemFragment;Lcom/liquable/nemo/sticker/PaidStickerItemActivity;)Lcom/liquable/future/Consumer;
    .locals 1

    new-instance v0, Lcom/liquable/nemo/sticker/PaidStickerItemFragment$$Lambda$2;

    invoke-direct {v0, p0, p1}, Lcom/liquable/nemo/sticker/PaidStickerItemFragment$$Lambda$2;-><init>(Lcom/liquable/nemo/sticker/PaidStickerItemFragment;Lcom/liquable/nemo/sticker/PaidStickerItemActivity;)V

    return-object v0
.end method

.method public static lambdaFactory$(Lcom/liquable/nemo/sticker/PaidStickerItemFragment;Lcom/liquable/nemo/sticker/PaidStickerItemActivity;)Lcom/liquable/future/Consumer;
    .locals 1

    new-instance v0, Lcom/liquable/nemo/sticker/PaidStickerItemFragment$$Lambda$2;

    invoke-direct {v0, p0, p1}, Lcom/liquable/nemo/sticker/PaidStickerItemFragment$$Lambda$2;-><init>(Lcom/liquable/nemo/sticker/PaidStickerItemFragment;Lcom/liquable/nemo/sticker/PaidStickerItemActivity;)V

    return-object v0
.end method


# virtual methods
.method public run(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/liquable/nemo/sticker/PaidStickerItemFragment$$Lambda$2;->arg$1:Lcom/liquable/nemo/sticker/PaidStickerItemFragment;

    iget-object v1, p0, Lcom/liquable/nemo/sticker/PaidStickerItemFragment$$Lambda$2;->arg$2:Lcom/liquable/nemo/sticker/PaidStickerItemActivity;

    check-cast p1, Ljava/lang/Boolean;

    # invokes: Lcom/liquable/nemo/sticker/PaidStickerItemFragment;->lambda$null$62(Lcom/liquable/nemo/sticker/PaidStickerItemActivity;Ljava/lang/Boolean;)V
    invoke-static {v0, v1, p1}, Lcom/liquable/nemo/sticker/PaidStickerItemFragment;->access$lambda$1(Lcom/liquable/nemo/sticker/PaidStickerItemFragment;Lcom/liquable/nemo/sticker/PaidStickerItemActivity;Ljava/lang/Boolean;)V

    return-void
.end method
