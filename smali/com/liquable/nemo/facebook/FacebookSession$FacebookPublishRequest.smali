.class public Lcom/liquable/nemo/facebook/FacebookSession$FacebookPublishRequest;
.super Ljava/lang/Object;
.source "FacebookSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/facebook/FacebookSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FacebookPublishRequest"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/facebook/FacebookSession;


# direct methods
.method public constructor <init>(Lcom/liquable/nemo/facebook/FacebookSession;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/facebook/FacebookSession;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/liquable/nemo/facebook/FacebookSession$FacebookPublishRequest;->this$0:Lcom/liquable/nemo/facebook/FacebookSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uploadPhoto(Ljava/lang/String;Ljava/io/File;)V
    .locals 7
    .param p1, "caption"    # Ljava/lang/String;
    .param p2, "mediaFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Lcom/liquable/nemo/facebook/FacebookAsyncException;
        }
    .end annotation

    .prologue
    .line 46
    const/high16 v4, 0x10000000

    invoke-static {p2, v4}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 48
    .local v0, "descriptor":Landroid/os/ParcelFileDescriptor;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 50
    .local v2, "parameters":Landroid/os/Bundle;
    const-string/jumbo v4, "picture"

    invoke-virtual {v2, v4, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 52
    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 53
    const-string/jumbo v4, "caption"

    invoke-virtual {v2, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    :cond_0
    iget-object v4, p0, Lcom/liquable/nemo/facebook/FacebookSession$FacebookPublishRequest;->this$0:Lcom/liquable/nemo/facebook/FacebookSession;

    const-string/jumbo v5, "me/photos"

    sget-object v6, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    # invokes: Lcom/liquable/nemo/facebook/FacebookSession;->execute(Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;)Lcom/facebook/Response;
    invoke-static {v4, v5, v2, v6}, Lcom/liquable/nemo/facebook/FacebookSession;->access$000(Lcom/liquable/nemo/facebook/FacebookSession;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;)Lcom/facebook/Response;

    move-result-object v3

    .line 57
    .local v3, "response":Lcom/facebook/Response;
    invoke-virtual {v3}, Lcom/facebook/Response;->getGraphObject()Lcom/facebook/model/GraphObject;

    move-result-object v4

    if-nez v4, :cond_1

    .line 58
    new-instance v1, Lcom/liquable/nemo/facebook/FacebookRpcException;

    const-string/jumbo v4, "Empty return"

    invoke-direct {v1, v4}, Lcom/liquable/nemo/facebook/FacebookRpcException;-><init>(Ljava/lang/String;)V

    .line 59
    .local v1, "e":Lcom/liquable/nemo/facebook/FacebookRpcException;
    # getter for: Lcom/liquable/nemo/facebook/FacebookSession;->logger:Lcom/liquable/nemo/util/Logger;
    invoke-static {}, Lcom/liquable/nemo/facebook/FacebookSession;->access$100()Lcom/liquable/nemo/util/Logger;

    move-result-object v4

    invoke-virtual {v1}, Lcom/liquable/nemo/facebook/FacebookRpcException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/liquable/nemo/util/Logger;->error(Ljava/lang/String;)V

    .line 60
    invoke-static {}, Lcom/liquable/nemo/analytics/CrittercismService;->getInstance()Lcom/liquable/nemo/analytics/CrittercismService;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/liquable/nemo/analytics/CrittercismService;->logException(Ljava/lang/Throwable;)V

    .line 61
    new-instance v4, Lcom/liquable/nemo/facebook/FacebookAsyncException;

    invoke-direct {v4}, Lcom/liquable/nemo/facebook/FacebookAsyncException;-><init>()V

    throw v4

    .line 63
    .end local v1    # "e":Lcom/liquable/nemo/facebook/FacebookRpcException;
    :cond_1
    return-void
.end method
