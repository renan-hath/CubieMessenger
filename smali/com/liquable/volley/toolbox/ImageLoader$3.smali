.class Lcom/liquable/volley/toolbox/ImageLoader$3;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/volley/toolbox/ImageLoader;->get(Ljava/lang/String;Lcom/liquable/volley/toolbox/ImageLoader$ImageListener;IIZ)Lcom/liquable/volley/toolbox/ImageLoader$ImageContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/volley/toolbox/ImageLoader;

.field final synthetic val$cacheKey:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/liquable/volley/toolbox/ImageLoader;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/volley/toolbox/ImageLoader;

    .prologue
    .line 248
    iput-object p1, p0, Lcom/liquable/volley/toolbox/ImageLoader$3;->this$0:Lcom/liquable/volley/toolbox/ImageLoader;

    iput-object p2, p0, Lcom/liquable/volley/toolbox/ImageLoader$3;->val$cacheKey:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 2
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 251
    iget-object v0, p0, Lcom/liquable/volley/toolbox/ImageLoader$3;->this$0:Lcom/liquable/volley/toolbox/ImageLoader;

    iget-object v1, p0, Lcom/liquable/volley/toolbox/ImageLoader$3;->val$cacheKey:Ljava/lang/String;

    # invokes: Lcom/liquable/volley/toolbox/ImageLoader;->onGetImageError(Ljava/lang/String;Lcom/android/volley/VolleyError;)V
    invoke-static {v0, v1, p1}, Lcom/liquable/volley/toolbox/ImageLoader;->access$100(Lcom/liquable/volley/toolbox/ImageLoader;Ljava/lang/String;Lcom/android/volley/VolleyError;)V

    .line 252
    return-void
.end method
