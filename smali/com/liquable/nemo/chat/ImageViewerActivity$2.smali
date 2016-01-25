.class Lcom/liquable/nemo/chat/ImageViewerActivity$2;
.super Ljava/lang/Object;
.source "ImageViewerActivity.java"

# interfaces
.implements Lcom/liquable/nemo/widget/TouchImageView$TouchImageViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/chat/ImageViewerActivity;->onLoggedInCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/chat/ImageViewerActivity;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/chat/ImageViewerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/chat/ImageViewerActivity;

    .prologue
    .line 424
    iput-object p1, p0, Lcom/liquable/nemo/chat/ImageViewerActivity$2;->this$0:Lcom/liquable/nemo/chat/ImageViewerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTap()V
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Lcom/liquable/nemo/chat/ImageViewerActivity$2;->this$0:Lcom/liquable/nemo/chat/ImageViewerActivity;

    # getter for: Lcom/liquable/nemo/chat/ImageViewerActivity;->gallery:Landroid/widget/Gallery;
    invoke-static {v0}, Lcom/liquable/nemo/chat/ImageViewerActivity;->access$500(Lcom/liquable/nemo/chat/ImageViewerActivity;)Landroid/widget/Gallery;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Gallery;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/liquable/nemo/chat/ImageViewerActivity$2;->this$0:Lcom/liquable/nemo/chat/ImageViewerActivity;

    invoke-virtual {v0}, Lcom/liquable/nemo/chat/ImageViewerActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/ActionBar;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 428
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/chat/ImageViewerActivity$2;->this$0:Lcom/liquable/nemo/chat/ImageViewerActivity;

    # invokes: Lcom/liquable/nemo/chat/ImageViewerActivity;->showControlPanel()V
    invoke-static {v0}, Lcom/liquable/nemo/chat/ImageViewerActivity;->access$700(Lcom/liquable/nemo/chat/ImageViewerActivity;)V

    .line 432
    :goto_0
    return-void

    .line 430
    :cond_1
    iget-object v0, p0, Lcom/liquable/nemo/chat/ImageViewerActivity$2;->this$0:Lcom/liquable/nemo/chat/ImageViewerActivity;

    # invokes: Lcom/liquable/nemo/chat/ImageViewerActivity;->hideControlPanel()V
    invoke-static {v0}, Lcom/liquable/nemo/chat/ImageViewerActivity;->access$800(Lcom/liquable/nemo/chat/ImageViewerActivity;)V

    goto :goto_0
.end method

.method public swipeLeft()V
    .locals 3

    .prologue
    .line 436
    iget-object v0, p0, Lcom/liquable/nemo/chat/ImageViewerActivity$2;->this$0:Lcom/liquable/nemo/chat/ImageViewerActivity;

    # getter for: Lcom/liquable/nemo/chat/ImageViewerActivity;->gallery:Landroid/widget/Gallery;
    invoke-static {v0}, Lcom/liquable/nemo/chat/ImageViewerActivity;->access$500(Lcom/liquable/nemo/chat/ImageViewerActivity;)Landroid/widget/Gallery;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/chat/ImageViewerActivity$2;->this$0:Lcom/liquable/nemo/chat/ImageViewerActivity;

    # getter for: Lcom/liquable/nemo/chat/ImageViewerActivity;->gallery:Landroid/widget/Gallery;
    invoke-static {v1}, Lcom/liquable/nemo/chat/ImageViewerActivity;->access$500(Lcom/liquable/nemo/chat/ImageViewerActivity;)Landroid/widget/Gallery;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Gallery;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/liquable/nemo/chat/ImageViewerActivity$2;->this$0:Lcom/liquable/nemo/chat/ImageViewerActivity;

    # getter for: Lcom/liquable/nemo/chat/ImageViewerActivity;->gallery:Landroid/widget/Gallery;
    invoke-static {v2}, Lcom/liquable/nemo/chat/ImageViewerActivity;->access$500(Lcom/liquable/nemo/chat/ImageViewerActivity;)Landroid/widget/Gallery;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Gallery;->getSelectedItemPosition()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Gallery;->setSelection(I)V

    .line 437
    return-void
.end method

.method public swipeRight()V
    .locals 3

    .prologue
    .line 441
    iget-object v0, p0, Lcom/liquable/nemo/chat/ImageViewerActivity$2;->this$0:Lcom/liquable/nemo/chat/ImageViewerActivity;

    # getter for: Lcom/liquable/nemo/chat/ImageViewerActivity;->gallery:Landroid/widget/Gallery;
    invoke-static {v0}, Lcom/liquable/nemo/chat/ImageViewerActivity;->access$500(Lcom/liquable/nemo/chat/ImageViewerActivity;)Landroid/widget/Gallery;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/liquable/nemo/chat/ImageViewerActivity$2;->this$0:Lcom/liquable/nemo/chat/ImageViewerActivity;

    # getter for: Lcom/liquable/nemo/chat/ImageViewerActivity;->gallery:Landroid/widget/Gallery;
    invoke-static {v2}, Lcom/liquable/nemo/chat/ImageViewerActivity;->access$500(Lcom/liquable/nemo/chat/ImageViewerActivity;)Landroid/widget/Gallery;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Gallery;->getSelectedItemPosition()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Gallery;->setSelection(I)V

    .line 442
    return-void
.end method
