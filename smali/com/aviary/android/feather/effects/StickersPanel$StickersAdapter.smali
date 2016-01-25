.class Lcom/aviary/android/feather/effects/StickersPanel$StickersAdapter;
.super Landroid/widget/ArrayAdapter;
.source "StickersPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aviary/android/feather/effects/StickersPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StickersAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mStickerResourceId:I

.field final synthetic this$0:Lcom/aviary/android/feather/effects/StickersPanel;


# direct methods
.method public constructor <init>(Lcom/aviary/android/feather/effects/StickersPanel;Landroid/content/Context;I[Ljava/lang/String;)V
    .locals 5
    .param p1, "this$0"    # Lcom/aviary/android/feather/effects/StickersPanel;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "textViewResourceId"    # I
    .param p4, "objects"    # [Ljava/lang/String;

    .prologue
    .line 1730
    iput-object p1, p0, Lcom/aviary/android/feather/effects/StickersPanel$StickersAdapter;->this$0:Lcom/aviary/android/feather/effects/StickersPanel;

    .line 1731
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 1733
    iget-object v0, p1, Lcom/aviary/android/feather/effects/StickersPanel;->mLogger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "StickersAdapter. size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 1735
    iput p3, p0, Lcom/aviary/android/feather/effects/StickersPanel$StickersAdapter;->mStickerResourceId:I

    .line 1736
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/aviary/android/feather/effects/StickersPanel$StickersAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 1737
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 1744
    if-nez p2, :cond_0

    .line 1745
    iget-object v0, p0, Lcom/aviary/android/feather/effects/StickersPanel$StickersAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget v4, p0, Lcom/aviary/android/feather/effects/StickersPanel$StickersAdapter;->mStickerResourceId:I

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 1746
    .local v7, "view":Landroid/view/View;
    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    iget-object v0, p0, Lcom/aviary/android/feather/effects/StickersPanel$StickersAdapter;->this$0:Lcom/aviary/android/feather/effects/StickersPanel;

    # getter for: Lcom/aviary/android/feather/effects/StickersPanel;->mStickerCellWidth:I
    invoke-static {v0}, Lcom/aviary/android/feather/effects/StickersPanel;->access$1400(Lcom/aviary/android/feather/effects/StickersPanel;)I

    move-result v0

    const/4 v4, -0x1

    invoke-direct {v6, v0, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1752
    .local v6, "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v7, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1757
    .end local v6    # "params":Landroid/view/ViewGroup$LayoutParams;
    :goto_0
    sget v0, Lcom/aviary/android/feather/R$id;->image:I

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 1759
    .local v3, "image":Landroid/widget/ImageView;
    invoke-virtual {p0, p1}, Lcom/aviary/android/feather/effects/StickersPanel$StickersAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1761
    .local v2, "sticker":Ljava/lang/String;
    new-instance v1, Lcom/aviary/android/feather/effects/StickersPanel$StickerThumbnailCallable;

    iget-object v0, p0, Lcom/aviary/android/feather/effects/StickersPanel$StickersAdapter;->this$0:Lcom/aviary/android/feather/effects/StickersPanel;

    # getter for: Lcom/aviary/android/feather/effects/StickersPanel;->mPlugin:Lcom/aviary/android/feather/library/plugins/PluginFactory$IPlugin;
    invoke-static {v0}, Lcom/aviary/android/feather/effects/StickersPanel;->access$1500(Lcom/aviary/android/feather/effects/StickersPanel;)Lcom/aviary/android/feather/library/plugins/PluginFactory$IPlugin;

    move-result-object v0

    check-cast v0, Lcom/aviary/android/feather/library/plugins/PluginFactory$InternalPlugin;

    iget-object v4, p0, Lcom/aviary/android/feather/effects/StickersPanel$StickersAdapter;->this$0:Lcom/aviary/android/feather/effects/StickersPanel;

    # getter for: Lcom/aviary/android/feather/effects/StickersPanel;->mStickerThumbSize:I
    invoke-static {v4}, Lcom/aviary/android/feather/effects/StickersPanel;->access$1600(Lcom/aviary/android/feather/effects/StickersPanel;)I

    move-result v4

    invoke-direct {v1, v0, v2, v4}, Lcom/aviary/android/feather/effects/StickersPanel$StickerThumbnailCallable;-><init>(Lcom/aviary/android/feather/library/plugins/PluginFactory$InternalPlugin;Ljava/lang/String;I)V

    .line 1762
    .local v1, "executor":Lcom/aviary/android/feather/effects/StickersPanel$StickerThumbnailCallable;
    iget-object v0, p0, Lcom/aviary/android/feather/effects/StickersPanel$StickersAdapter;->this$0:Lcom/aviary/android/feather/effects/StickersPanel;

    # getter for: Lcom/aviary/android/feather/effects/StickersPanel;->mImageManager:Lcom/aviary/android/feather/async_tasks/AsyncImageManager;
    invoke-static {v0}, Lcom/aviary/android/feather/effects/StickersPanel;->access$400(Lcom/aviary/android/feather/effects/StickersPanel;)Lcom/aviary/android/feather/async_tasks/AsyncImageManager;

    move-result-object v0

    const/4 v4, 0x2

    sget-object v5, Lcom/aviary/android/feather/async_tasks/AsyncImageManager$Priority;->HIGH:Lcom/aviary/android/feather/async_tasks/AsyncImageManager$Priority;

    invoke-virtual/range {v0 .. v5}, Lcom/aviary/android/feather/async_tasks/AsyncImageManager;->execute(Ljava/util/concurrent/Callable;Ljava/lang/String;Landroid/widget/ImageView;ILcom/aviary/android/feather/async_tasks/AsyncImageManager$Priority;)V

    .line 1764
    return-object v7

    .line 1754
    .end local v1    # "executor":Lcom/aviary/android/feather/effects/StickersPanel$StickerThumbnailCallable;
    .end local v2    # "sticker":Ljava/lang/String;
    .end local v3    # "image":Landroid/widget/ImageView;
    .end local v7    # "view":Landroid/view/View;
    :cond_0
    move-object v7, p2

    .restart local v7    # "view":Landroid/view/View;
    goto :goto_0
.end method
