.class Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity$EffectsAdapter$1;
.super Ljava/lang/Object;
.source "ApplyCustomStickerEffectActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity$EffectsAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity$EffectsAdapter;

.field final synthetic val$parent:Landroid/view/ViewGroup;

.field final synthetic val$position:I

.field final synthetic val$root:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity$EffectsAdapter;Landroid/view/ViewGroup;Landroid/view/View;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity$EffectsAdapter;

    .prologue
    .line 295
    iput-object p1, p0, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity$EffectsAdapter$1;->this$1:Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity$EffectsAdapter;

    iput-object p2, p0, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity$EffectsAdapter$1;->val$parent:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity$EffectsAdapter$1;->val$root:Landroid/view/View;

    iput p4, p0, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity$EffectsAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 298
    iget-object v0, p0, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity$EffectsAdapter$1;->this$1:Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity$EffectsAdapter;

    # getter for: Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity$EffectsAdapter;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;
    invoke-static {v0}, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity$EffectsAdapter;->access$200(Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity$EffectsAdapter;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity$EffectsAdapter$1;->val$parent:Landroid/view/ViewGroup;

    check-cast v1, Landroid/widget/AdapterView;

    iget-object v2, p0, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity$EffectsAdapter$1;->val$root:Landroid/view/View;

    iget v3, p0, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity$EffectsAdapter$1;->val$position:I

    iget-object v4, p0, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity$EffectsAdapter$1;->this$1:Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity$EffectsAdapter;

    iget v5, p0, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity$EffectsAdapter$1;->val$position:I

    .line 301
    invoke-virtual {v4, v5}, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity$EffectsAdapter;->getItemId(I)J

    move-result-wide v4

    .line 298
    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 302
    return-void
.end method
