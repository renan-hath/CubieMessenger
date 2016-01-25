.class Lcom/liquable/nemo/facebook/FacebookSession$2;
.super Ljava/lang/Object;
.source "FacebookSession.java"

# interfaces
.implements Lcom/facebook/Session$StatusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/facebook/FacebookSession;->asyncOpenForRead(ZILcom/liquable/nemo/facebook/FacebookSession$IFacebookReadSessionCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/facebook/FacebookSession;

.field final synthetic val$facebookReadSessionCallback:Lcom/liquable/nemo/facebook/FacebookSession$IFacebookReadSessionCallback;

.field final synthetic val$registerToNemoServer:Z


# direct methods
.method constructor <init>(Lcom/liquable/nemo/facebook/FacebookSession;Lcom/liquable/nemo/facebook/FacebookSession$IFacebookReadSessionCallback;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/facebook/FacebookSession;

    .prologue
    .line 265
    iput-object p1, p0, Lcom/liquable/nemo/facebook/FacebookSession$2;->this$0:Lcom/liquable/nemo/facebook/FacebookSession;

    iput-object p2, p0, Lcom/liquable/nemo/facebook/FacebookSession$2;->val$facebookReadSessionCallback:Lcom/liquable/nemo/facebook/FacebookSession$IFacebookReadSessionCallback;

    iput-boolean p3, p0, Lcom/liquable/nemo/facebook/FacebookSession$2;->val$registerToNemoServer:Z

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
    .line 270
    if-eqz p3, :cond_2

    .line 271
    iget-object v1, p0, Lcom/liquable/nemo/facebook/FacebookSession$2;->this$0:Lcom/liquable/nemo/facebook/FacebookSession;

    # invokes: Lcom/liquable/nemo/facebook/FacebookSession;->createNewSession()V
    invoke-static {v1}, Lcom/liquable/nemo/facebook/FacebookSession;->access$600(Lcom/liquable/nemo/facebook/FacebookSession;)V

    .line 273
    instance-of v1, p3, Lcom/facebook/FacebookOperationCanceledException;

    if-eqz v1, :cond_1

    .line 274
    # getter for: Lcom/liquable/nemo/facebook/FacebookSession;->logger:Lcom/liquable/nemo/util/Logger;
    invoke-static {}, Lcom/liquable/nemo/facebook/FacebookSession;->access$100()Lcom/liquable/nemo/util/Logger;

    move-result-object v1

    const-string/jumbo v2, "user cancelled"

    invoke-virtual {v1, v2, p3}, Lcom/liquable/nemo/util/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 275
    iget-object v1, p0, Lcom/liquable/nemo/facebook/FacebookSession$2;->val$facebookReadSessionCallback:Lcom/liquable/nemo/facebook/FacebookSession$IFacebookReadSessionCallback;

    invoke-interface {v1}, Lcom/liquable/nemo/facebook/FacebookSession$IFacebookReadSessionCallback;->onCancel()V

    .line 295
    :cond_0
    :goto_0
    return-void

    .line 279
    :cond_1
    # getter for: Lcom/liquable/nemo/facebook/FacebookSession;->logger:Lcom/liquable/nemo/util/Logger;
    invoke-static {}, Lcom/liquable/nemo/facebook/FacebookSession;->access$100()Lcom/liquable/nemo/util/Logger;

    move-result-object v1

    const-string/jumbo v2, "unable to open FB session"

    invoke-virtual {v1, v2, p3}, Lcom/liquable/nemo/util/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 280
    invoke-static {}, Lcom/liquable/nemo/analytics/CrittercismService;->getInstance()Lcom/liquable/nemo/analytics/CrittercismService;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/liquable/nemo/analytics/CrittercismService;->logException(Ljava/lang/Throwable;)V

    .line 281
    iget-object v1, p0, Lcom/liquable/nemo/facebook/FacebookSession$2;->val$facebookReadSessionCallback:Lcom/liquable/nemo/facebook/FacebookSession$IFacebookReadSessionCallback;

    invoke-interface {v1}, Lcom/liquable/nemo/facebook/FacebookSession$IFacebookReadSessionCallback;->onError()V

    goto :goto_0

    .line 285
    :cond_2
    invoke-virtual {p1}, Lcom/facebook/Session;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 286
    new-instance v0, Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest;

    iget-object v1, p0, Lcom/liquable/nemo/facebook/FacebookSession$2;->this$0:Lcom/liquable/nemo/facebook/FacebookSession;

    invoke-direct {v0, v1}, Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest;-><init>(Lcom/liquable/nemo/facebook/FacebookSession;)V

    .line 287
    .local v0, "facebookReadRequest":Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest;
    iget-object v1, p0, Lcom/liquable/nemo/facebook/FacebookSession$2;->this$0:Lcom/liquable/nemo/facebook/FacebookSession;

    # invokes: Lcom/liquable/nemo/facebook/FacebookSession;->isFacebookConnectedBefore()Z
    invoke-static {v1}, Lcom/liquable/nemo/facebook/FacebookSession;->access$800(Lcom/liquable/nemo/facebook/FacebookSession;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/liquable/nemo/facebook/FacebookSession$2;->val$registerToNemoServer:Z

    if-nez v1, :cond_4

    .line 288
    :cond_3
    iget-object v1, p0, Lcom/liquable/nemo/facebook/FacebookSession$2;->this$0:Lcom/liquable/nemo/facebook/FacebookSession;

    const/4 v2, 0x1

    # setter for: Lcom/liquable/nemo/facebook/FacebookSession;->opened:Z
    invoke-static {v1, v2}, Lcom/liquable/nemo/facebook/FacebookSession;->access$702(Lcom/liquable/nemo/facebook/FacebookSession;Z)Z

    .line 289
    iget-object v1, p0, Lcom/liquable/nemo/facebook/FacebookSession$2;->val$facebookReadSessionCallback:Lcom/liquable/nemo/facebook/FacebookSession$IFacebookReadSessionCallback;

    invoke-interface {v1, v0}, Lcom/liquable/nemo/facebook/FacebookSession$IFacebookReadSessionCallback;->onOpened(Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest;)V

    goto :goto_0

    .line 293
    :cond_4
    iget-object v1, p0, Lcom/liquable/nemo/facebook/FacebookSession$2;->this$0:Lcom/liquable/nemo/facebook/FacebookSession;

    iget-object v2, p0, Lcom/liquable/nemo/facebook/FacebookSession$2;->val$facebookReadSessionCallback:Lcom/liquable/nemo/facebook/FacebookSession$IFacebookReadSessionCallback;

    # invokes: Lcom/liquable/nemo/facebook/FacebookSession;->registerFacebookUserToNemoServer(Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest;Lcom/liquable/nemo/facebook/FacebookSession$IFacebookReadSessionCallback;)V
    invoke-static {v1, v0, v2}, Lcom/liquable/nemo/facebook/FacebookSession;->access$900(Lcom/liquable/nemo/facebook/FacebookSession;Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest;Lcom/liquable/nemo/facebook/FacebookSession$IFacebookReadSessionCallback;)V

    goto :goto_0
.end method
