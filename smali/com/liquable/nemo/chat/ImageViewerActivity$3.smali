.class Lcom/liquable/nemo/chat/ImageViewerActivity$3;
.super Ljava/lang/Object;
.source "ImageViewerActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


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
    .line 447
    iput-object p1, p0, Lcom/liquable/nemo/chat/ImageViewerActivity$3;->this$0:Lcom/liquable/nemo/chat/ImageViewerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
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
    .line 454
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/liquable/nemo/chat/ImageViewerActivity$3;->this$0:Lcom/liquable/nemo/chat/ImageViewerActivity;

    iget-object v0, p0, Lcom/liquable/nemo/chat/ImageViewerActivity$3;->this$0:Lcom/liquable/nemo/chat/ImageViewerActivity;

    # getter for: Lcom/liquable/nemo/chat/ImageViewerActivity;->messages:Ljava/util/List;
    invoke-static {v0}, Lcom/liquable/nemo/chat/ImageViewerActivity;->access$400(Lcom/liquable/nemo/chat/ImageViewerActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/message/model/IMediaMessage;

    # invokes: Lcom/liquable/nemo/chat/ImageViewerActivity;->updateMessage(Lcom/liquable/nemo/message/model/IMediaMessage;)V
    invoke-static {v1, v0}, Lcom/liquable/nemo/chat/ImageViewerActivity;->access$900(Lcom/liquable/nemo/chat/ImageViewerActivity;Lcom/liquable/nemo/message/model/IMediaMessage;)V

    .line 455
    const/16 v0, 0xa

    if-ge p3, v0, :cond_0

    .line 456
    iget-object v0, p0, Lcom/liquable/nemo/chat/ImageViewerActivity$3;->this$0:Lcom/liquable/nemo/chat/ImageViewerActivity;

    # invokes: Lcom/liquable/nemo/chat/ImageViewerActivity;->leftQuery()V
    invoke-static {v0}, Lcom/liquable/nemo/chat/ImageViewerActivity;->access$1000(Lcom/liquable/nemo/chat/ImageViewerActivity;)V

    .line 458
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/chat/ImageViewerActivity$3;->this$0:Lcom/liquable/nemo/chat/ImageViewerActivity;

    # getter for: Lcom/liquable/nemo/chat/ImageViewerActivity;->gallery:Landroid/widget/Gallery;
    invoke-static {v0}, Lcom/liquable/nemo/chat/ImageViewerActivity;->access$500(Lcom/liquable/nemo/chat/ImageViewerActivity;)Landroid/widget/Gallery;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Gallery;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0xa

    if-le p3, v0, :cond_1

    .line 459
    iget-object v0, p0, Lcom/liquable/nemo/chat/ImageViewerActivity$3;->this$0:Lcom/liquable/nemo/chat/ImageViewerActivity;

    # invokes: Lcom/liquable/nemo/chat/ImageViewerActivity;->rightQuery()V
    invoke-static {v0}, Lcom/liquable/nemo/chat/ImageViewerActivity;->access$1100(Lcom/liquable/nemo/chat/ImageViewerActivity;)V

    .line 461
    :cond_1
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 464
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
