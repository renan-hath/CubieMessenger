.class Lcom/liquable/nemo/client/EndPointClient$1;
.super Ljava/lang/Object;
.source "EndPointClient.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/client/EndPointClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/client/EndPointClient;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/client/EndPointClient;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/client/EndPointClient;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/liquable/nemo/client/EndPointClient$1;->this$0:Lcom/liquable/nemo/client/EndPointClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2
    .param p1, "run"    # Ljava/lang/Runnable;

    .prologue
    .line 111
    new-instance v0, Ljava/lang/Thread;

    const-string/jumbo v1, "Endpoint writer thread"

    invoke-direct {v0, p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object v0
.end method
