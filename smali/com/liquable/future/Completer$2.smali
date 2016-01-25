.class Lcom/liquable/future/Completer$2;
.super Ljava/lang/Object;
.source "Completer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/future/Completer;->completeError(Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/future/Completer;

.field final synthetic val$e:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Lcom/liquable/future/Completer;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/future/Completer;

    .prologue
    .line 50
    .local p0, "this":Lcom/liquable/future/Completer$2;, "Lcom/liquable/future/Completer$2;"
    iput-object p1, p0, Lcom/liquable/future/Completer$2;->this$0:Lcom/liquable/future/Completer;

    iput-object p2, p0, Lcom/liquable/future/Completer$2;->val$e:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 54
    .local p0, "this":Lcom/liquable/future/Completer$2;, "Lcom/liquable/future/Completer$2;"
    iget-object v0, p0, Lcom/liquable/future/Completer$2;->this$0:Lcom/liquable/future/Completer;

    # getter for: Lcom/liquable/future/Completer;->futureChain:Lcom/liquable/future/FutureChain;
    invoke-static {v0}, Lcom/liquable/future/Completer;->access$000(Lcom/liquable/future/Completer;)Lcom/liquable/future/FutureChain;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/liquable/future/Completer$2;->val$e:Ljava/lang/Exception;

    invoke-virtual {v0, v1, v2}, Lcom/liquable/future/FutureChain;->done(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 55
    return-void
.end method
