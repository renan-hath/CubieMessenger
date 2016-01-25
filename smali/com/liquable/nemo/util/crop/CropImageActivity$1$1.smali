.class Lcom/liquable/nemo/util/crop/CropImageActivity$1$1;
.super Ljava/lang/Object;
.source "CropImageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/util/crop/CropImageActivity$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/liquable/nemo/util/crop/CropImageActivity$1;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/util/crop/CropImageActivity$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/liquable/nemo/util/crop/CropImageActivity$1;

    .prologue
    .line 248
    iput-object p1, p0, Lcom/liquable/nemo/util/crop/CropImageActivity$1$1;->this$1:Lcom/liquable/nemo/util/crop/CropImageActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 251
    iget-object v2, p0, Lcom/liquable/nemo/util/crop/CropImageActivity$1$1;->this$1:Lcom/liquable/nemo/util/crop/CropImageActivity$1;

    iget-object v5, v2, Lcom/liquable/nemo/util/crop/CropImageActivity$1;->this$0:Lcom/liquable/nemo/util/crop/CropImageActivity;

    iget-object v2, p0, Lcom/liquable/nemo/util/crop/CropImageActivity$1$1;->this$1:Lcom/liquable/nemo/util/crop/CropImageActivity$1;

    iget v2, v2, Lcom/liquable/nemo/util/crop/CropImageActivity$1;->mNumFaces:I

    if-le v2, v3, :cond_0

    move v2, v3

    :goto_0
    iput-boolean v2, v5, Lcom/liquable/nemo/util/crop/CropImageActivity;->mWaitingToPick:Z

    .line 252
    iget-object v2, p0, Lcom/liquable/nemo/util/crop/CropImageActivity$1$1;->this$1:Lcom/liquable/nemo/util/crop/CropImageActivity$1;

    iget v2, v2, Lcom/liquable/nemo/util/crop/CropImageActivity$1;->mNumFaces:I

    if-lez v2, :cond_1

    .line 253
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/liquable/nemo/util/crop/CropImageActivity$1$1;->this$1:Lcom/liquable/nemo/util/crop/CropImageActivity$1;

    iget v2, v2, Lcom/liquable/nemo/util/crop/CropImageActivity$1;->mNumFaces:I

    if-ge v0, v2, :cond_2

    .line 254
    iget-object v2, p0, Lcom/liquable/nemo/util/crop/CropImageActivity$1$1;->this$1:Lcom/liquable/nemo/util/crop/CropImageActivity$1;

    iget-object v5, p0, Lcom/liquable/nemo/util/crop/CropImageActivity$1$1;->this$1:Lcom/liquable/nemo/util/crop/CropImageActivity$1;

    iget-object v5, v5, Lcom/liquable/nemo/util/crop/CropImageActivity$1;->mFaces:[Landroid/media/FaceDetector$Face;

    aget-object v5, v5, v0

    # invokes: Lcom/liquable/nemo/util/crop/CropImageActivity$1;->handleFace(Landroid/media/FaceDetector$Face;)V
    invoke-static {v2, v5}, Lcom/liquable/nemo/util/crop/CropImageActivity$1;->access$600(Lcom/liquable/nemo/util/crop/CropImageActivity$1;Landroid/media/FaceDetector$Face;)V

    .line 253
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    :cond_0
    move v2, v4

    .line 251
    goto :goto_0

    .line 257
    :cond_1
    iget-object v2, p0, Lcom/liquable/nemo/util/crop/CropImageActivity$1$1;->this$1:Lcom/liquable/nemo/util/crop/CropImageActivity$1;

    # invokes: Lcom/liquable/nemo/util/crop/CropImageActivity$1;->makeDefault()V
    invoke-static {v2}, Lcom/liquable/nemo/util/crop/CropImageActivity$1;->access$700(Lcom/liquable/nemo/util/crop/CropImageActivity$1;)V

    .line 259
    :cond_2
    iget-object v2, p0, Lcom/liquable/nemo/util/crop/CropImageActivity$1$1;->this$1:Lcom/liquable/nemo/util/crop/CropImageActivity$1;

    iget-object v2, v2, Lcom/liquable/nemo/util/crop/CropImageActivity$1;->this$0:Lcom/liquable/nemo/util/crop/CropImageActivity;

    # getter for: Lcom/liquable/nemo/util/crop/CropImageActivity;->mImageView:Lcom/liquable/nemo/util/crop/CropImageView;
    invoke-static {v2}, Lcom/liquable/nemo/util/crop/CropImageActivity;->access$000(Lcom/liquable/nemo/util/crop/CropImageActivity;)Lcom/liquable/nemo/util/crop/CropImageView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/liquable/nemo/util/crop/CropImageView;->invalidate()V

    .line 260
    iget-object v2, p0, Lcom/liquable/nemo/util/crop/CropImageActivity$1$1;->this$1:Lcom/liquable/nemo/util/crop/CropImageActivity$1;

    iget-object v2, v2, Lcom/liquable/nemo/util/crop/CropImageActivity$1;->this$0:Lcom/liquable/nemo/util/crop/CropImageActivity;

    # getter for: Lcom/liquable/nemo/util/crop/CropImageActivity;->mImageView:Lcom/liquable/nemo/util/crop/CropImageView;
    invoke-static {v2}, Lcom/liquable/nemo/util/crop/CropImageActivity;->access$000(Lcom/liquable/nemo/util/crop/CropImageActivity;)Lcom/liquable/nemo/util/crop/CropImageView;

    move-result-object v2

    iget-object v2, v2, Lcom/liquable/nemo/util/crop/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v3, :cond_3

    .line 261
    iget-object v2, p0, Lcom/liquable/nemo/util/crop/CropImageActivity$1$1;->this$1:Lcom/liquable/nemo/util/crop/CropImageActivity$1;

    iget-object v5, v2, Lcom/liquable/nemo/util/crop/CropImageActivity$1;->this$0:Lcom/liquable/nemo/util/crop/CropImageActivity;

    iget-object v2, p0, Lcom/liquable/nemo/util/crop/CropImageActivity$1$1;->this$1:Lcom/liquable/nemo/util/crop/CropImageActivity$1;

    iget-object v2, v2, Lcom/liquable/nemo/util/crop/CropImageActivity$1;->this$0:Lcom/liquable/nemo/util/crop/CropImageActivity;

    # getter for: Lcom/liquable/nemo/util/crop/CropImageActivity;->mImageView:Lcom/liquable/nemo/util/crop/CropImageView;
    invoke-static {v2}, Lcom/liquable/nemo/util/crop/CropImageActivity;->access$000(Lcom/liquable/nemo/util/crop/CropImageActivity;)Lcom/liquable/nemo/util/crop/CropImageView;

    move-result-object v2

    iget-object v2, v2, Lcom/liquable/nemo/util/crop/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/liquable/nemo/util/crop/HighlightView;

    iput-object v2, v5, Lcom/liquable/nemo/util/crop/CropImageActivity;->mCrop:Lcom/liquable/nemo/util/crop/HighlightView;

    .line 262
    iget-object v2, p0, Lcom/liquable/nemo/util/crop/CropImageActivity$1$1;->this$1:Lcom/liquable/nemo/util/crop/CropImageActivity$1;

    iget-object v2, v2, Lcom/liquable/nemo/util/crop/CropImageActivity$1;->this$0:Lcom/liquable/nemo/util/crop/CropImageActivity;

    iget-object v2, v2, Lcom/liquable/nemo/util/crop/CropImageActivity;->mCrop:Lcom/liquable/nemo/util/crop/HighlightView;

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/util/crop/HighlightView;->setFocus(Z)V

    .line 265
    :cond_3
    iget-object v2, p0, Lcom/liquable/nemo/util/crop/CropImageActivity$1$1;->this$1:Lcom/liquable/nemo/util/crop/CropImageActivity$1;

    iget v2, v2, Lcom/liquable/nemo/util/crop/CropImageActivity$1;->mNumFaces:I

    if-le v2, v3, :cond_4

    .line 270
    iget-object v2, p0, Lcom/liquable/nemo/util/crop/CropImageActivity$1$1;->this$1:Lcom/liquable/nemo/util/crop/CropImageActivity$1;

    iget-object v2, v2, Lcom/liquable/nemo/util/crop/CropImageActivity$1;->this$0:Lcom/liquable/nemo/util/crop/CropImageActivity;

    const v3, 0x7f0d02d3

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 273
    .local v1, "t":Landroid/widget/Toast;
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 275
    .end local v1    # "t":Landroid/widget/Toast;
    :cond_4
    return-void
.end method
