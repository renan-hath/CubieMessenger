.class final synthetic Lcom/liquable/nemo/sticker/PaidStickerItemFragment$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final arg$1:Lcom/liquable/nemo/sticker/PaidStickerItemFragment;


# direct methods
.method private constructor <init>(Lcom/liquable/nemo/sticker/PaidStickerItemFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/liquable/nemo/sticker/PaidStickerItemFragment$$Lambda$1;->arg$1:Lcom/liquable/nemo/sticker/PaidStickerItemFragment;

    return-void
.end method

.method private static get$Lambda(Lcom/liquable/nemo/sticker/PaidStickerItemFragment;)Landroid/view/View$OnClickListener;
    .locals 1

    new-instance v0, Lcom/liquable/nemo/sticker/PaidStickerItemFragment$$Lambda$1;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/sticker/PaidStickerItemFragment$$Lambda$1;-><init>(Lcom/liquable/nemo/sticker/PaidStickerItemFragment;)V

    return-object v0
.end method

.method public static lambdaFactory$(Lcom/liquable/nemo/sticker/PaidStickerItemFragment;)Landroid/view/View$OnClickListener;
    .locals 1

    new-instance v0, Lcom/liquable/nemo/sticker/PaidStickerItemFragment$$Lambda$1;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/sticker/PaidStickerItemFragment$$Lambda$1;-><init>(Lcom/liquable/nemo/sticker/PaidStickerItemFragment;)V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/liquable/nemo/sticker/PaidStickerItemFragment$$Lambda$1;->arg$1:Lcom/liquable/nemo/sticker/PaidStickerItemFragment;

    # invokes: Lcom/liquable/nemo/sticker/PaidStickerItemFragment;->lambda$init$63(Landroid/view/View;)V
    invoke-static {v0, p1}, Lcom/liquable/nemo/sticker/PaidStickerItemFragment;->access$lambda$0(Lcom/liquable/nemo/sticker/PaidStickerItemFragment;Landroid/view/View;)V

    return-void
.end method
