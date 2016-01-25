.class Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "ApplyCustomStickerEffectActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;

    .prologue
    .line 312
    iput-object p1, p0, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity$1;->this$0:Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v12, 0x80

    .line 316
    const-string/jumbo v9, "com.liquable.nemo.chat.model.EXTRA_FILE_TRANSFER_EVENT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 347
    :cond_0
    :goto_0
    return-void

    .line 319
    :cond_1
    const-string/jumbo v9, "com.liquable.nemo.KEY_EVENT_CODE"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/chat/model/ExtraFileTransferEvent;

    .line 321
    .local v1, "event":Lcom/liquable/nemo/chat/model/ExtraFileTransferEvent;
    const-string/jumbo v9, "com.liquable.nemo.chat.model.ExtraFileTransferEvent.EXTRA_FILE_TYPE"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 323
    .local v2, "extraFileType":Ljava/lang/String;
    sget-object v9, Lcom/liquable/nemo/android/service/ExtraFileType;->CUSTOM_STICKER_EFFECT:Lcom/liquable/nemo/android/service/ExtraFileType;

    invoke-virtual {v9}, Lcom/liquable/nemo/android/service/ExtraFileType;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    sget-object v9, Lcom/liquable/nemo/chat/model/ExtraFileTransferEvent;->COMPLETE:Lcom/liquable/nemo/chat/model/ExtraFileTransferEvent;

    if-ne v1, v9, :cond_0

    .line 325
    const-string/jumbo v9, "com.liquable.nemo.chat.model.ExtraFileTransferEvent.KEY_CODE"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 326
    .local v5, "keyPath":Ljava/lang/String;
    new-instance v6, Lcom/liquable/nemo/storage/ExternalLocalKeyPath;

    invoke-direct {v6, v5}, Lcom/liquable/nemo/storage/ExternalLocalKeyPath;-><init>(Ljava/lang/String;)V

    .line 328
    .local v6, "localKeyPath":Lcom/liquable/nemo/storage/ExternalLocalKeyPath;
    iget-object v9, p0, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity$1;->this$0:Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;

    # getter for: Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;
    invoke-static {v9}, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;->access$100(Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;)Lcom/liquable/nemo/util/ImageLoader;

    move-result-object v9

    new-instance v10, Lcom/liquable/nemo/util/LocalKeyPathImage;

    iget-object v11, p0, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity$1;->this$0:Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;

    invoke-direct {v10, v11, v6, v12, v12}, Lcom/liquable/nemo/util/LocalKeyPathImage;-><init>(Landroid/content/Context;Lcom/liquable/nemo/storage/LocalKeyPath;II)V

    invoke-virtual {v9, v10}, Lcom/liquable/nemo/util/ImageLoader;->remove(Lcom/liquable/nemo/util/LoadableImage;)V

    .line 333
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget-object v9, p0, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity$1;->this$0:Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;

    # getter for: Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;->effectsListView:Lit/sephiroth/android/library/widget/HorizontalVariableListView;
    invoke-static {v9}, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;->access$300(Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;)Lit/sephiroth/android/library/widget/HorizontalVariableListView;

    move-result-object v9

    invoke-virtual {v9}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->getChildCount()I

    move-result v9

    if-ge v3, v9, :cond_0

    .line 334
    iget-object v9, p0, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity$1;->this$0:Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;

    # getter for: Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;->effectsListView:Lit/sephiroth/android/library/widget/HorizontalVariableListView;
    invoke-static {v9}, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;->access$300(Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;)Lit/sephiroth/android/library/widget/HorizontalVariableListView;

    move-result-object v9

    invoke-virtual {v9, v3}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 335
    .local v8, "view":Landroid/view/View;
    iget-object v9, p0, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity$1;->this$0:Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;

    # getter for: Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;->effectsListView:Lit/sephiroth/android/library/widget/HorizontalVariableListView;
    invoke-static {v9}, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;->access$300(Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;)Lit/sephiroth/android/library/widget/HorizontalVariableListView;

    move-result-object v9

    invoke-virtual {v9, v8}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->getPositionForView(Landroid/view/View;)I

    move-result v7

    .line 336
    .local v7, "positionForView":I
    iget-object v9, p0, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity$1;->this$0:Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;

    # getter for: Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;->effectsAdapter:Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity$EffectsAdapter;
    invoke-static {v9}, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;->access$400(Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;)Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity$EffectsAdapter;

    move-result-object v9

    invoke-virtual {v9, v7}, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity$EffectsAdapter;->getItem(I)Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;

    move-result-object v0

    .line 337
    .local v0, "effect":Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;
    invoke-virtual {v0}, Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;->getFirstKeyPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 338
    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity$ViewHolder;

    iget-object v4, v9, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity$ViewHolder;->effectImageView:Landroid/widget/ImageView;

    .line 339
    .local v4, "imageView":Landroid/widget/ImageView;
    iget-object v9, p0, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity$1;->this$0:Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;

    # getter for: Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;
    invoke-static {v9}, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;->access$100(Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;)Lcom/liquable/nemo/util/ImageLoader;

    move-result-object v9

    iget-object v10, p0, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity$1;->this$0:Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;

    .line 340
    invoke-virtual {v0, v10}, Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;->createCoverImage(Landroid/content/Context;)Lcom/liquable/nemo/util/LoadableImage;

    move-result-object v10

    .line 339
    invoke-virtual {v9, v4, v10}, Lcom/liquable/nemo/util/ImageLoader;->loadImage(Landroid/widget/ImageView;Lcom/liquable/nemo/util/LoadableImage;)V

    goto/16 :goto_0

    .line 333
    .end local v4    # "imageView":Landroid/widget/ImageView;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method
