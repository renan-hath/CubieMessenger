.class Lcom/liquable/nemo/share/ImageMultiSelectActivity$ImageThumbnailAdapter$1;
.super Ljava/lang/Object;
.source "ImageMultiSelectActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/share/ImageMultiSelectActivity$ImageThumbnailAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/liquable/nemo/share/ImageMultiSelectActivity$ImageThumbnailAdapter;

.field final synthetic val$imageSelectView:Landroid/widget/ImageView;

.field final synthetic val$info:Lcom/liquable/nemo/share/ImageMultiSelectActivity$PictureInfoImage;

.field final synthetic val$selectedMaskView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/share/ImageMultiSelectActivity$ImageThumbnailAdapter;Lcom/liquable/nemo/share/ImageMultiSelectActivity$PictureInfoImage;Landroid/widget/ImageView;Landroid/view/View;)V
    .locals 0
    .param p1, "this$1"    # Lcom/liquable/nemo/share/ImageMultiSelectActivity$ImageThumbnailAdapter;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/liquable/nemo/share/ImageMultiSelectActivity$ImageThumbnailAdapter$1;->this$1:Lcom/liquable/nemo/share/ImageMultiSelectActivity$ImageThumbnailAdapter;

    iput-object p2, p0, Lcom/liquable/nemo/share/ImageMultiSelectActivity$ImageThumbnailAdapter$1;->val$info:Lcom/liquable/nemo/share/ImageMultiSelectActivity$PictureInfoImage;

    iput-object p3, p0, Lcom/liquable/nemo/share/ImageMultiSelectActivity$ImageThumbnailAdapter$1;->val$imageSelectView:Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/liquable/nemo/share/ImageMultiSelectActivity$ImageThumbnailAdapter$1;->val$selectedMaskView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 101
    iget-object v1, p0, Lcom/liquable/nemo/share/ImageMultiSelectActivity$ImageThumbnailAdapter$1;->this$1:Lcom/liquable/nemo/share/ImageMultiSelectActivity$ImageThumbnailAdapter;

    iget-object v1, v1, Lcom/liquable/nemo/share/ImageMultiSelectActivity$ImageThumbnailAdapter;->this$0:Lcom/liquable/nemo/share/ImageMultiSelectActivity;

    # getter for: Lcom/liquable/nemo/share/ImageMultiSelectActivity;->selectedPictureInfos:Ljava/util/Set;
    invoke-static {v1}, Lcom/liquable/nemo/share/ImageMultiSelectActivity;->access$000(Lcom/liquable/nemo/share/ImageMultiSelectActivity;)Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/liquable/nemo/share/ImageMultiSelectActivity$ImageThumbnailAdapter$1;->val$info:Lcom/liquable/nemo/share/ImageMultiSelectActivity$PictureInfoImage;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    iget-object v1, p0, Lcom/liquable/nemo/share/ImageMultiSelectActivity$ImageThumbnailAdapter$1;->this$1:Lcom/liquable/nemo/share/ImageMultiSelectActivity$ImageThumbnailAdapter;

    iget-object v1, v1, Lcom/liquable/nemo/share/ImageMultiSelectActivity$ImageThumbnailAdapter;->this$0:Lcom/liquable/nemo/share/ImageMultiSelectActivity;

    # getter for: Lcom/liquable/nemo/share/ImageMultiSelectActivity;->selectedPictureInfos:Ljava/util/Set;
    invoke-static {v1}, Lcom/liquable/nemo/share/ImageMultiSelectActivity;->access$000(Lcom/liquable/nemo/share/ImageMultiSelectActivity;)Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/liquable/nemo/share/ImageMultiSelectActivity$ImageThumbnailAdapter$1;->val$info:Lcom/liquable/nemo/share/ImageMultiSelectActivity$PictureInfoImage;

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 103
    iget-object v1, p0, Lcom/liquable/nemo/share/ImageMultiSelectActivity$ImageThumbnailAdapter$1;->this$1:Lcom/liquable/nemo/share/ImageMultiSelectActivity$ImageThumbnailAdapter;

    iget-object v1, v1, Lcom/liquable/nemo/share/ImageMultiSelectActivity$ImageThumbnailAdapter;->this$0:Lcom/liquable/nemo/share/ImageMultiSelectActivity;

    iget-object v2, p0, Lcom/liquable/nemo/share/ImageMultiSelectActivity$ImageThumbnailAdapter$1;->val$imageSelectView:Landroid/widget/ImageView;

    # invokes: Lcom/liquable/nemo/share/ImageMultiSelectActivity;->updateSelectImageView(Landroid/widget/ImageView;Z)V
    invoke-static {v1, v2, v4}, Lcom/liquable/nemo/share/ImageMultiSelectActivity;->access$100(Lcom/liquable/nemo/share/ImageMultiSelectActivity;Landroid/widget/ImageView;Z)V

    .line 104
    iget-object v1, p0, Lcom/liquable/nemo/share/ImageMultiSelectActivity$ImageThumbnailAdapter$1;->val$selectedMaskView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 111
    :goto_0
    iget-object v1, p0, Lcom/liquable/nemo/share/ImageMultiSelectActivity$ImageThumbnailAdapter$1;->this$1:Lcom/liquable/nemo/share/ImageMultiSelectActivity$ImageThumbnailAdapter;

    # getter for: Lcom/liquable/nemo/share/ImageMultiSelectActivity$ImageThumbnailAdapter;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/liquable/nemo/share/ImageMultiSelectActivity$ImageThumbnailAdapter;->access$200(Lcom/liquable/nemo/share/ImageMultiSelectActivity$ImageThumbnailAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0389

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, "nextStep":Ljava/lang/String;
    iget-object v1, p0, Lcom/liquable/nemo/share/ImageMultiSelectActivity$ImageThumbnailAdapter$1;->this$1:Lcom/liquable/nemo/share/ImageMultiSelectActivity$ImageThumbnailAdapter;

    iget-object v1, v1, Lcom/liquable/nemo/share/ImageMultiSelectActivity$ImageThumbnailAdapter;->this$0:Lcom/liquable/nemo/share/ImageMultiSelectActivity;

    # getter for: Lcom/liquable/nemo/share/ImageMultiSelectActivity;->nextBtn:Landroid/widget/Button;
    invoke-static {v1}, Lcom/liquable/nemo/share/ImageMultiSelectActivity;->access$300(Lcom/liquable/nemo/share/ImageMultiSelectActivity;)Landroid/widget/Button;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/liquable/nemo/share/ImageMultiSelectActivity$ImageThumbnailAdapter$1;->this$1:Lcom/liquable/nemo/share/ImageMultiSelectActivity$ImageThumbnailAdapter;

    iget-object v3, v3, Lcom/liquable/nemo/share/ImageMultiSelectActivity$ImageThumbnailAdapter;->this$0:Lcom/liquable/nemo/share/ImageMultiSelectActivity;

    # getter for: Lcom/liquable/nemo/share/ImageMultiSelectActivity;->selectedPictureInfos:Ljava/util/Set;
    invoke-static {v3}, Lcom/liquable/nemo/share/ImageMultiSelectActivity;->access$000(Lcom/liquable/nemo/share/ImageMultiSelectActivity;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 114
    return-void

    .line 106
    .end local v0    # "nextStep":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/liquable/nemo/share/ImageMultiSelectActivity$ImageThumbnailAdapter$1;->this$1:Lcom/liquable/nemo/share/ImageMultiSelectActivity$ImageThumbnailAdapter;

    iget-object v1, v1, Lcom/liquable/nemo/share/ImageMultiSelectActivity$ImageThumbnailAdapter;->this$0:Lcom/liquable/nemo/share/ImageMultiSelectActivity;

    # getter for: Lcom/liquable/nemo/share/ImageMultiSelectActivity;->selectedPictureInfos:Ljava/util/Set;
    invoke-static {v1}, Lcom/liquable/nemo/share/ImageMultiSelectActivity;->access$000(Lcom/liquable/nemo/share/ImageMultiSelectActivity;)Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/liquable/nemo/share/ImageMultiSelectActivity$ImageThumbnailAdapter$1;->val$info:Lcom/liquable/nemo/share/ImageMultiSelectActivity$PictureInfoImage;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 107
    iget-object v1, p0, Lcom/liquable/nemo/share/ImageMultiSelectActivity$ImageThumbnailAdapter$1;->this$1:Lcom/liquable/nemo/share/ImageMultiSelectActivity$ImageThumbnailAdapter;

    iget-object v1, v1, Lcom/liquable/nemo/share/ImageMultiSelectActivity$ImageThumbnailAdapter;->this$0:Lcom/liquable/nemo/share/ImageMultiSelectActivity;

    iget-object v2, p0, Lcom/liquable/nemo/share/ImageMultiSelectActivity$ImageThumbnailAdapter$1;->val$imageSelectView:Landroid/widget/ImageView;

    const/4 v3, 0x1

    # invokes: Lcom/liquable/nemo/share/ImageMultiSelectActivity;->updateSelectImageView(Landroid/widget/ImageView;Z)V
    invoke-static {v1, v2, v3}, Lcom/liquable/nemo/share/ImageMultiSelectActivity;->access$100(Lcom/liquable/nemo/share/ImageMultiSelectActivity;Landroid/widget/ImageView;Z)V

    .line 108
    iget-object v1, p0, Lcom/liquable/nemo/share/ImageMultiSelectActivity$ImageThumbnailAdapter$1;->val$selectedMaskView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
