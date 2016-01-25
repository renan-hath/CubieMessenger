.class Lcom/liquable/nemo/client/layer/LiteSecureLayer$1;
.super Ljava/lang/Object;
.source "LiteSecureLayer.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/client/layer/LiteSecureLayer;->begin(Ljava/net/Socket;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/client/layer/LiteSecureLayer;

.field final synthetic val$socket:Ljava/net/Socket;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/client/layer/LiteSecureLayer;Ljava/net/Socket;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/client/layer/LiteSecureLayer;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/liquable/nemo/client/layer/LiteSecureLayer$1;->this$0:Lcom/liquable/nemo/client/layer/LiteSecureLayer;

    iput-object p2, p0, Lcom/liquable/nemo/client/layer/LiteSecureLayer$1;->val$socket:Ljava/net/Socket;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 135
    iget-object v0, p0, Lcom/liquable/nemo/client/layer/LiteSecureLayer$1;->val$socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;->parseDelimitedFrom(Ljava/io/InputStream;)Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/liquable/nemo/client/layer/LiteSecureLayer$1;->call()Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;

    move-result-object v0

    return-object v0
.end method
