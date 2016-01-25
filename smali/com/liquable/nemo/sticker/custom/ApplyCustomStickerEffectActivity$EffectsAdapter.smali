.class final Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity$EffectsAdapter;
.super Landroid/widget/BaseAdapter;
.source "ApplyCustomStickerEffectActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "EffectsAdapter"
.end annotation


# instance fields
.field private final effects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;",
            ">;"
        }
    .end annotation
.end field

.field private final onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field final synthetic this$0:Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;


# direct methods
.method public constructor <init>(Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;Ljava/util/List;Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0
    .param p3, "onItemClickListener"    # Landroid/widget/AdapterView$OnItemClickListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;",
            ">;",
            "Landroid/widget/AdapterView$OnItemClickListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 252
    .local p2, "effects":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;>;"
    iput-object p1, p0, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity$EffectsAdapter;->this$0:Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 253
    iput-object p2, p0, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity$EffectsAdapter;->effects:Ljava/util/List;

    .line 254
    iput-object p3, p0, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity$EffectsAdapter;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 255
    return-void
.end method

.method static synthetic access$200(Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity$EffectsAdapter;)Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity$EffectsAdapter;

    .prologue
    .line 245
    iget-object v0, p0, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity$EffectsAdapter;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity$EffectsAdapter;->effects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 264
    iget-object v0, p0, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity$EffectsAdapter;->effects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 245
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity$EffectsAdapter;->getItem(I)Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 269
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 276
    if-nez p2, :cond_0

    .line 277
    iget-object v5, p0, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity$EffectsAdapter;->this$0:Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 278
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x7f0300d8

    const/4 v6, 0x0

    invoke-virtual {v2, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 279
    .local v3, "root":Landroid/view/View;
    new-instance v4, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity$ViewHolder;

    iget-object v5, p0, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity$EffectsAdapter;->this$0:Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity$ViewHolder;-><init>(Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity$1;)V

    .line 280
    .local v4, "viewHolder":Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity$ViewHolder;
    const v5, 0x7f080060

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v4, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity$ViewHolder;->effectImageView:Landroid/widget/ImageView;

    .line 281
    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 287
    .end local v2    # "inflater":Landroid/view/LayoutInflater;
    :goto_0
    iget-object v0, v4, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity$ViewHolder;->effectImageView:Landroid/widget/ImageView;

    .line 288
    .local v0, "customStickerThumbView":Landroid/widget/ImageView;
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity$EffectsAdapter;->getItem(I)Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;

    move-result-object v1

    .line 290
    .local v1, "effect":Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;
    sget-object v5, Lcom/liquable/nemo/NemoManagers;->customStickerDaemon:Lcom/liquable/nemo/sticker/custom/model/CustomStickerDaemon;

    invoke-virtual {v5, v1}, Lcom/liquable/nemo/sticker/custom/model/CustomStickerDaemon;->downloadCustomStickerEffect(Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;)V

    .line 292
    iget-object v5, p0, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity$EffectsAdapter;->this$0:Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;

    # getter for: Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;
    invoke-static {v5}, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;->access$100(Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;)Lcom/liquable/nemo/util/ImageLoader;

    move-result-object v5

    iget-object v6, p0, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity$EffectsAdapter;->this$0:Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;

    .line 293
    invoke-virtual {v1, v6}, Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;->createCoverImage(Landroid/content/Context;)Lcom/liquable/nemo/util/LoadableImage;

    move-result-object v6

    .line 292
    invoke-virtual {v5, v0, v6}, Lcom/liquable/nemo/util/ImageLoader;->loadImage(Landroid/widget/ImageView;Lcom/liquable/nemo/util/LoadableImage;)V

    .line 295
    new-instance v5, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity$EffectsAdapter$1;

    invoke-direct {v5, p0, p3, v3, p1}, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity$EffectsAdapter$1;-><init>(Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity$EffectsAdapter;Landroid/view/ViewGroup;Landroid/view/View;I)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 304
    return-object v3

    .line 283
    .end local v0    # "customStickerThumbView":Landroid/widget/ImageView;
    .end local v1    # "effect":Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;
    .end local v3    # "root":Landroid/view/View;
    .end local v4    # "viewHolder":Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity$ViewHolder;
    :cond_0
    move-object v3, p2

    .line 284
    .restart local v3    # "root":Landroid/view/View;
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity$ViewHolder;

    .restart local v4    # "viewHolder":Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity$ViewHolder;
    goto :goto_0
.end method
