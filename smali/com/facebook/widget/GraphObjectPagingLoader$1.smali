.class Lcom/facebook/widget/GraphObjectPagingLoader$1;
.super Ljava/lang/Object;
.source "GraphObjectPagingLoader.java"

# interfaces
.implements Lcom/facebook/Request$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/widget/GraphObjectPagingLoader;->followNextLink()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/widget/GraphObjectPagingLoader;


# direct methods
.method constructor <init>(Lcom/facebook/widget/GraphObjectPagingLoader;)V
    .locals 0
    .param p1, "this$0"    # Lcom/facebook/widget/GraphObjectPagingLoader;

    .prologue
    .line 90
    .local p0, "this":Lcom/facebook/widget/GraphObjectPagingLoader$1;, "Lcom/facebook/widget/GraphObjectPagingLoader$1;"
    iput-object p1, p0, Lcom/facebook/widget/GraphObjectPagingLoader$1;->this$0:Lcom/facebook/widget/GraphObjectPagingLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/Response;)V
    .locals 1
    .param p1, "response"    # Lcom/facebook/Response;

    .prologue
    .line 93
    .local p0, "this":Lcom/facebook/widget/GraphObjectPagingLoader$1;, "Lcom/facebook/widget/GraphObjectPagingLoader$1;"
    iget-object v0, p0, Lcom/facebook/widget/GraphObjectPagingLoader$1;->this$0:Lcom/facebook/widget/GraphObjectPagingLoader;

    # invokes: Lcom/facebook/widget/GraphObjectPagingLoader;->requestCompleted(Lcom/facebook/Response;)V
    invoke-static {v0, p1}, Lcom/facebook/widget/GraphObjectPagingLoader;->access$000(Lcom/facebook/widget/GraphObjectPagingLoader;Lcom/facebook/Response;)V

    .line 94
    return-void
.end method
