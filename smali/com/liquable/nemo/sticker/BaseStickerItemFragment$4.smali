.class Lcom/liquable/nemo/sticker/BaseStickerItemFragment$4;
.super Ljava/lang/Object;
.source "BaseStickerItemFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->resetSampleAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/sticker/BaseStickerItemFragment;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/sticker/BaseStickerItemFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/sticker/BaseStickerItemFragment;

    .prologue
    .line 380
    iput-object p1, p0, Lcom/liquable/nemo/sticker/BaseStickerItemFragment$4;->this$0:Lcom/liquable/nemo/sticker/BaseStickerItemFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lcom/liquable/nemo/sticker/BaseStickerItemFragment$4;->this$0:Lcom/liquable/nemo/sticker/BaseStickerItemFragment;

    # getter for: Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->animationDrawable:Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v0}, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->access$300(Lcom/liquable/nemo/sticker/BaseStickerItemFragment;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 384
    return-void
.end method
