.class Lcom/liquable/nemo/facebook/FacebookSession$1;
.super Ljava/lang/Object;
.source "FacebookSession.java"

# interfaces
.implements Lcom/facebook/Session$StatusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/facebook/FacebookSession;->asyncOpenForPublish(ILcom/liquable/nemo/facebook/FacebookSession$IFacebookPublishSessionCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/facebook/FacebookSession;

.field final synthetic val$facebookPublishSessionCallback:Lcom/liquable/nemo/facebook/FacebookSession$IFacebookPublishSessionCallback;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/facebook/FacebookSession;Lcom/liquable/nemo/facebook/FacebookSession$IFacebookPublishSessionCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/facebook/FacebookSession;

    .prologue
    .line 227
    iput-object p1, p0, Lcom/liquable/nemo/facebook/FacebookSession$1;->this$0:Lcom/liquable/nemo/facebook/FacebookSession;

    iput-object p2, p0, Lcom/liquable/nemo/facebook/FacebookSession$1;->val$facebookPublishSessionCallback:Lcom/liquable/nemo/facebook/FacebookSession$IFacebookPublishSessionCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
    .locals 3
    .param p1, "session"    # Lcom/facebook/Session;
    .param p2, "state"    # Lcom/facebook/SessionState;
    .param p3, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 232
    if-eqz p3, :cond_2

    .line 233
    iget-object v0, p0, Lcom/liquable/nemo/facebook/FacebookSession$1;->this$0:Lcom/liquable/nemo/facebook/FacebookSession;

    # invokes: Lcom/liquable/nemo/facebook/FacebookSession;->createNewSession()V
    invoke-static {v0}, Lcom/liquable/nemo/facebook/FacebookSession;->access$600(Lcom/liquable/nemo/facebook/FacebookSession;)V

    .line 235
    instance-of v0, p3, Lcom/facebook/FacebookOperationCanceledException;

    if-eqz v0, :cond_1

    .line 236
    # getter for: Lcom/liquable/nemo/facebook/FacebookSession;->logger:Lcom/liquable/nemo/util/Logger;
    invoke-static {}, Lcom/liquable/nemo/facebook/FacebookSession;->access$100()Lcom/liquable/nemo/util/Logger;

    move-result-object v0

    const-string/jumbo v1, "user cancelled"

    invoke-virtual {v0, v1, p3}, Lcom/liquable/nemo/util/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 237
    iget-object v0, p0, Lcom/liquable/nemo/facebook/FacebookSession$1;->val$facebookPublishSessionCallback:Lcom/liquable/nemo/facebook/FacebookSession$IFacebookPublishSessionCallback;

    invoke-interface {v0}, Lcom/liquable/nemo/facebook/FacebookSession$IFacebookPublishSessionCallback;->onCancel()V

    .line 252
    :cond_0
    :goto_0
    return-void

    .line 241
    :cond_1
    # getter for: Lcom/liquable/nemo/facebook/FacebookSession;->logger:Lcom/liquable/nemo/util/Logger;
    invoke-static {}, Lcom/liquable/nemo/facebook/FacebookSession;->access$100()Lcom/liquable/nemo/util/Logger;

    move-result-object v0

    const-string/jumbo v1, "unable to open FB session"

    invoke-virtual {v0, v1, p3}, Lcom/liquable/nemo/util/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 242
    invoke-static {}, Lcom/liquable/nemo/analytics/CrittercismService;->getInstance()Lcom/liquable/nemo/analytics/CrittercismService;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/liquable/nemo/analytics/CrittercismService;->logException(Ljava/lang/Throwable;)V

    .line 243
    iget-object v0, p0, Lcom/liquable/nemo/facebook/FacebookSession$1;->val$facebookPublishSessionCallback:Lcom/liquable/nemo/facebook/FacebookSession$IFacebookPublishSessionCallback;

    invoke-interface {v0}, Lcom/liquable/nemo/facebook/FacebookSession$IFacebookPublishSessionCallback;->onError()V

    goto :goto_0

    .line 247
    :cond_2
    invoke-virtual {p1}, Lcom/facebook/Session;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/liquable/nemo/facebook/FacebookSession$1;->val$facebookPublishSessionCallback:Lcom/liquable/nemo/facebook/FacebookSession$IFacebookPublishSessionCallback;

    new-instance v1, Lcom/liquable/nemo/facebook/FacebookSession$FacebookPublishRequest;

    iget-object v2, p0, Lcom/liquable/nemo/facebook/FacebookSession$1;->this$0:Lcom/liquable/nemo/facebook/FacebookSession;

    invoke-direct {v1, v2}, Lcom/liquable/nemo/facebook/FacebookSession$FacebookPublishRequest;-><init>(Lcom/liquable/nemo/facebook/FacebookSession;)V

    invoke-interface {v0, v1}, Lcom/liquable/nemo/facebook/FacebookSession$IFacebookPublishSessionCallback;->onOpened(Lcom/liquable/nemo/facebook/FacebookSession$FacebookPublishRequest;)V

    .line 249
    iget-object v0, p0, Lcom/liquable/nemo/facebook/FacebookSession$1;->this$0:Lcom/liquable/nemo/facebook/FacebookSession;

    const/4 v1, 0x1

    # setter for: Lcom/liquable/nemo/facebook/FacebookSession;->opened:Z
    invoke-static {v0, v1}, Lcom/liquable/nemo/facebook/FacebookSession;->access$702(Lcom/liquable/nemo/facebook/FacebookSession;Z)Z

    goto :goto_0
.end method
