.class Lcom/liquable/volley/toolbox/NetworkImageView$1$1;
.super Ljava/lang/Object;
.source "NetworkImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/volley/toolbox/NetworkImageView$1;->onResponse(Lcom/liquable/volley/toolbox/ImageLoader$ImageContainer;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/liquable/volley/toolbox/NetworkImageView$1;

.field final synthetic val$response:Lcom/liquable/volley/toolbox/ImageLoader$ImageContainer;


# direct methods
.method constructor <init>(Lcom/liquable/volley/toolbox/NetworkImageView$1;Lcom/liquable/volley/toolbox/ImageLoader$ImageContainer;)V
    .locals 0
    .param p1, "this$1"    # Lcom/liquable/volley/toolbox/NetworkImageView$1;

    .prologue
    .line 191
    iput-object p1, p0, Lcom/liquable/volley/toolbox/NetworkImageView$1$1;->this$1:Lcom/liquable/volley/toolbox/NetworkImageView$1;

    iput-object p2, p0, Lcom/liquable/volley/toolbox/NetworkImageView$1$1;->val$response:Lcom/liquable/volley/toolbox/ImageLoader$ImageContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 194
    iget-object v0, p0, Lcom/liquable/volley/toolbox/NetworkImageView$1$1;->val$response:Lcom/liquable/volley/toolbox/ImageLoader$ImageContainer;

    invoke-virtual {v0}, Lcom/liquable/volley/toolbox/ImageLoader$ImageContainer;->getRequestUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/volley/toolbox/NetworkImageView$1$1;->this$1:Lcom/liquable/volley/toolbox/NetworkImageView$1;

    iget-object v1, v1, Lcom/liquable/volley/toolbox/NetworkImageView$1;->this$0:Lcom/liquable/volley/toolbox/NetworkImageView;

    # getter for: Lcom/liquable/volley/toolbox/NetworkImageView;->mUrl:Ljava/lang/String;
    invoke-static {v1}, Lcom/liquable/volley/toolbox/NetworkImageView;->access$100(Lcom/liquable/volley/toolbox/NetworkImageView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 198
    :goto_0
    return-void

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/liquable/volley/toolbox/NetworkImageView$1$1;->this$1:Lcom/liquable/volley/toolbox/NetworkImageView$1;

    iget-object v1, p0, Lcom/liquable/volley/toolbox/NetworkImageView$1$1;->val$response:Lcom/liquable/volley/toolbox/ImageLoader$ImageContainer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/liquable/volley/toolbox/NetworkImageView$1;->onResponse(Lcom/liquable/volley/toolbox/ImageLoader$ImageContainer;Z)V

    goto :goto_0
.end method
