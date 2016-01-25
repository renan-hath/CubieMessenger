.class Lcom/liquable/future/FutureContext$2;
.super Ljava/lang/Object;
.source "FutureContext.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/future/FutureContext;->delayed(J)Lcom/liquable/future/IFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/future/FutureContext;

.field final synthetic val$completer:Lcom/liquable/future/Completer;


# direct methods
.method constructor <init>(Lcom/liquable/future/FutureContext;Lcom/liquable/future/Completer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/future/FutureContext;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/liquable/future/FutureContext$2;->this$0:Lcom/liquable/future/FutureContext;

    iput-object p2, p0, Lcom/liquable/future/FutureContext$2;->val$completer:Lcom/liquable/future/Completer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/liquable/future/FutureContext$2;->val$completer:Lcom/liquable/future/Completer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/liquable/future/Completer;->complete(Ljava/lang/Object;)V

    .line 48
    return-void
.end method
