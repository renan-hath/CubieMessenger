.class Lcom/liquable/volley/toolbox/TouchNetworkImageView$1;
.super Ljava/lang/Object;
.source "TouchNetworkImageView.java"

# interfaces
.implements Lcom/liquable/volley/toolbox/ImageLoader$ImageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/volley/toolbox/TouchNetworkImageView;->loadImageIfNecessary(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/volley/toolbox/TouchNetworkImageView;

.field final synthetic val$isInLayoutPass:Z


# direct methods
.method constructor <init>(Lcom/liquable/volley/toolbox/TouchNetworkImageView;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/volley/toolbox/TouchNetworkImageView;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/liquable/volley/toolbox/TouchNetworkImageView$1;->this$0:Lcom/liquable/volley/toolbox/TouchNetworkImageView;

    iput-boolean p2, p0, Lcom/liquable/volley/toolbox/TouchNetworkImageView$1;->val$isInLayoutPass:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 2
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 160
    iget-object v0, p0, Lcom/liquable/volley/toolbox/TouchNetworkImageView$1;->this$0:Lcom/liquable/volley/toolbox/TouchNetworkImageView;

    # getter for: Lcom/liquable/volley/toolbox/TouchNetworkImageView;->mErrorImageId:I
    invoke-static {v0}, Lcom/liquable/volley/toolbox/TouchNetworkImageView;->access$000(Lcom/liquable/volley/toolbox/TouchNetworkImageView;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/liquable/volley/toolbox/TouchNetworkImageView$1;->this$0:Lcom/liquable/volley/toolbox/TouchNetworkImageView;

    iget-object v1, p0, Lcom/liquable/volley/toolbox/TouchNetworkImageView$1;->this$0:Lcom/liquable/volley/toolbox/TouchNetworkImageView;

    # getter for: Lcom/liquable/volley/toolbox/TouchNetworkImageView;->mErrorImageId:I
    invoke-static {v1}, Lcom/liquable/volley/toolbox/TouchNetworkImageView;->access$000(Lcom/liquable/volley/toolbox/TouchNetworkImageView;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/liquable/volley/toolbox/TouchNetworkImageView;->setImageResource(I)V

    .line 163
    :cond_0
    return-void
.end method

.method public onResponse(Lcom/liquable/volley/toolbox/ImageLoader$ImageContainer;Z)V
    .locals 2
    .param p1, "response"    # Lcom/liquable/volley/toolbox/ImageLoader$ImageContainer;
    .param p2, "isImmediate"    # Z

    .prologue
    .line 171
    if-eqz p2, :cond_0

    iget-boolean v0, p0, Lcom/liquable/volley/toolbox/TouchNetworkImageView$1;->val$isInLayoutPass:Z

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/liquable/volley/toolbox/TouchNetworkImageView$1;->this$0:Lcom/liquable/volley/toolbox/TouchNetworkImageView;

    new-instance v1, Lcom/liquable/volley/toolbox/TouchNetworkImageView$1$1;

    invoke-direct {v1, p0, p1}, Lcom/liquable/volley/toolbox/TouchNetworkImageView$1$1;-><init>(Lcom/liquable/volley/toolbox/TouchNetworkImageView$1;Lcom/liquable/volley/toolbox/ImageLoader$ImageContainer;)V

    invoke-virtual {v0, v1}, Lcom/liquable/volley/toolbox/TouchNetworkImageView;->post(Ljava/lang/Runnable;)Z

    .line 187
    :goto_0
    return-void

    .line 181
    :cond_0
    invoke-virtual {p1}, Lcom/liquable/volley/toolbox/ImageLoader$ImageContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 182
    iget-object v0, p0, Lcom/liquable/volley/toolbox/TouchNetworkImageView$1;->this$0:Lcom/liquable/volley/toolbox/TouchNetworkImageView;

    iget-object v1, p0, Lcom/liquable/volley/toolbox/TouchNetworkImageView$1;->this$0:Lcom/liquable/volley/toolbox/TouchNetworkImageView;

    # getter for: Lcom/liquable/volley/toolbox/TouchNetworkImageView;->mOriginalScaleType:Landroid/widget/ImageView$ScaleType;
    invoke-static {v1}, Lcom/liquable/volley/toolbox/TouchNetworkImageView;->access$100(Lcom/liquable/volley/toolbox/TouchNetworkImageView;)Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/volley/toolbox/TouchNetworkImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 183
    iget-object v0, p0, Lcom/liquable/volley/toolbox/TouchNetworkImageView$1;->this$0:Lcom/liquable/volley/toolbox/TouchNetworkImageView;

    invoke-virtual {p1}, Lcom/liquable/volley/toolbox/ImageLoader$ImageContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/volley/toolbox/TouchNetworkImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 185
    :cond_1
    iget-object v0, p0, Lcom/liquable/volley/toolbox/TouchNetworkImageView$1;->this$0:Lcom/liquable/volley/toolbox/TouchNetworkImageView;

    # invokes: Lcom/liquable/volley/toolbox/TouchNetworkImageView;->setDefaultImageOrNull()V
    invoke-static {v0}, Lcom/liquable/volley/toolbox/TouchNetworkImageView;->access$200(Lcom/liquable/volley/toolbox/TouchNetworkImageView;)V

    goto :goto_0
.end method
