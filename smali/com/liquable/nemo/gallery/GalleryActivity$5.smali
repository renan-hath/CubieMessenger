.class Lcom/liquable/nemo/gallery/GalleryActivity$5;
.super Ljava/lang/Object;
.source "GalleryActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/gallery/GalleryActivity;->onLoggedInCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/gallery/GalleryActivity;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/gallery/GalleryActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/gallery/GalleryActivity;

    .prologue
    .line 317
    iput-object p1, p0, Lcom/liquable/nemo/gallery/GalleryActivity$5;->this$0:Lcom/liquable/nemo/gallery/GalleryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 320
    iget-object v2, p0, Lcom/liquable/nemo/gallery/GalleryActivity$5;->this$0:Lcom/liquable/nemo/gallery/GalleryActivity;

    # getter for: Lcom/liquable/nemo/gallery/GalleryActivity;->selectedPictures:Lcom/liquable/nemo/gallery/GalleryActivity$SelectedPictures;
    invoke-static {v2}, Lcom/liquable/nemo/gallery/GalleryActivity;->access$400(Lcom/liquable/nemo/gallery/GalleryActivity;)Lcom/liquable/nemo/gallery/GalleryActivity$SelectedPictures;

    move-result-object v2

    # getter for: Lcom/liquable/nemo/gallery/GalleryActivity$SelectedPictures;->selectedPictures:Ljava/util/List;
    invoke-static {v2}, Lcom/liquable/nemo/gallery/GalleryActivity$SelectedPictures;->access$500(Lcom/liquable/nemo/gallery/GalleryActivity$SelectedPictures;)Ljava/util/List;

    move-result-object v1

    .line 321
    .local v1, "selectedPictureInfos":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/android/provider/PictureInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 322
    iget-object v3, p0, Lcom/liquable/nemo/gallery/GalleryActivity$5;->this$0:Lcom/liquable/nemo/gallery/GalleryActivity;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/liquable/nemo/android/provider/PictureInfo;

    invoke-virtual {v2}, Lcom/liquable/nemo/android/provider/PictureInfo;->getUri()Landroid/net/Uri;

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/liquable/nemo/gallery/GalleryActivity;->createUriResultIntent(Landroid/net/Uri;Lcom/liquable/nemo/gallery/AlbumInfo;)Landroid/content/Intent;

    move-result-object v2

    # invokes: Lcom/liquable/nemo/gallery/GalleryActivity;->finishWithOkay(Landroid/content/Intent;)V
    invoke-static {v3, v2}, Lcom/liquable/nemo/gallery/GalleryActivity;->access$600(Lcom/liquable/nemo/gallery/GalleryActivity;Landroid/content/Intent;)V

    .line 333
    :goto_0
    return-void

    .line 323
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/gallery/GalleryActivity$5;->this$0:Lcom/liquable/nemo/gallery/GalleryActivity;

    invoke-virtual {v2}, Lcom/liquable/nemo/gallery/GalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-static {v2}, Lcom/liquable/nemo/gallery/GalleryActivity;->hasChatGroup(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 324
    iget-object v2, p0, Lcom/liquable/nemo/gallery/GalleryActivity$5;->this$0:Lcom/liquable/nemo/gallery/GalleryActivity;

    iget-object v3, p0, Lcom/liquable/nemo/gallery/GalleryActivity$5;->this$0:Lcom/liquable/nemo/gallery/GalleryActivity;

    invoke-virtual {v3}, Lcom/liquable/nemo/gallery/GalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-static {v3}, Lcom/liquable/nemo/gallery/GalleryActivity;->getChatGroup(Landroid/content/Intent;)Lcom/liquable/nemo/group/model/ChatGroup;

    move-result-object v3

    # invokes: Lcom/liquable/nemo/gallery/GalleryActivity;->sendPictureMessage(Lcom/liquable/nemo/group/model/ChatGroup;)V
    invoke-static {v2, v3}, Lcom/liquable/nemo/gallery/GalleryActivity;->access$700(Lcom/liquable/nemo/gallery/GalleryActivity;Lcom/liquable/nemo/group/model/ChatGroup;)V

    .line 325
    iget-object v2, p0, Lcom/liquable/nemo/gallery/GalleryActivity$5;->this$0:Lcom/liquable/nemo/gallery/GalleryActivity;

    invoke-static {}, Lcom/liquable/nemo/gallery/GalleryActivity;->createSentSuccessfullyResultIntent()Landroid/content/Intent;

    move-result-object v3

    # invokes: Lcom/liquable/nemo/gallery/GalleryActivity;->finishWithOkay(Landroid/content/Intent;)V
    invoke-static {v2, v3}, Lcom/liquable/nemo/gallery/GalleryActivity;->access$600(Lcom/liquable/nemo/gallery/GalleryActivity;Landroid/content/Intent;)V

    goto :goto_0

    .line 327
    :cond_1
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/liquable/nemo/gallery/GalleryActivity$5;->this$0:Lcom/liquable/nemo/gallery/GalleryActivity;

    const-class v3, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 329
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 330
    const-string/jumbo v2, "android.intent.extra.STREAM"

    iget-object v3, p0, Lcom/liquable/nemo/gallery/GalleryActivity$5;->this$0:Lcom/liquable/nemo/gallery/GalleryActivity;

    # getter for: Lcom/liquable/nemo/gallery/GalleryActivity;->selectedPictures:Lcom/liquable/nemo/gallery/GalleryActivity$SelectedPictures;
    invoke-static {v3}, Lcom/liquable/nemo/gallery/GalleryActivity;->access$400(Lcom/liquable/nemo/gallery/GalleryActivity;)Lcom/liquable/nemo/gallery/GalleryActivity$SelectedPictures;

    move-result-object v3

    invoke-virtual {v3}, Lcom/liquable/nemo/gallery/GalleryActivity$SelectedPictures;->toArrayList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 331
    iget-object v2, p0, Lcom/liquable/nemo/gallery/GalleryActivity$5;->this$0:Lcom/liquable/nemo/gallery/GalleryActivity;

    const/16 v3, 0x4d2

    invoke-virtual {v2, v0, v3}, Lcom/liquable/nemo/gallery/GalleryActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
