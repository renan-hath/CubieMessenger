.class Lcom/liquable/nemo/share/ImageMultiSelectActivity$2;
.super Ljava/lang/Object;
.source "ImageMultiSelectActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/share/ImageMultiSelectActivity;->onLoggedInCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/share/ImageMultiSelectActivity;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/share/ImageMultiSelectActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/share/ImageMultiSelectActivity;

    .prologue
    .line 235
    iput-object p1, p0, Lcom/liquable/nemo/share/ImageMultiSelectActivity$2;->this$0:Lcom/liquable/nemo/share/ImageMultiSelectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 239
    iget-object v3, p0, Lcom/liquable/nemo/share/ImageMultiSelectActivity$2;->this$0:Lcom/liquable/nemo/share/ImageMultiSelectActivity;

    # getter for: Lcom/liquable/nemo/share/ImageMultiSelectActivity;->selectedPictureInfos:Ljava/util/Set;
    invoke-static {v3}, Lcom/liquable/nemo/share/ImageMultiSelectActivity;->access$000(Lcom/liquable/nemo/share/ImageMultiSelectActivity;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 240
    iget-object v3, p0, Lcom/liquable/nemo/share/ImageMultiSelectActivity$2;->this$0:Lcom/liquable/nemo/share/ImageMultiSelectActivity;

    const v4, 0x7f0d02de

    invoke-static {v3, v4}, Lcom/liquable/nemo/util/NemoUIs;->showToast(Landroid/content/Context;I)V

    .line 255
    :goto_0
    return-void

    .line 244
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 246
    .local v2, "selecteds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/liquable/nemo/android/provider/PictureInfo;>;"
    iget-object v3, p0, Lcom/liquable/nemo/share/ImageMultiSelectActivity$2;->this$0:Lcom/liquable/nemo/share/ImageMultiSelectActivity;

    # getter for: Lcom/liquable/nemo/share/ImageMultiSelectActivity;->selectedPictureInfos:Ljava/util/Set;
    invoke-static {v3}, Lcom/liquable/nemo/share/ImageMultiSelectActivity;->access$000(Lcom/liquable/nemo/share/ImageMultiSelectActivity;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/share/ImageMultiSelectActivity$PictureInfoImage;

    .line 247
    .local v1, "selected":Lcom/liquable/nemo/share/ImageMultiSelectActivity$PictureInfoImage;
    # getter for: Lcom/liquable/nemo/share/ImageMultiSelectActivity$PictureInfoImage;->pictureInfo:Lcom/liquable/nemo/android/provider/PictureInfo;
    invoke-static {v1}, Lcom/liquable/nemo/share/ImageMultiSelectActivity$PictureInfoImage;->access$400(Lcom/liquable/nemo/share/ImageMultiSelectActivity$PictureInfoImage;)Lcom/liquable/nemo/android/provider/PictureInfo;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 250
    .end local v1    # "selected":Lcom/liquable/nemo/share/ImageMultiSelectActivity$PictureInfoImage;
    :cond_1
    iget-object v3, p0, Lcom/liquable/nemo/share/ImageMultiSelectActivity$2;->this$0:Lcom/liquable/nemo/share/ImageMultiSelectActivity;

    invoke-static {v3, v2}, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->createExternalMediaFromDetectExternalImage(Landroid/content/Context;Ljava/util/Collection;)Landroid/content/Intent;

    move-result-object v0

    .line 253
    .local v0, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/liquable/nemo/share/ImageMultiSelectActivity$2;->this$0:Lcom/liquable/nemo/share/ImageMultiSelectActivity;

    invoke-virtual {v3, v0}, Lcom/liquable/nemo/share/ImageMultiSelectActivity;->startActivity(Landroid/content/Intent;)V

    .line 254
    iget-object v3, p0, Lcom/liquable/nemo/share/ImageMultiSelectActivity$2;->this$0:Lcom/liquable/nemo/share/ImageMultiSelectActivity;

    invoke-virtual {v3}, Lcom/liquable/nemo/share/ImageMultiSelectActivity;->finish()V

    goto :goto_0
.end method
