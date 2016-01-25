.class Lcom/liquable/nemo/gallery/GalleryActivity$10;
.super Lcom/liquable/nemo/util/SendTextAsyncTask;
.source "GalleryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/gallery/GalleryActivity;->sendPictureMessage(Lcom/liquable/nemo/group/model/ChatGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/liquable/nemo/util/SendTextAsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/gallery/GalleryActivity;

.field final synthetic val$chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/gallery/GalleryActivity;Lcom/liquable/nemo/group/model/ChatGroup;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/gallery/GalleryActivity;

    .prologue
    .line 435
    iput-object p1, p0, Lcom/liquable/nemo/gallery/GalleryActivity$10;->this$0:Lcom/liquable/nemo/gallery/GalleryActivity;

    iput-object p2, p0, Lcom/liquable/nemo/gallery/GalleryActivity$10;->val$chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    invoke-direct {p0}, Lcom/liquable/nemo/util/SendTextAsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 435
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/gallery/GalleryActivity$10;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 8
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 438
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/liquable/nemo/group/model/ChatGroup;

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/liquable/nemo/gallery/GalleryActivity$10;->val$chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    aput-object v3, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 439
    .local v2, "chatGroups":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/group/model/ChatGroup;>;"
    iget-object v0, p0, Lcom/liquable/nemo/gallery/GalleryActivity$10;->this$0:Lcom/liquable/nemo/gallery/GalleryActivity;

    # getter for: Lcom/liquable/nemo/gallery/GalleryActivity;->selectedPictures:Lcom/liquable/nemo/gallery/GalleryActivity$SelectedPictures;
    invoke-static {v0}, Lcom/liquable/nemo/gallery/GalleryActivity;->access$400(Lcom/liquable/nemo/gallery/GalleryActivity;)Lcom/liquable/nemo/gallery/GalleryActivity$SelectedPictures;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liquable/nemo/gallery/GalleryActivity$SelectedPictures;->toImmutableList()Ljava/util/List;

    move-result-object v7

    .line 440
    .local v7, "pictures":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/android/provider/PictureInfo;>;"
    iget-object v0, p0, Lcom/liquable/nemo/gallery/GalleryActivity$10;->this$0:Lcom/liquable/nemo/gallery/GalleryActivity;

    invoke-virtual {v0}, Lcom/liquable/nemo/gallery/GalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/liquable/nemo/gallery/GalleryActivity;->isSecret(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 441
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v0

    sget-object v1, Lcom/liquable/nemo/analytics/IAnalyticsService$ShareSecretPictureFrom;->gallery:Lcom/liquable/nemo/analytics/IAnalyticsService$ShareSecretPictureFrom;

    sget-object v3, Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;->chat:Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;

    new-instance v4, Lcom/liquable/nemo/analytics/PictureParameters;

    invoke-direct {v4}, Lcom/liquable/nemo/analytics/PictureParameters;-><init>()V

    .line 446
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v5

    .line 442
    invoke-interface/range {v0 .. v5}, Lcom/liquable/nemo/analytics/IAnalyticsService;->chattingSendSecretPictureMessage(Lcom/liquable/nemo/analytics/IAnalyticsService$ShareSecretPictureFrom;Ljava/util/List;Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;Lcom/liquable/nemo/analytics/PictureParameters;I)V

    .line 453
    :goto_0
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/liquable/nemo/android/provider/PictureInfo;

    .line 454
    .local v6, "pictureInfo":Lcom/liquable/nemo/android/provider/PictureInfo;
    iget-object v1, p0, Lcom/liquable/nemo/gallery/GalleryActivity$10;->this$0:Lcom/liquable/nemo/gallery/GalleryActivity;

    invoke-virtual {v1}, Lcom/liquable/nemo/gallery/GalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1}, Lcom/liquable/nemo/gallery/GalleryActivity;->isSecret(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 455
    iget-object v1, p0, Lcom/liquable/nemo/gallery/GalleryActivity$10;->this$0:Lcom/liquable/nemo/gallery/GalleryActivity;

    invoke-virtual {v6, v2, v1}, Lcom/liquable/nemo/android/provider/PictureInfo;->sendSecretMessages(Ljava/util/List;Landroid/content/Context;)Z

    goto :goto_1

    .line 448
    .end local v6    # "pictureInfo":Lcom/liquable/nemo/android/provider/PictureInfo;
    :cond_0
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v0

    sget-object v1, Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;->chat:Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;

    .line 450
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    new-instance v4, Lcom/liquable/nemo/analytics/PictureParameters;

    invoke-direct {v4}, Lcom/liquable/nemo/analytics/PictureParameters;-><init>()V

    .line 448
    invoke-interface {v0, v2, v1, v3, v4}, Lcom/liquable/nemo/analytics/IAnalyticsService;->chattingSendPictureMessage(Ljava/util/List;Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;ILcom/liquable/nemo/analytics/PictureParameters;)V

    goto :goto_0

    .line 457
    .restart local v6    # "pictureInfo":Lcom/liquable/nemo/android/provider/PictureInfo;
    :cond_1
    iget-object v1, p0, Lcom/liquable/nemo/gallery/GalleryActivity$10;->this$0:Lcom/liquable/nemo/gallery/GalleryActivity;

    invoke-virtual {v6, v2, v1}, Lcom/liquable/nemo/android/provider/PictureInfo;->sendMessages(Ljava/util/List;Landroid/content/Context;)Z

    goto :goto_1

    .line 460
    .end local v6    # "pictureInfo":Lcom/liquable/nemo/android/provider/PictureInfo;
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 435
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/gallery/GalleryActivity$10;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 465
    iget-object v0, p0, Lcom/liquable/nemo/gallery/GalleryActivity$10;->this$0:Lcom/liquable/nemo/gallery/GalleryActivity;

    const v1, 0x7f0d0498

    invoke-static {v0, v1}, Lcom/liquable/nemo/util/NemoUIs;->showToast(Landroid/content/Context;I)V

    .line 466
    return-void
.end method
