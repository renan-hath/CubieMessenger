.class Lcom/liquable/future/Completer$1;
.super Ljava/lang/Object;
.source "Completer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/future/Completer;->complete(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/future/Completer;

.field final synthetic val$result:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/liquable/future/Completer;Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/future/Completer;

    .prologue
    .line 27
    .local p0, "this":Lcom/liquable/future/Completer$1;, "Lcom/liquable/future/Completer$1;"
    iput-object p1, p0, Lcom/liquable/future/Completer$1;->this$0:Lcom/liquable/future/Completer;

    iput-object p2, p0, Lcom/liquable/future/Completer$1;->val$result:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 31
    .local p0, "this":Lcom/liquable/future/Completer$1;, "Lcom/liquable/future/Completer$1;"
    iget-object v0, p0, Lcom/liquable/future/Completer$1;->this$0:Lcom/liquable/future/Completer;

    # getter for: Lcom/liquable/future/Completer;->futureChain:Lcom/liquable/future/FutureChain;
    invoke-static {v0}, Lcom/liquable/future/Completer;->access$000(Lcom/liquable/future/Completer;)Lcom/liquable/future/FutureChain;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/future/Completer$1;->val$result:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/liquable/future/FutureChain;->done(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 32
    return-void
.end method
