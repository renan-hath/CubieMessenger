.class Lcom/liquable/future/FutureChain$10$2;
.super Ljava/lang/Object;
.source "FutureChain.java"

# interfaces
.implements Lcom/liquable/future/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/future/FutureChain$10;->invoke(Ljava/lang/Object;Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/liquable/future/Function",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/liquable/future/FutureChain$10;

.field final synthetic val$e:Ljava/lang/Exception;

.field final synthetic val$result:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/liquable/future/FutureChain$10;Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "this$1"    # Lcom/liquable/future/FutureChain$10;

    .prologue
    .line 264
    .local p0, "this":Lcom/liquable/future/FutureChain$10$2;, "Lcom/liquable/future/FutureChain$10$2;"
    iput-object p1, p0, Lcom/liquable/future/FutureChain$10$2;->this$1:Lcom/liquable/future/FutureChain$10;

    iput-object p2, p0, Lcom/liquable/future/FutureChain$10$2;->val$result:Ljava/lang/Object;

    iput-object p3, p0, Lcom/liquable/future/FutureChain$10$2;->val$e:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 264
    .local p0, "this":Lcom/liquable/future/FutureChain$10$2;, "Lcom/liquable/future/FutureChain$10$2;"
    invoke-virtual {p0, p1}, Lcom/liquable/future/FutureChain$10$2;->run(Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run(Ljava/lang/Object;)Ljava/lang/Void;
    .locals 3
    .param p1, "ignore"    # Ljava/lang/Object;

    .prologue
    .line 268
    .local p0, "this":Lcom/liquable/future/FutureChain$10$2;, "Lcom/liquable/future/FutureChain$10$2;"
    iget-object v0, p0, Lcom/liquable/future/FutureChain$10$2;->this$1:Lcom/liquable/future/FutureChain$10;

    iget-object v0, v0, Lcom/liquable/future/FutureChain$10;->val$nextChain:Lcom/liquable/future/FutureChain;

    iget-object v1, p0, Lcom/liquable/future/FutureChain$10$2;->val$result:Ljava/lang/Object;

    iget-object v2, p0, Lcom/liquable/future/FutureChain$10$2;->val$e:Ljava/lang/Exception;

    invoke-virtual {v0, v1, v2}, Lcom/liquable/future/FutureChain;->done(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 269
    const/4 v0, 0x0

    return-object v0
.end method
