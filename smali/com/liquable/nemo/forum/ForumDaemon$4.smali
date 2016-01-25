.class Lcom/liquable/nemo/forum/ForumDaemon$4;
.super Ljava/lang/Object;
.source "ForumDaemon.java"

# interfaces
.implements Lcom/liquable/volley/toolbox/ImageLoader$ImageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/forum/ForumDaemon;->findIconBitmap(Ljava/lang/String;)Lcom/liquable/future/IFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/forum/ForumDaemon;

.field final synthetic val$completer:Lcom/liquable/future/Completer;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/forum/ForumDaemon;Lcom/liquable/future/Completer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/forum/ForumDaemon;

    .prologue
    .line 526
    iput-object p1, p0, Lcom/liquable/nemo/forum/ForumDaemon$4;->this$0:Lcom/liquable/nemo/forum/ForumDaemon;

    iput-object p2, p0, Lcom/liquable/nemo/forum/ForumDaemon$4;->val$completer:Lcom/liquable/future/Completer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 1
    .param p1, "volleyError"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 539
    iget-object v0, p0, Lcom/liquable/nemo/forum/ForumDaemon$4;->val$completer:Lcom/liquable/future/Completer;

    invoke-virtual {v0}, Lcom/liquable/future/Completer;->isComplete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 540
    iget-object v0, p0, Lcom/liquable/nemo/forum/ForumDaemon$4;->val$completer:Lcom/liquable/future/Completer;

    invoke-virtual {v0, p1}, Lcom/liquable/future/Completer;->completeError(Ljava/lang/Exception;)V

    .line 542
    :cond_0
    return-void
.end method

.method public onResponse(Lcom/liquable/volley/toolbox/ImageLoader$ImageContainer;Z)V
    .locals 2
    .param p1, "response"    # Lcom/liquable/volley/toolbox/ImageLoader$ImageContainer;
    .param p2, "isImmediate"    # Z

    .prologue
    .line 532
    iget-object v0, p0, Lcom/liquable/nemo/forum/ForumDaemon$4;->val$completer:Lcom/liquable/future/Completer;

    invoke-virtual {v0}, Lcom/liquable/future/Completer;->isComplete()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/liquable/volley/toolbox/ImageLoader$ImageContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 533
    iget-object v0, p0, Lcom/liquable/nemo/forum/ForumDaemon$4;->val$completer:Lcom/liquable/future/Completer;

    invoke-virtual {p1}, Lcom/liquable/volley/toolbox/ImageLoader$ImageContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/future/Completer;->complete(Ljava/lang/Object;)V

    .line 535
    :cond_0
    return-void
.end method
