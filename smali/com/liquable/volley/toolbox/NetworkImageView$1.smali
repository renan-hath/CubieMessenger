.class Lcom/liquable/volley/toolbox/NetworkImageView$1;
.super Ljava/lang/Object;
.source "NetworkImageView.java"

# interfaces
.implements Lcom/liquable/volley/toolbox/ImageLoader$ImageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/volley/toolbox/NetworkImageView;->loadImageIfNecessary(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/volley/toolbox/NetworkImageView;

.field final synthetic val$isInLayoutPass:Z


# direct methods
.method constructor <init>(Lcom/liquable/volley/toolbox/NetworkImageView;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/volley/toolbox/NetworkImageView;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/liquable/volley/toolbox/NetworkImageView$1;->this$0:Lcom/liquable/volley/toolbox/NetworkImageView;

    iput-boolean p2, p0, Lcom/liquable/volley/toolbox/NetworkImageView$1;->val$isInLayoutPass:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 2
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 179
    iget-object v0, p0, Lcom/liquable/volley/toolbox/NetworkImageView$1;->this$0:Lcom/liquable/volley/toolbox/NetworkImageView;

    # getter for: Lcom/liquable/volley/toolbox/NetworkImageView;->mErrorImageId:I
    invoke-static {v0}, Lcom/liquable/volley/toolbox/NetworkImageView;->access$000(Lcom/liquable/volley/toolbox/NetworkImageView;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/liquable/volley/toolbox/NetworkImageView$1;->this$0:Lcom/liquable/volley/toolbox/NetworkImageView;

    iget-object v1, p0, Lcom/liquable/volley/toolbox/NetworkImageView$1;->this$0:Lcom/liquable/volley/toolbox/NetworkImageView;

    # getter for: Lcom/liquable/volley/toolbox/NetworkImageView;->mErrorImageId:I
    invoke-static {v1}, Lcom/liquable/volley/toolbox/NetworkImageView;->access$000(Lcom/liquable/volley/toolbox/NetworkImageView;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/liquable/volley/toolbox/NetworkImageView;->setImageResource(I)V

    .line 182
    :cond_0
    return-void
.end method

.method public onResponse(Lcom/liquable/volley/toolbox/ImageLoader$ImageContainer;Z)V
    .locals 2
    .param p1, "response"    # Lcom/liquable/volley/toolbox/ImageLoader$ImageContainer;
    .param p2, "isImmediate"    # Z

    .prologue
    .line 190
    if-eqz p2, :cond_0

    iget-boolean v0, p0, Lcom/liquable/volley/toolbox/NetworkImageView$1;->val$isInLayoutPass:Z

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/liquable/volley/toolbox/NetworkImageView$1;->this$0:Lcom/liquable/volley/toolbox/NetworkImageView;

    new-instance v1, Lcom/liquable/volley/toolbox/NetworkImageView$1$1;

    invoke-direct {v1, p0, p1}, Lcom/liquable/volley/toolbox/NetworkImageView$1$1;-><init>(Lcom/liquable/volley/toolbox/NetworkImageView$1;Lcom/liquable/volley/toolbox/ImageLoader$ImageContainer;)V

    invoke-virtual {v0, v1}, Lcom/liquable/volley/toolbox/NetworkImageView;->post(Ljava/lang/Runnable;)Z

    .line 209
    :goto_0
    return-void

    .line 203
    :cond_0
    invoke-virtual {p1}, Lcom/liquable/volley/toolbox/ImageLoader$ImageContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 204
    iget-object v0, p0, Lcom/liquable/volley/toolbox/NetworkImageView$1;->this$0:Lcom/liquable/volley/toolbox/NetworkImageView;

    iget-object v1, p0, Lcom/liquable/volley/toolbox/NetworkImageView$1;->this$0:Lcom/liquable/volley/toolbox/NetworkImageView;

    # getter for: Lcom/liquable/volley/toolbox/NetworkImageView;->mOriginalScaleType:Landroid/widget/ImageView$ScaleType;
    invoke-static {v1}, Lcom/liquable/volley/toolbox/NetworkImageView;->access$200(Lcom/liquable/volley/toolbox/NetworkImageView;)Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/volley/toolbox/NetworkImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 205
    iget-object v0, p0, Lcom/liquable/volley/toolbox/NetworkImageView$1;->this$0:Lcom/liquable/volley/toolbox/NetworkImageView;

    invoke-virtual {p1}, Lcom/liquable/volley/toolbox/ImageLoader$ImageContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/volley/toolbox/NetworkImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 207
    :cond_1
    iget-object v0, p0, Lcom/liquable/volley/toolbox/NetworkImageView$1;->this$0:Lcom/liquable/volley/toolbox/NetworkImageView;

    # invokes: Lcom/liquable/volley/toolbox/NetworkImageView;->setDefaultImageOrNull()V
    invoke-static {v0}, Lcom/liquable/volley/toolbox/NetworkImageView;->access$300(Lcom/liquable/volley/toolbox/NetworkImageView;)V

    goto :goto_0
.end method
