.class Lcom/aviary/android/feather/effects/StickersPanel$StickerPacksAdapter;
.super Lit/sephiroth/android/library/widget/BaseAdapterExtended;
.source "StickersPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aviary/android/feather/effects/StickersPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StickerPacksAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lit/sephiroth/android/library/widget/BaseAdapterExtended",
        "<",
        "Lcom/aviary/android/feather/effects/StickersPanel$StickerEffectPack;",
        ">;"
    }
.end annotation


# instance fields
.field private mExternalFolderIcon:Landroid/graphics/drawable/BitmapDrawable;

.field private mExternalLayoutResId:I

.field private mFolderIcon:Landroid/graphics/drawable/BitmapDrawable;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mLayoutResId:I

.field private mMoreResId:I

.field private mObjects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aviary/android/feather/effects/StickersPanel$StickerEffectPack;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/aviary/android/feather/effects/StickersPanel;


# direct methods
.method public constructor <init>(Lcom/aviary/android/feather/effects/StickersPanel;Landroid/content/Context;IIILjava/util/List;)V
    .locals 2
    .param p1, "this$0"    # Lcom/aviary/android/feather/effects/StickersPanel;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "mainResId"    # I
    .param p4, "externalResId"    # I
    .param p5, "moreResId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "III",
            "Ljava/util/List",
            "<",
            "Lcom/aviary/android/feather/effects/StickersPanel$StickerEffectPack;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1429
    .local p6, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/aviary/android/feather/effects/StickersPanel$StickerEffectPack;>;"
    iput-object p1, p0, Lcom/aviary/android/feather/effects/StickersPanel$StickerPacksAdapter;->this$0:Lcom/aviary/android/feather/effects/StickersPanel;

    .line 1430
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/BaseAdapterExtended;-><init>()V

    .line 1431
    iput-object p6, p0, Lcom/aviary/android/feather/effects/StickersPanel$StickerPacksAdapter;->mObjects:Ljava/util/List;

    .line 1432
    iput p3, p0, Lcom/aviary/android/feather/effects/StickersPanel$StickerPacksAdapter;->mLayoutResId:I

    .line 1433
    iput p4, p0, Lcom/aviary/android/feather/effects/StickersPanel$StickerPacksAdapter;->mExternalLayoutResId:I

    .line 1434
    iput p5, p0, Lcom/aviary/android/feather/effects/StickersPanel$StickerPacksAdapter;->mMoreResId:I

    .line 1436
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/aviary/android/feather/effects/StickersPanel$StickerPacksAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 1437
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/aviary/android/feather/R$drawable;->aviary_sticker_pack_background:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v0, p0, Lcom/aviary/android/feather/effects/StickersPanel$StickerPacksAdapter;->mFolderIcon:Landroid/graphics/drawable/BitmapDrawable;

    .line 1438
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/aviary/android/feather/R$drawable;->aviary_sticker_pack_background:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v0, p0, Lcom/aviary/android/feather/effects/StickersPanel$StickerPacksAdapter;->mExternalFolderIcon:Landroid/graphics/drawable/BitmapDrawable;

    .line 1439
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 1443
    iget-object v0, p0, Lcom/aviary/android/feather/effects/StickersPanel$StickerPacksAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/aviary/android/feather/effects/StickersPanel$StickerEffectPack;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1453
    iget-object v0, p0, Lcom/aviary/android/feather/effects/StickersPanel$StickerPacksAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aviary/android/feather/effects/StickersPanel$StickerEffectPack;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1410
    invoke-virtual {p0, p1}, Lcom/aviary/android/feather/effects/StickersPanel$StickerPacksAdapter;->getItem(I)Lcom/aviary/android/feather/effects/StickersPanel$StickerEffectPack;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 1458
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 4
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x2

    .line 1469
    iget-object v2, p0, Lcom/aviary/android/feather/effects/StickersPanel$StickerPacksAdapter;->this$0:Lcom/aviary/android/feather/effects/StickersPanel;

    # getter for: Lcom/aviary/android/feather/effects/StickersPanel;->mExternalPacksEnabled:Z
    invoke-static {v2}, Lcom/aviary/android/feather/effects/StickersPanel;->access$500(Lcom/aviary/android/feather/effects/StickersPanel;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1485
    :goto_0
    return v1

    .line 1471
    :cond_0
    if-ltz p1, :cond_1

    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/StickersPanel$StickerPacksAdapter;->getCount()I

    move-result v2

    if-lt p1, v2, :cond_2

    .line 1472
    :cond_1
    const/4 v1, -0x1

    goto :goto_0

    .line 1475
    :cond_2
    invoke-virtual {p0, p1}, Lcom/aviary/android/feather/effects/StickersPanel$StickerPacksAdapter;->getItem(I)Lcom/aviary/android/feather/effects/StickersPanel$StickerEffectPack;

    move-result-object v0

    .line 1477
    .local v0, "item":Lcom/aviary/android/feather/effects/StickersPanel$StickerEffectPack;
    sget-object v2, Lcom/aviary/android/feather/effects/StickersPanel$11;->$SwitchMap$com$aviary$android$feather$effects$StickersPanel$StickerEffectPack$StickerEffectPackType:[I

    iget-object v3, v0, Lcom/aviary/android/feather/effects/StickersPanel$StickerEffectPack;->mType:Lcom/aviary/android/feather/effects/StickersPanel$StickerEffectPack$StickerEffectPackType;

    invoke-virtual {v3}, Lcom/aviary/android/feather/effects/StickersPanel$StickerEffectPack$StickerEffectPackType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 1478
    :pswitch_0
    const/4 v1, 0x3

    goto :goto_0

    .line 1479
    :pswitch_1
    const/4 v1, 0x4

    goto :goto_0

    .line 1480
    :pswitch_2
    const/4 v1, 0x5

    goto :goto_0

    .line 1481
    :pswitch_3
    const/4 v1, 0x0

    goto :goto_0

    .line 1482
    :pswitch_4
    const/4 v1, 0x1

    goto :goto_0

    .line 1477
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 16
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 1492
    const/4 v8, 0x0

    .line 1494
    .local v8, "holder":Lcom/aviary/android/feather/effects/BordersPanel$ViewHolder;
    invoke-virtual/range {p0 .. p1}, Lcom/aviary/android/feather/effects/StickersPanel$StickerPacksAdapter;->getItemViewType(I)I

    move-result v15

    .line 1495
    .local v15, "type":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aviary/android/feather/effects/StickersPanel$StickerPacksAdapter;->this$0:Lcom/aviary/android/feather/effects/StickersPanel;

    # getter for: Lcom/aviary/android/feather/effects/StickersPanel;->mPackCellWidth:I
    invoke-static {v1}, Lcom/aviary/android/feather/effects/StickersPanel;->access$1100(Lcom/aviary/android/feather/effects/StickersPanel;)I

    move-result v12

    .line 1496
    .local v12, "layoutWidth":I
    const/4 v11, -0x1

    .line 1498
    .local v11, "layoutHeight":I
    if-nez p2, :cond_8

    .line 1500
    new-instance v8, Lcom/aviary/android/feather/effects/BordersPanel$ViewHolder;

    .end local v8    # "holder":Lcom/aviary/android/feather/effects/BordersPanel$ViewHolder;
    invoke-direct {v8}, Lcom/aviary/android/feather/effects/BordersPanel$ViewHolder;-><init>()V

    .line 1502
    .restart local v8    # "holder":Lcom/aviary/android/feather/effects/BordersPanel$ViewHolder;
    if-eqz v15, :cond_0

    const/4 v1, 0x1

    if-ne v15, v1, :cond_3

    .line 1503
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aviary/android/feather/effects/StickersPanel$StickerPacksAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/aviary/android/feather/effects/StickersPanel$StickerPacksAdapter;->mMoreResId:I

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v1, v3, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 1504
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aviary/android/feather/effects/StickersPanel$StickerPacksAdapter;->this$0:Lcom/aviary/android/feather/effects/StickersPanel;

    # getter for: Lcom/aviary/android/feather/effects/StickersPanel;->mPackCellWidth:I
    invoke-static {v1}, Lcom/aviary/android/feather/effects/StickersPanel;->access$1100(Lcom/aviary/android/feather/effects/StickersPanel;)I

    move-result v12

    .line 1506
    sget v1, Lcom/aviary/android/feather/R$id;->aviary_image:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v8, Lcom/aviary/android/feather/effects/BordersPanel$ViewHolder;->image:Landroid/widget/ImageView;

    .line 1508
    iget-object v1, v8, Lcom/aviary/android/feather/effects/BordersPanel$ViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    .line 1509
    .local v13, "params":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aviary/android/feather/effects/StickersPanel$StickerPacksAdapter;->this$0:Lcom/aviary/android/feather/effects/StickersPanel;

    # getter for: Lcom/aviary/android/feather/effects/StickersPanel;->mPackThumbSize:I
    invoke-static {v1}, Lcom/aviary/android/feather/effects/StickersPanel;->access$1200(Lcom/aviary/android/feather/effects/StickersPanel;)I

    move-result v1

    iput v1, v13, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, v13, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1510
    iget-object v1, v8, Lcom/aviary/android/feather/effects/BordersPanel$ViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v1, v13}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1512
    const/4 v1, 0x1

    if-ne v15, v1, :cond_1

    .line 1515
    invoke-virtual/range {p3 .. p3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 1516
    .local v10, "lastChild":Landroid/view/View;
    if-eqz v10, :cond_1

    .line 1518
    invoke-virtual {v10}, Landroid/view/View;->getRight()I

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/view/ViewGroup;->getRight()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 1519
    const/4 v12, 0x0

    .line 1546
    .end local v10    # "lastChild":Landroid/view/View;
    .end local v13    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    :goto_0
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1547
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v12, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1552
    :goto_1
    const/4 v1, 0x2

    if-ne v15, v1, :cond_9

    .line 1553
    invoke-virtual/range {p0 .. p1}, Lcom/aviary/android/feather/effects/StickersPanel$StickerPacksAdapter;->getItem(I)Lcom/aviary/android/feather/effects/StickersPanel$StickerEffectPack;

    move-result-object v9

    .line 1555
    .local v9, "item":Lcom/aviary/android/feather/effects/StickersPanel$StickerEffectPack;
    iget-object v1, v8, Lcom/aviary/android/feather/effects/BordersPanel$ViewHolder;->text:Landroid/widget/TextView;

    iget-object v3, v9, Lcom/aviary/android/feather/effects/StickersPanel$StickerEffectPack;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1557
    iget-object v14, v9, Lcom/aviary/android/feather/effects/StickersPanel$StickerEffectPack;->mPluginRef:Lcom/aviary/android/feather/library/plugins/PluginFactory$IPlugin;

    check-cast v14, Lcom/aviary/android/feather/library/plugins/PluginFactory$InternalPlugin;

    .line 1558
    .local v14, "plugin":Lcom/aviary/android/feather/library/plugins/PluginFactory$InternalPlugin;
    new-instance v2, Lcom/aviary/android/feather/effects/StickersPanel$StickerPackThumbnailCallable;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aviary/android/feather/effects/StickersPanel$StickerPacksAdapter;->mFolderIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v14, v1}, Lcom/aviary/android/feather/effects/StickersPanel$StickerPackThumbnailCallable;-><init>(Lcom/aviary/android/feather/library/plugins/PluginFactory$InternalPlugin;Landroid/graphics/drawable/BitmapDrawable;)V

    .line 1559
    .local v2, "executor":Lcom/aviary/android/feather/effects/StickersPanel$StickerPackThumbnailCallable;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aviary/android/feather/effects/StickersPanel$StickerPacksAdapter;->this$0:Lcom/aviary/android/feather/effects/StickersPanel;

    # getter for: Lcom/aviary/android/feather/effects/StickersPanel;->mImageManager:Lcom/aviary/android/feather/async_tasks/AsyncImageManager;
    invoke-static {v1}, Lcom/aviary/android/feather/effects/StickersPanel;->access$400(Lcom/aviary/android/feather/effects/StickersPanel;)Lcom/aviary/android/feather/async_tasks/AsyncImageManager;

    move-result-object v1

    invoke-virtual {v14}, Lcom/aviary/android/feather/library/plugins/PluginFactory$InternalPlugin;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v8, Lcom/aviary/android/feather/effects/BordersPanel$ViewHolder;->image:Landroid/widget/ImageView;

    const/4 v5, 0x1

    sget-object v6, Lcom/aviary/android/feather/async_tasks/AsyncImageManager$Priority;->HIGH:Lcom/aviary/android/feather/async_tasks/AsyncImageManager$Priority;

    invoke-virtual/range {v1 .. v6}, Lcom/aviary/android/feather/async_tasks/AsyncImageManager;->execute(Ljava/util/concurrent/Callable;Ljava/lang/String;Landroid/widget/ImageView;ILcom/aviary/android/feather/async_tasks/AsyncImageManager$Priority;)V

    .line 1578
    .end local v2    # "executor":Lcom/aviary/android/feather/effects/StickersPanel$StickerPackThumbnailCallable;
    .end local v9    # "item":Lcom/aviary/android/feather/effects/StickersPanel$StickerEffectPack;
    .end local v14    # "plugin":Lcom/aviary/android/feather/library/plugins/PluginFactory$InternalPlugin;
    :cond_2
    :goto_2
    return-object p2

    .line 1525
    :cond_3
    const/4 v1, 0x2

    if-eq v15, v1, :cond_4

    const/4 v1, 0x3

    if-ne v15, v1, :cond_6

    .line 1526
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/aviary/android/feather/effects/StickersPanel$StickerPacksAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const/4 v1, 0x2

    if-ne v15, v1, :cond_5

    move-object/from16 v0, p0

    iget v1, v0, Lcom/aviary/android/feather/effects/StickersPanel$StickerPacksAdapter;->mLayoutResId:I

    :goto_3
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v3, v1, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 1528
    sget v1, Lcom/aviary/android/feather/R$id;->aviary_text:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v8, Lcom/aviary/android/feather/effects/BordersPanel$ViewHolder;->text:Landroid/widget/TextView;

    .line 1529
    sget v1, Lcom/aviary/android/feather/R$id;->aviary_image:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v8, Lcom/aviary/android/feather/effects/BordersPanel$ViewHolder;->image:Landroid/widget/ImageView;

    .line 1530
    iget-object v1, v8, Lcom/aviary/android/feather/effects/BordersPanel$ViewHolder;->image:Landroid/widget/ImageView;

    sget v3, Lcom/aviary/android/feather/R$drawable;->aviary_sticker_pack_background:I

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1532
    iget-object v1, v8, Lcom/aviary/android/feather/effects/BordersPanel$ViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    .line 1533
    .restart local v13    # "params":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aviary/android/feather/effects/StickersPanel$StickerPacksAdapter;->this$0:Lcom/aviary/android/feather/effects/StickersPanel;

    # getter for: Lcom/aviary/android/feather/effects/StickersPanel;->mPackThumbSize:I
    invoke-static {v1}, Lcom/aviary/android/feather/effects/StickersPanel;->access$1200(Lcom/aviary/android/feather/effects/StickersPanel;)I

    move-result v1

    iput v1, v13, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, v13, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1534
    iget-object v1, v8, Lcom/aviary/android/feather/effects/BordersPanel$ViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v1, v13}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1536
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aviary/android/feather/effects/StickersPanel$StickerPacksAdapter;->this$0:Lcom/aviary/android/feather/effects/StickersPanel;

    # getter for: Lcom/aviary/android/feather/effects/StickersPanel;->mPackCellWidth:I
    invoke-static {v1}, Lcom/aviary/android/feather/effects/StickersPanel;->access$1100(Lcom/aviary/android/feather/effects/StickersPanel;)I

    move-result v12

    .line 1538
    goto/16 :goto_0

    .line 1526
    .end local v13    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_5
    move-object/from16 v0, p0

    iget v1, v0, Lcom/aviary/android/feather/effects/StickersPanel$StickerPacksAdapter;->mExternalLayoutResId:I

    goto :goto_3

    .line 1538
    :cond_6
    const/4 v1, 0x4

    if-ne v15, v1, :cond_7

    .line 1539
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aviary/android/feather/effects/StickersPanel$StickerPacksAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v3, Lcom/aviary/android/feather/R$layout;->aviary_thumb_divider_left:I

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v1, v3, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 1540
    const/4 v12, -0x2

    goto/16 :goto_0

    .line 1541
    :cond_7
    const/4 v1, 0x5

    if-ne v15, v1, :cond_1

    .line 1542
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aviary/android/feather/effects/StickersPanel$StickerPacksAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v3, Lcom/aviary/android/feather/R$layout;->aviary_thumb_divider_right:I

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v1, v3, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 1543
    const/4 v12, -0x2

    goto/16 :goto_0

    .line 1549
    :cond_8
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "holder":Lcom/aviary/android/feather/effects/BordersPanel$ViewHolder;
    check-cast v8, Lcom/aviary/android/feather/effects/BordersPanel$ViewHolder;

    .restart local v8    # "holder":Lcom/aviary/android/feather/effects/BordersPanel$ViewHolder;
    goto/16 :goto_1

    .line 1561
    :cond_9
    const/4 v1, 0x3

    if-ne v15, v1, :cond_2

    .line 1563
    invoke-virtual/range {p0 .. p1}, Lcom/aviary/android/feather/effects/StickersPanel$StickerPacksAdapter;->getItem(I)Lcom/aviary/android/feather/effects/StickersPanel$StickerEffectPack;

    move-result-object v9

    .line 1565
    .restart local v9    # "item":Lcom/aviary/android/feather/effects/StickersPanel$StickerEffectPack;
    iget-object v14, v9, Lcom/aviary/android/feather/effects/StickersPanel$StickerEffectPack;->mPluginRef:Lcom/aviary/android/feather/library/plugins/PluginFactory$IPlugin;

    check-cast v14, Lcom/aviary/android/feather/library/plugins/PluginFactory$ExternalPlugin;

    .line 1567
    .local v14, "plugin":Lcom/aviary/android/feather/library/plugins/PluginFactory$ExternalPlugin;
    iget-object v1, v8, Lcom/aviary/android/feather/effects/BordersPanel$ViewHolder;->image:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/aviary/android/feather/effects/StickersPanel$StickerPacksAdapter;->mExternalFolderIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1568
    iget-object v1, v8, Lcom/aviary/android/feather/effects/BordersPanel$ViewHolder;->text:Landroid/widget/TextView;

    iget-object v3, v9, Lcom/aviary/android/feather/effects/StickersPanel$StickerEffectPack;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1570
    if-eqz v14, :cond_2

    .line 1571
    new-instance v2, Lcom/aviary/android/feather/effects/StickersPanel$ExternalThumbnailCallable;

    invoke-virtual {v14}, Lcom/aviary/android/feather/library/plugins/PluginFactory$ExternalPlugin;->getIconUrl()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aviary/android/feather/effects/StickersPanel$StickerPacksAdapter;->this$0:Lcom/aviary/android/feather/effects/StickersPanel;

    # getter for: Lcom/aviary/android/feather/effects/StickersPanel;->mCacheService:Lcom/aviary/android/feather/library/services/ImageCacheService;
    invoke-static {v1}, Lcom/aviary/android/feather/effects/StickersPanel;->access$1300(Lcom/aviary/android/feather/effects/StickersPanel;)Lcom/aviary/android/feather/library/services/ImageCacheService;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/aviary/android/feather/effects/StickersPanel$StickerPacksAdapter;->mExternalFolderIcon:Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aviary/android/feather/effects/StickersPanel$StickerPacksAdapter;->this$0:Lcom/aviary/android/feather/effects/StickersPanel;

    .line 1572
    invoke-virtual {v1}, Lcom/aviary/android/feather/effects/StickersPanel;->getContext()Lcom/aviary/android/feather/library/services/IAviaryController;

    move-result-object v1

    invoke-interface {v1}, Lcom/aviary/android/feather/library/services/IAviaryController;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/aviary/android/feather/R$drawable;->aviary_ic_na:I

    invoke-direct/range {v2 .. v7}, Lcom/aviary/android/feather/effects/StickersPanel$ExternalThumbnailCallable;-><init>(Ljava/lang/String;Lcom/aviary/android/feather/library/services/ImageCacheService;Landroid/graphics/drawable/BitmapDrawable;Landroid/content/res/Resources;I)V

    .line 1574
    .local v2, "executor":Lcom/aviary/android/feather/effects/StickersPanel$ExternalThumbnailCallable;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aviary/android/feather/effects/StickersPanel$StickerPacksAdapter;->this$0:Lcom/aviary/android/feather/effects/StickersPanel;

    # getter for: Lcom/aviary/android/feather/effects/StickersPanel;->mImageManager:Lcom/aviary/android/feather/async_tasks/AsyncImageManager;
    invoke-static {v1}, Lcom/aviary/android/feather/effects/StickersPanel;->access$400(Lcom/aviary/android/feather/effects/StickersPanel;)Lcom/aviary/android/feather/async_tasks/AsyncImageManager;

    move-result-object v1

    invoke-virtual {v14}, Lcom/aviary/android/feather/library/plugins/PluginFactory$ExternalPlugin;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v8, Lcom/aviary/android/feather/effects/BordersPanel$ViewHolder;->image:Landroid/widget/ImageView;

    const/4 v5, 0x1

    sget-object v6, Lcom/aviary/android/feather/async_tasks/AsyncImageManager$Priority;->LOW:Lcom/aviary/android/feather/async_tasks/AsyncImageManager$Priority;

    invoke-virtual/range {v1 .. v6}, Lcom/aviary/android/feather/async_tasks/AsyncImageManager;->execute(Ljava/util/concurrent/Callable;Ljava/lang/String;Landroid/widget/ImageView;ILcom/aviary/android/feather/async_tasks/AsyncImageManager$Priority;)V

    goto/16 :goto_2
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 1448
    const/4 v0, 0x6

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 1463
    const/4 v0, 0x0

    return v0
.end method
