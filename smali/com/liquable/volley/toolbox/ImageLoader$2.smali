.class Lcom/liquable/volley/toolbox/ImageLoader$2;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/volley/toolbox/ImageLoader;->get(Ljava/lang/String;Lcom/liquable/volley/toolbox/ImageLoader$ImageListener;IIZ)Lcom/liquable/volley/toolbox/ImageLoader$ImageContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/volley/toolbox/ImageLoader;

.field final synthetic val$cacheKey:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/liquable/volley/toolbox/ImageLoader;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/volley/toolbox/ImageLoader;

    .prologue
    .line 243
    iput-object p1, p0, Lcom/liquable/volley/toolbox/ImageLoader$2;->this$0:Lcom/liquable/volley/toolbox/ImageLoader;

    iput-object p2, p0, Lcom/liquable/volley/toolbox/ImageLoader$2;->val$cacheKey:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "response"    # Landroid/graphics/Bitmap;

    .prologue
    .line 246
    iget-object v0, p0, Lcom/liquable/volley/toolbox/ImageLoader$2;->this$0:Lcom/liquable/volley/toolbox/ImageLoader;

    iget-object v1, p0, Lcom/liquable/volley/toolbox/ImageLoader$2;->val$cacheKey:Ljava/lang/String;

    # invokes: Lcom/liquable/volley/toolbox/ImageLoader;->onGetImageSuccess(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    invoke-static {v0, v1, p1}, Lcom/liquable/volley/toolbox/ImageLoader;->access$000(Lcom/liquable/volley/toolbox/ImageLoader;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 247
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 243
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/liquable/volley/toolbox/ImageLoader$2;->onResponse(Landroid/graphics/Bitmap;)V

    return-void
.end method
