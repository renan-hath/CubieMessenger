.class Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity$3;
.super Ljava/lang/Object;
.source "ApplyCustomStickerEffectActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;->onLoggedInCreate(Landroid/os/Bundle;)V
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
    .line 417
    iput-object p1, p0, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity$3;->this$0:Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 14
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 424
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v11, p0, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity$3;->this$0:Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;

    # getter for: Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;->effectsListView:Lit/sephiroth/android/library/widget/HorizontalVariableListView;
    invoke-static {v11}, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;->access$300(Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;)Lit/sephiroth/android/library/widget/HorizontalVariableListView;

    move-result-object v11

    invoke-virtual {v11}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->getChildCount()I

    move-result v11

    if-ge v4, v11, :cond_0

    .line 425
    iget-object v11, p0, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity$3;->this$0:Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;

    # getter for: Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;->effectsListView:Lit/sephiroth/android/library/widget/HorizontalVariableListView;
    invoke-static {v11}, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;->access$300(Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;)Lit/sephiroth/android/library/widget/HorizontalVariableListView;

    move-result-object v11

    invoke-virtual {v11, v4}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 426
    .local v3, "childAt":Landroid/view/View;
    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Landroid/view/View;->setSelected(Z)V

    .line 424
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 428
    .end local v3    # "childAt":Landroid/view/View;
    :cond_0
    const/4 v11, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/view/View;->setSelected(Z)V

    .line 430
    iget-object v12, p0, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity$3;->this$0:Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v11

    move/from16 v0, p3

    invoke-interface {v11, v0}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;

    # setter for: Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;->selectedEffect:Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;
    invoke-static {v12, v11}, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;->access$502(Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;)Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;

    .line 431
    new-instance v1, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    .line 433
    .local v1, "animationDrawable":Landroid/graphics/drawable/AnimationDrawable;
    const/4 v7, 0x1

    .line 434
    .local v7, "isAllDownloaded":Z
    iget-object v11, p0, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity$3;->this$0:Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;

    # getter for: Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;->selectedEffect:Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;
    invoke-static {v11}, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;->access$500(Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;)Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;

    move-result-object v11

    invoke-virtual {v11}, Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;->getKeyPaths()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 435
    .local v8, "keyPath":Ljava/lang/String;
    new-instance v10, Lcom/liquable/nemo/storage/ExternalLocalKeyPath;

    invoke-direct {v10, v8}, Lcom/liquable/nemo/storage/ExternalLocalKeyPath;-><init>(Ljava/lang/String;)V

    .line 436
    .local v10, "localKeyPath":Lcom/liquable/nemo/storage/ExternalLocalKeyPath;
    sget-object v12, Lcom/liquable/nemo/NemoManagers;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    invoke-virtual {v10, v12}, Lcom/liquable/nemo/storage/ExternalLocalKeyPath;->toFile(Lcom/liquable/nemo/storage/NemoFileService;)Ljava/io/File;

    move-result-object v9

    .line 437
    .local v9, "localFile":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 438
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 439
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    const/16 v12, 0x140

    invoke-virtual {v2, v12}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 440
    new-instance v12, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v13, p0, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity$3;->this$0:Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;

    invoke-virtual {v13}, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-direct {v12, v13, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    const/16 v13, 0x1f4

    invoke-virtual {v1, v12, v13}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    goto :goto_1

    .line 442
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    const/4 v7, 0x0

    goto :goto_1

    .line 446
    .end local v8    # "keyPath":Ljava/lang/String;
    .end local v9    # "localFile":Ljava/io/File;
    .end local v10    # "localKeyPath":Lcom/liquable/nemo/storage/ExternalLocalKeyPath;
    :cond_2
    if-nez v7, :cond_3

    .line 447
    iget-object v11, p0, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity$3;->this$0:Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;

    const v12, 0x7f0d0167

    invoke-static {v11, v12}, Lcom/liquable/nemo/util/NemoUIs;->showToast(Landroid/content/Context;I)V

    .line 470
    :goto_2
    return-void

    .line 451
    :cond_3
    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 452
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v11, p0, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity$3;->this$0:Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;

    iget-object v12, p0, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity$3;->this$0:Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;

    .line 454
    # getter for: Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;->selectedEffect:Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;
    invoke-static {v12}, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;->access$500(Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;)Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;

    move-result-object v12

    invoke-virtual {v12}, Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;->getWidth()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    .line 452
    invoke-static {v11, v12}, Lcom/liquable/nemo/util/NemoUIs;->toPixel(Landroid/content/Context;I)I

    move-result v11

    iget-object v12, p0, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity$3;->this$0:Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;

    iget-object v13, p0, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity$3;->this$0:Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;

    .line 455
    # getter for: Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;->selectedEffect:Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;
    invoke-static {v13}, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;->access$500(Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;)Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;

    move-result-object v13

    invoke-virtual {v13}, Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;->getHeight()I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    invoke-static {v12, v13}, Lcom/liquable/nemo/util/NemoUIs;->toPixel(Landroid/content/Context;I)I

    move-result v12

    invoke-direct {v6, v11, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 456
    .local v6, "imageViewLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v11, 0xe

    const/4 v12, -0x1

    invoke-virtual {v6, v11, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 457
    iget-object v11, p0, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity$3;->this$0:Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;

    # getter for: Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;->effectImageView:Landroid/widget/ImageView;
    invoke-static {v11}, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;->access$700(Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;)Landroid/widget/ImageView;

    move-result-object v11

    invoke-virtual {v11, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 458
    iget-object v11, p0, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity$3;->this$0:Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;

    # getter for: Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;->effectImageView:Landroid/widget/ImageView;
    invoke-static {v11}, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;->access$700(Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;)Landroid/widget/ImageView;

    move-result-object v11

    invoke-virtual {v11, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 459
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 461
    iget-object v11, p0, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity$3;->this$0:Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;

    # getter for: Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;->customStickerImageView:Landroid/widget/ImageView;
    invoke-static {v11}, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;->access$800(Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;)Landroid/widget/ImageView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    .line 462
    .local v5, "imageMatrix":Landroid/graphics/Matrix;
    invoke-virtual {v5}, Landroid/graphics/Matrix;->reset()V

    .line 463
    iget-object v11, p0, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity$3;->this$0:Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;

    iget-object v12, p0, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity$3;->this$0:Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;

    .line 464
    # getter for: Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;->selectedEffect:Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;
    invoke-static {v12}, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;->access$500(Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;)Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;

    move-result-object v12

    invoke-virtual {v12}, Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;->getOffsetX()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    .line 463
    invoke-static {v11, v12}, Lcom/liquable/nemo/util/NemoUIs;->toPixel(Landroid/content/Context;I)I

    move-result v11

    int-to-float v11, v11

    iget-object v12, p0, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity$3;->this$0:Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;

    iget-object v13, p0, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity$3;->this$0:Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;

    .line 466
    # getter for: Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;->selectedEffect:Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;
    invoke-static {v13}, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;->access$500(Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;)Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;

    move-result-object v13

    invoke-virtual {v13}, Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;->getOffsetY()I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    .line 465
    invoke-static {v12, v13}, Lcom/liquable/nemo/util/NemoUIs;->toPixel(Landroid/content/Context;I)I

    move-result v12

    int-to-float v12, v12

    .line 463
    invoke-virtual {v5, v11, v12}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 468
    iget-object v11, p0, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity$3;->this$0:Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;

    # getter for: Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;->customStickerImageView:Landroid/widget/ImageView;
    invoke-static {v11}, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;->access$800(Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;)Landroid/widget/ImageView;

    move-result-object v11

    invoke-virtual {v11, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 469
    iget-object v11, p0, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity$3;->this$0:Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;

    # getter for: Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;->customStickerImageView:Landroid/widget/ImageView;
    invoke-static {v11}, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;->access$800(Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;)Landroid/widget/ImageView;

    move-result-object v11

    invoke-virtual {v11, v5}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    goto/16 :goto_2
.end method
