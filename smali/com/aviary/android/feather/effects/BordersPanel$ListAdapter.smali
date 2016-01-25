.class Lcom/aviary/android/feather/effects/BordersPanel$ListAdapter;
.super Lit/sephiroth/android/library/widget/BaseAdapterExtended;
.source "BordersPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aviary/android/feather/effects/BordersPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lit/sephiroth/android/library/widget/BaseAdapterExtended",
        "<",
        "Lcom/aviary/android/feather/effects/BordersPanel$EffectPack;",
        ">;"
    }
.end annotation


# instance fields
.field mCount:I

.field mDefaultResId:I

.field mDividerResId:I

.field mExternalFolderIcon:Landroid/graphics/drawable/BitmapDrawable;

.field mExternalResId:I

.field mInflater:Landroid/view/LayoutInflater;

.field mLock:Ljava/lang/Object;

.field mMoreResId:I

.field mObjects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aviary/android/feather/effects/BordersPanel$EffectPack;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/aviary/android/feather/effects/BordersPanel;


# direct methods
.method public constructor <init>(Lcom/aviary/android/feather/effects/BordersPanel;Landroid/content/Context;IIIILjava/util/List;)V
    .locals 1
    .param p1, "this$0"    # Lcom/aviary/android/feather/effects/BordersPanel;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "defaultResId"    # I
    .param p4, "moreResId"    # I
    .param p5, "externalResId"    # I
    .param p6, "dividerResId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "IIII",
            "Ljava/util/List",
            "<",
            "Lcom/aviary/android/feather/effects/BordersPanel$EffectPack;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 977
    .local p7, "items":Ljava/util/List;, "Ljava/util/List<Lcom/aviary/android/feather/effects/BordersPanel$EffectPack;>;"
    iput-object p1, p0, Lcom/aviary/android/feather/effects/BordersPanel$ListAdapter;->this$0:Lcom/aviary/android/feather/effects/BordersPanel;

    .line 978
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/BaseAdapterExtended;-><init>()V

    .line 967
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/aviary/android/feather/effects/BordersPanel$ListAdapter;->mLock:Ljava/lang/Object;

    .line 974
    const/4 v0, -0x1

    iput v0, p0, Lcom/aviary/android/feather/effects/BordersPanel$ListAdapter;->mCount:I

    .line 979
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/aviary/android/feather/effects/BordersPanel$ListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 980
    iput-object p7, p0, Lcom/aviary/android/feather/effects/BordersPanel$ListAdapter;->mObjects:Ljava/util/List;

    .line 981
    iput p3, p0, Lcom/aviary/android/feather/effects/BordersPanel$ListAdapter;->mDefaultResId:I

    .line 982
    iput p4, p0, Lcom/aviary/android/feather/effects/BordersPanel$ListAdapter;->mMoreResId:I

    .line 983
    iput p5, p0, Lcom/aviary/android/feather/effects/BordersPanel$ListAdapter;->mExternalResId:I

    .line 984
    iput p6, p0, Lcom/aviary/android/feather/effects/BordersPanel$ListAdapter;->mDividerResId:I

    .line 985
    invoke-virtual {p0, p2}, Lcom/aviary/android/feather/effects/BordersPanel$ListAdapter;->getExternalBackgroundDrawable(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/aviary/android/feather/effects/BordersPanel$ListAdapter;->mExternalFolderIcon:Landroid/graphics/drawable/BitmapDrawable;

    .line 986
    return-void
.end method


# virtual methods
.method protected createContentCallable(Lcom/aviary/android/feather/effects/BordersPanel$EffectPack;ILjava/lang/String;)Ljava/util/concurrent/Callable;
    .locals 6
    .param p1, "item"    # Lcom/aviary/android/feather/effects/BordersPanel$EffectPack;
    .param p2, "position"    # I
    .param p3, "effectName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aviary/android/feather/effects/BordersPanel$EffectPack;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/Callable",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1145
    new-instance v0, Lcom/aviary/android/feather/effects/BordersPanel$BorderThumbnailCallable;

    iget-object v1, p0, Lcom/aviary/android/feather/effects/BordersPanel$ListAdapter;->this$0:Lcom/aviary/android/feather/effects/BordersPanel;

    iget-object v1, v1, Lcom/aviary/android/feather/effects/BordersPanel;->mCacheService:Lcom/aviary/android/feather/library/services/ImageCacheService;

    iget-object v2, p1, Lcom/aviary/android/feather/effects/BordersPanel$EffectPack;->mPluginRef:Lcom/aviary/android/feather/library/plugins/PluginFactory$IPlugin;

    check-cast v2, Lcom/aviary/android/feather/library/plugins/PluginFactory$InternalPlugin;

    iget-object v3, p0, Lcom/aviary/android/feather/effects/BordersPanel$ListAdapter;->this$0:Lcom/aviary/android/feather/effects/BordersPanel;

    iget-object v4, v3, Lcom/aviary/android/feather/effects/BordersPanel;->mThumbBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/aviary/android/feather/effects/BordersPanel$ListAdapter;->this$0:Lcom/aviary/android/feather/effects/BordersPanel;

    # getter for: Lcom/aviary/android/feather/effects/BordersPanel;->mThumbSize:I
    invoke-static {v3}, Lcom/aviary/android/feather/effects/BordersPanel;->access$400(Lcom/aviary/android/feather/effects/BordersPanel;)I

    move-result v5

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/aviary/android/feather/effects/BordersPanel$BorderThumbnailCallable;-><init>(Lcom/aviary/android/feather/library/services/ImageCacheService;Lcom/aviary/android/feather/library/plugins/PluginFactory$InternalPlugin;Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    return-object v0
.end method

.method protected createExternalContentCallable(Ljava/lang/String;)Ljava/util/concurrent/Callable;
    .locals 6
    .param p1, "iconUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/Callable",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1149
    new-instance v0, Lcom/aviary/android/feather/effects/BordersPanel$ExternalFramesThumbnailCallable;

    iget-object v1, p0, Lcom/aviary/android/feather/effects/BordersPanel$ListAdapter;->this$0:Lcom/aviary/android/feather/effects/BordersPanel;

    iget-object v2, v1, Lcom/aviary/android/feather/effects/BordersPanel;->mCacheService:Lcom/aviary/android/feather/library/services/ImageCacheService;

    iget-object v3, p0, Lcom/aviary/android/feather/effects/BordersPanel$ListAdapter;->mExternalFolderIcon:Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/aviary/android/feather/effects/BordersPanel$ListAdapter;->this$0:Lcom/aviary/android/feather/effects/BordersPanel;

    invoke-virtual {v1}, Lcom/aviary/android/feather/effects/BordersPanel;->getContext()Lcom/aviary/android/feather/library/services/IAviaryController;

    move-result-object v1

    invoke-interface {v1}, Lcom/aviary/android/feather/library/services/IAviaryController;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/aviary/android/feather/R$drawable;->aviary_ic_na:I

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/aviary/android/feather/effects/BordersPanel$ExternalFramesThumbnailCallable;-><init>(Ljava/lang/String;Lcom/aviary/android/feather/library/services/ImageCacheService;Landroid/graphics/drawable/BitmapDrawable;Landroid/content/res/Resources;I)V

    return-object v0
.end method

.method public getCount()I
    .locals 4

    .prologue
    .line 1007
    iget v2, p0, Lcom/aviary/android/feather/effects/BordersPanel$ListAdapter;->mCount:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 1008
    const/4 v1, 0x0

    .line 1009
    .local v1, "total":I
    iget-object v2, p0, Lcom/aviary/android/feather/effects/BordersPanel$ListAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aviary/android/feather/effects/BordersPanel$EffectPack;

    .line 1010
    .local v0, "pack":Lcom/aviary/android/feather/effects/BordersPanel$EffectPack;
    if-nez v0, :cond_0

    .line 1011
    add-int/lit8 v1, v1, 0x1

    .line 1012
    goto :goto_0

    .line 1014
    :cond_0
    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/effects/BordersPanel$EffectPack;->setIndex(I)V

    .line 1015
    iget v3, v0, Lcom/aviary/android/feather/effects/BordersPanel$EffectPack;->size:I

    add-int/2addr v1, v3

    .line 1016
    goto :goto_0

    .line 1018
    .end local v0    # "pack":Lcom/aviary/android/feather/effects/BordersPanel$EffectPack;
    :cond_1
    iput v1, p0, Lcom/aviary/android/feather/effects/BordersPanel$ListAdapter;->mCount:I

    .line 1021
    .end local v1    # "total":I
    :cond_2
    iget v2, p0, Lcom/aviary/android/feather/effects/BordersPanel$ListAdapter;->mCount:I

    return v2
.end method

.method protected getExternalBackgroundDrawable(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 989
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/aviary/android/feather/R$drawable;->aviary_frames_pack_background:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    return-object v0
.end method

.method public getItem(I)Lcom/aviary/android/feather/effects/BordersPanel$EffectPack;
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 994
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/aviary/android/feather/effects/BordersPanel$ListAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 995
    iget-object v2, p0, Lcom/aviary/android/feather/effects/BordersPanel$ListAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aviary/android/feather/effects/BordersPanel$EffectPack;

    .line 996
    .local v1, "pack":Lcom/aviary/android/feather/effects/BordersPanel$EffectPack;
    if-nez v1, :cond_1

    .line 994
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 998
    :cond_1
    iget v2, v1, Lcom/aviary/android/feather/effects/BordersPanel$EffectPack;->index:I

    if-lt p1, v2, :cond_0

    iget v2, v1, Lcom/aviary/android/feather/effects/BordersPanel$EffectPack;->index:I

    iget v3, v1, Lcom/aviary/android/feather/effects/BordersPanel$EffectPack;->size:I

    add-int/2addr v2, v3

    if-ge p1, v2, :cond_0

    .line 1002
    .end local v1    # "pack":Lcom/aviary/android/feather/effects/BordersPanel$EffectPack;
    :goto_1
    return-object v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 957
    invoke-virtual {p0, p1}, Lcom/aviary/android/feather/effects/BordersPanel$ListAdapter;->getItem(I)Lcom/aviary/android/feather/effects/BordersPanel$EffectPack;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 1026
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 4
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x0

    .line 1037
    iget-object v2, p0, Lcom/aviary/android/feather/effects/BordersPanel$ListAdapter;->this$0:Lcom/aviary/android/feather/effects/BordersPanel;

    # getter for: Lcom/aviary/android/feather/effects/BordersPanel;->mExternalPacksEnabled:Z
    invoke-static {v2}, Lcom/aviary/android/feather/effects/BordersPanel;->access$200(Lcom/aviary/android/feather/effects/BordersPanel;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1053
    :goto_0
    return v1

    .line 1039
    :cond_0
    if-ltz p1, :cond_1

    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/BordersPanel$ListAdapter;->getCount()I

    move-result v2

    if-lt p1, v2, :cond_2

    .line 1040
    :cond_1
    const/4 v1, -0x1

    goto :goto_0

    .line 1043
    :cond_2
    invoke-virtual {p0, p1}, Lcom/aviary/android/feather/effects/BordersPanel$ListAdapter;->getItem(I)Lcom/aviary/android/feather/effects/BordersPanel$EffectPack;

    move-result-object v0

    .line 1045
    .local v0, "item":Lcom/aviary/android/feather/effects/BordersPanel$EffectPack;
    sget-object v2, Lcom/aviary/android/feather/effects/BordersPanel$12;->$SwitchMap$com$aviary$android$feather$effects$BordersPanel$EffectPack$EffectPackType:[I

    iget-object v3, v0, Lcom/aviary/android/feather/effects/BordersPanel$EffectPack;->mType:Lcom/aviary/android/feather/effects/BordersPanel$EffectPack$EffectPackType;

    invoke-virtual {v3}, Lcom/aviary/android/feather/effects/BordersPanel$EffectPack$EffectPackType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 1046
    :pswitch_0
    const/4 v1, 0x2

    goto :goto_0

    .line 1047
    :pswitch_1
    const/4 v1, 0x1

    goto :goto_0

    .line 1048
    :pswitch_2
    const/4 v1, 0x4

    goto :goto_0

    .line 1049
    :pswitch_3
    const/4 v1, 0x5

    goto :goto_0

    .line 1050
    :pswitch_4
    const/4 v1, 0x3

    goto :goto_0

    .line 1045
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
    .locals 17
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 1061
    invoke-virtual/range {p0 .. p1}, Lcom/aviary/android/feather/effects/BordersPanel$ListAdapter;->getItem(I)Lcom/aviary/android/feather/effects/BordersPanel$EffectPack;

    move-result-object v12

    .line 1062
    .local v12, "item":Lcom/aviary/android/feather/effects/BordersPanel$EffectPack;
    invoke-virtual/range {p0 .. p1}, Lcom/aviary/android/feather/effects/BordersPanel$ListAdapter;->getItemViewType(I)I

    move-result v16

    .line 1064
    .local v16, "type":I
    const/4 v13, -0x2

    .line 1066
    .local v13, "layoutWidth":I
    if-nez p2, :cond_8

    .line 1068
    if-nez v16, :cond_3

    .line 1069
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aviary/android/feather/effects/BordersPanel$ListAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/aviary/android/feather/effects/BordersPanel$ListAdapter;->mDefaultResId:I

    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v2, v4, v0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 1070
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aviary/android/feather/effects/BordersPanel$ListAdapter;->this$0:Lcom/aviary/android/feather/effects/BordersPanel;

    # getter for: Lcom/aviary/android/feather/effects/BordersPanel;->mCellWidth:I
    invoke-static {v2}, Lcom/aviary/android/feather/effects/BordersPanel;->access$300(Lcom/aviary/android/feather/effects/BordersPanel;)I

    move-result v13

    .line 1088
    :cond_0
    :goto_0
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v2, v13, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1089
    new-instance v11, Lcom/aviary/android/feather/effects/BordersPanel$ViewHolder;

    invoke-direct {v11}, Lcom/aviary/android/feather/effects/BordersPanel$ViewHolder;-><init>()V

    .line 1091
    .local v11, "holder":Lcom/aviary/android/feather/effects/BordersPanel$ViewHolder;
    sget v2, Lcom/aviary/android/feather/R$id;->aviary_image:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v11, Lcom/aviary/android/feather/effects/BordersPanel$ViewHolder;->image:Landroid/widget/ImageView;

    .line 1092
    sget v2, Lcom/aviary/android/feather/R$id;->aviary_text:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v11, Lcom/aviary/android/feather/effects/BordersPanel$ViewHolder;->text:Landroid/widget/TextView;

    .line 1094
    const/4 v2, 0x3

    move/from16 v0, v16

    if-eq v0, v2, :cond_1

    iget-object v2, v11, Lcom/aviary/android/feather/effects/BordersPanel$ViewHolder;->image:Landroid/widget/ImageView;

    if-eqz v2, :cond_1

    .line 1095
    iget-object v2, v11, Lcom/aviary/android/feather/effects/BordersPanel$ViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    .line 1096
    .local v14, "params":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aviary/android/feather/effects/BordersPanel$ListAdapter;->this$0:Lcom/aviary/android/feather/effects/BordersPanel;

    # getter for: Lcom/aviary/android/feather/effects/BordersPanel;->mThumbSize:I
    invoke-static {v2}, Lcom/aviary/android/feather/effects/BordersPanel;->access$400(Lcom/aviary/android/feather/effects/BordersPanel;)I

    move-result v2

    iput v2, v14, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1097
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aviary/android/feather/effects/BordersPanel$ListAdapter;->this$0:Lcom/aviary/android/feather/effects/BordersPanel;

    # getter for: Lcom/aviary/android/feather/effects/BordersPanel;->mThumbSize:I
    invoke-static {v2}, Lcom/aviary/android/feather/effects/BordersPanel;->access$400(Lcom/aviary/android/feather/effects/BordersPanel;)I

    move-result v2

    iput v2, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1098
    iget-object v2, v11, Lcom/aviary/android/feather/effects/BordersPanel$ViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v2, v14}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1101
    .end local v14    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1108
    :goto_1
    if-nez v16, :cond_9

    if-eqz v12, :cond_9

    .line 1109
    iget-object v2, v11, Lcom/aviary/android/feather/effects/BordersPanel$ViewHolder;->text:Landroid/widget/TextView;

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Lcom/aviary/android/feather/effects/BordersPanel$EffectPack;->getLabelAt(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1111
    move/from16 v0, p1

    invoke-virtual {v12, v0}, Lcom/aviary/android/feather/effects/BordersPanel$EffectPack;->getItemAt(I)Ljava/lang/CharSequence;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 1112
    .local v10, "effectName":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v12, v1, v10}, Lcom/aviary/android/feather/effects/BordersPanel$ListAdapter;->createContentCallable(Lcom/aviary/android/feather/effects/BordersPanel$EffectPack;ILjava/lang/String;)Ljava/util/concurrent/Callable;

    move-result-object v3

    .line 1114
    .local v3, "executor":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Landroid/graphics/Bitmap;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aviary/android/feather/effects/BordersPanel$ListAdapter;->this$0:Lcom/aviary/android/feather/effects/BordersPanel;

    # getter for: Lcom/aviary/android/feather/effects/BordersPanel;->mImageManager:Lcom/aviary/android/feather/async_tasks/AsyncImageManager;
    invoke-static {v2}, Lcom/aviary/android/feather/effects/BordersPanel;->access$500(Lcom/aviary/android/feather/effects/BordersPanel;)Lcom/aviary/android/feather/async_tasks/AsyncImageManager;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v11, Lcom/aviary/android/feather/effects/BordersPanel$ViewHolder;->image:Landroid/widget/ImageView;

    const/16 v6, 0x3e8

    sget-object v7, Lcom/aviary/android/feather/async_tasks/AsyncImageManager$Priority;->HIGH:Lcom/aviary/android/feather/async_tasks/AsyncImageManager$Priority;

    invoke-virtual/range {v2 .. v7}, Lcom/aviary/android/feather/async_tasks/AsyncImageManager;->execute(Ljava/util/concurrent/Callable;Ljava/lang/String;Landroid/widget/ImageView;ILcom/aviary/android/feather/async_tasks/AsyncImageManager$Priority;)V

    .line 1141
    .end local v3    # "executor":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Landroid/graphics/Bitmap;>;"
    .end local v10    # "effectName":Ljava/lang/String;
    :cond_2
    :goto_2
    return-object p2

    .line 1071
    .end local v11    # "holder":Lcom/aviary/android/feather/effects/BordersPanel$ViewHolder;
    :cond_3
    const/4 v2, 0x1

    move/from16 v0, v16

    if-ne v0, v2, :cond_4

    .line 1072
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aviary/android/feather/effects/BordersPanel$ListAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/aviary/android/feather/effects/BordersPanel$ListAdapter;->mMoreResId:I

    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v2, v4, v0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 1073
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aviary/android/feather/effects/BordersPanel$ListAdapter;->this$0:Lcom/aviary/android/feather/effects/BordersPanel;

    # getter for: Lcom/aviary/android/feather/effects/BordersPanel;->mCellWidth:I
    invoke-static {v2}, Lcom/aviary/android/feather/effects/BordersPanel;->access$300(Lcom/aviary/android/feather/effects/BordersPanel;)I

    move-result v13

    goto/16 :goto_0

    .line 1074
    :cond_4
    const/4 v2, 0x2

    move/from16 v0, v16

    if-ne v0, v2, :cond_5

    .line 1075
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aviary/android/feather/effects/BordersPanel$ListAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/aviary/android/feather/effects/BordersPanel$ListAdapter;->mExternalResId:I

    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v2, v4, v0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 1076
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aviary/android/feather/effects/BordersPanel$ListAdapter;->this$0:Lcom/aviary/android/feather/effects/BordersPanel;

    # getter for: Lcom/aviary/android/feather/effects/BordersPanel;->mCellWidth:I
    invoke-static {v2}, Lcom/aviary/android/feather/effects/BordersPanel;->access$300(Lcom/aviary/android/feather/effects/BordersPanel;)I

    move-result v13

    goto/16 :goto_0

    .line 1077
    :cond_5
    const/4 v2, 0x3

    move/from16 v0, v16

    if-ne v0, v2, :cond_6

    .line 1078
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aviary/android/feather/effects/BordersPanel$ListAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/aviary/android/feather/effects/BordersPanel$ListAdapter;->mDividerResId:I

    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v2, v4, v0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 1079
    const/4 v13, -0x2

    goto/16 :goto_0

    .line 1080
    :cond_6
    const/4 v2, 0x4

    move/from16 v0, v16

    if-ne v0, v2, :cond_7

    .line 1081
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aviary/android/feather/effects/BordersPanel$ListAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v4, Lcom/aviary/android/feather/R$layout;->aviary_thumb_divider_left:I

    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v2, v4, v0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 1082
    const/4 v13, -0x2

    goto/16 :goto_0

    .line 1083
    :cond_7
    const/4 v2, 0x5

    move/from16 v0, v16

    if-ne v0, v2, :cond_0

    .line 1084
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aviary/android/feather/effects/BordersPanel$ListAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v4, Lcom/aviary/android/feather/R$layout;->aviary_thumb_divider_right:I

    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v2, v4, v0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 1085
    const/4 v13, -0x2

    goto/16 :goto_0

    .line 1103
    :cond_8
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/aviary/android/feather/effects/BordersPanel$ViewHolder;

    .restart local v11    # "holder":Lcom/aviary/android/feather/effects/BordersPanel$ViewHolder;
    goto/16 :goto_1

    .line 1116
    :cond_9
    const/4 v2, 0x1

    move/from16 v0, v16

    if-eq v0, v2, :cond_a

    const/4 v2, 0x2

    move/from16 v0, v16

    if-ne v0, v2, :cond_b

    .line 1118
    :cond_a
    const/4 v2, 0x2

    move/from16 v0, v16

    if-ne v0, v2, :cond_2

    .line 1119
    iget-object v15, v12, Lcom/aviary/android/feather/effects/BordersPanel$EffectPack;->mPluginRef:Lcom/aviary/android/feather/library/plugins/PluginFactory$IPlugin;

    check-cast v15, Lcom/aviary/android/feather/library/plugins/PluginFactory$ExternalPlugin;

    .line 1121
    .local v15, "plugin":Lcom/aviary/android/feather/library/plugins/PluginFactory$ExternalPlugin;
    iget-object v2, v11, Lcom/aviary/android/feather/effects/BordersPanel$ViewHolder;->image:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/aviary/android/feather/effects/BordersPanel$ListAdapter;->mExternalFolderIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1122
    iget-object v2, v11, Lcom/aviary/android/feather/effects/BordersPanel$ViewHolder;->text:Landroid/widget/TextView;

    iget-object v4, v12, Lcom/aviary/android/feather/effects/BordersPanel$EffectPack;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1124
    if-eqz v15, :cond_2

    .line 1125
    invoke-virtual {v15}, Lcom/aviary/android/feather/library/plugins/PluginFactory$ExternalPlugin;->getIconUrl()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/aviary/android/feather/effects/BordersPanel$ListAdapter;->createExternalContentCallable(Ljava/lang/String;)Ljava/util/concurrent/Callable;

    move-result-object v3

    .line 1126
    .restart local v3    # "executor":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Landroid/graphics/Bitmap;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aviary/android/feather/effects/BordersPanel$ListAdapter;->this$0:Lcom/aviary/android/feather/effects/BordersPanel;

    # getter for: Lcom/aviary/android/feather/effects/BordersPanel;->mImageManager:Lcom/aviary/android/feather/async_tasks/AsyncImageManager;
    invoke-static {v2}, Lcom/aviary/android/feather/effects/BordersPanel;->access$500(Lcom/aviary/android/feather/effects/BordersPanel;)Lcom/aviary/android/feather/async_tasks/AsyncImageManager;

    move-result-object v2

    invoke-virtual {v15}, Lcom/aviary/android/feather/library/plugins/PluginFactory$ExternalPlugin;->getIconUrl()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v11, Lcom/aviary/android/feather/effects/BordersPanel$ViewHolder;->image:Landroid/widget/ImageView;

    const/16 v6, 0xfa0

    sget-object v7, Lcom/aviary/android/feather/async_tasks/AsyncImageManager$Priority;->LOW:Lcom/aviary/android/feather/async_tasks/AsyncImageManager$Priority;

    invoke-virtual/range {v2 .. v7}, Lcom/aviary/android/feather/async_tasks/AsyncImageManager;->execute(Ljava/util/concurrent/Callable;Ljava/lang/String;Landroid/widget/ImageView;ILcom/aviary/android/feather/async_tasks/AsyncImageManager$Priority;)V

    goto/16 :goto_2

    .line 1130
    .end local v3    # "executor":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Landroid/graphics/Bitmap;>;"
    .end local v15    # "plugin":Lcom/aviary/android/feather/library/plugins/PluginFactory$ExternalPlugin;
    :cond_b
    const/4 v2, 0x3

    move/from16 v0, v16

    if-ne v0, v2, :cond_2

    .line 1131
    iget-object v2, v11, Lcom/aviary/android/feather/effects/BordersPanel$ViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 1133
    .local v9, "drawable":Landroid/graphics/drawable/Drawable;
    instance-of v2, v9, Lcom/aviary/android/feather/graphics/PluginDividerDrawable;

    if-eqz v2, :cond_c

    .line 1134
    check-cast v9, Lcom/aviary/android/feather/graphics/PluginDividerDrawable;

    .end local v9    # "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v2, v12, Lcom/aviary/android/feather/effects/BordersPanel$EffectPack;->mTitle:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/aviary/android/feather/graphics/PluginDividerDrawable;->setTitle(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1136
    .restart local v9    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_c
    new-instance v8, Lcom/aviary/android/feather/graphics/PluginDividerDrawable;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aviary/android/feather/effects/BordersPanel$ListAdapter;->this$0:Lcom/aviary/android/feather/effects/BordersPanel;

    invoke-virtual {v2}, Lcom/aviary/android/feather/effects/BordersPanel;->getContext()Lcom/aviary/android/feather/library/services/IAviaryController;

    move-result-object v2

    invoke-interface {v2}, Lcom/aviary/android/feather/library/services/IAviaryController;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    sget v4, Lcom/aviary/android/feather/R$attr;->aviaryEffectThumbDividerTextStyle:I

    iget-object v5, v12, Lcom/aviary/android/feather/effects/BordersPanel$EffectPack;->mTitle:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v8, v2, v4, v5}, Lcom/aviary/android/feather/graphics/PluginDividerDrawable;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 1137
    .local v8, "d":Lcom/aviary/android/feather/graphics/PluginDividerDrawable;
    iget-object v2, v11, Lcom/aviary/android/feather/effects/BordersPanel$ViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 1031
    const/4 v0, 0x6

    return v0
.end method
