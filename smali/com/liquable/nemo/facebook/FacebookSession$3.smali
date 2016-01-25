.class Lcom/liquable/nemo/facebook/FacebookSession$3;
.super Lcom/liquable/nemo/util/RpcAsyncTask;
.source "FacebookSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/facebook/FacebookSession;->registerFacebookUserToNemoServer(Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest;Lcom/liquable/nemo/facebook/FacebookSession$IFacebookReadSessionCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/liquable/nemo/util/RpcAsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/facebook/FacebookSession;

.field final synthetic val$facebookReadRequest:Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest;

.field final synthetic val$facebookReadSessionCallback:Lcom/liquable/nemo/facebook/FacebookSession$IFacebookReadSessionCallback;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/facebook/FacebookSession;Landroid/content/Context;ZLcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest;Lcom/liquable/nemo/facebook/FacebookSession$IFacebookReadSessionCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/facebook/FacebookSession;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "showToast"    # Z

    .prologue
    .line 418
    iput-object p1, p0, Lcom/liquable/nemo/facebook/FacebookSession$3;->this$0:Lcom/liquable/nemo/facebook/FacebookSession;

    iput-object p4, p0, Lcom/liquable/nemo/facebook/FacebookSession$3;->val$facebookReadRequest:Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest;

    iput-object p5, p0, Lcom/liquable/nemo/facebook/FacebookSession$3;->val$facebookReadSessionCallback:Lcom/liquable/nemo/facebook/FacebookSession$IFacebookReadSessionCallback;

    invoke-direct {p0, p2, p3}, Lcom/liquable/nemo/util/RpcAsyncTask;-><init>(Landroid/content/Context;Z)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;,
            Lcom/liquable/nemo/model/DomainException;
        }
    .end annotation

    .prologue
    .line 418
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/facebook/FacebookSession$3;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 7
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;,
            Lcom/liquable/nemo/model/DomainException;
        }
    .end annotation

    .prologue
    .line 421
    iget-object v0, p0, Lcom/liquable/nemo/facebook/FacebookSession$3;->val$facebookReadRequest:Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest;

    invoke-virtual {v0}, Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest;->me()Lcom/liquable/nemo/facebook/FacebookUser;

    move-result-object v6

    .line 422
    .local v6, "facebookUser":Lcom/liquable/nemo/facebook/FacebookUser;
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->userManager:Lcom/liquable/nemo/user/model/UserManager;

    sget-object v1, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v1}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v1

    .line 423
    invoke-virtual {v6}, Lcom/liquable/nemo/facebook/FacebookUser;->getFbuid()Ljava/lang/String;

    move-result-object v2

    .line 424
    invoke-virtual {v6}, Lcom/liquable/nemo/facebook/FacebookUser;->getGender()Ljava/lang/String;

    move-result-object v3

    .line 425
    invoke-virtual {v6}, Lcom/liquable/nemo/facebook/FacebookUser;->getBirthday()Ljava/lang/String;

    move-result-object v4

    .line 426
    invoke-virtual {v6}, Lcom/liquable/nemo/facebook/FacebookUser;->getLocale()Ljava/lang/String;

    move-result-object v5

    .line 422
    invoke-virtual/range {v0 .. v5}, Lcom/liquable/nemo/user/model/UserManager;->connectToFacebook(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    iget-object v0, p0, Lcom/liquable/nemo/facebook/FacebookSession$3;->this$0:Lcom/liquable/nemo/facebook/FacebookSession;

    invoke-virtual {v6}, Lcom/liquable/nemo/facebook/FacebookUser;->getFbuid()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/liquable/nemo/facebook/FacebookSession;->setFacebookUidInPerf(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/liquable/nemo/facebook/FacebookSession;->access$1000(Lcom/liquable/nemo/facebook/FacebookSession;Ljava/lang/String;)V

    .line 428
    iget-object v0, p0, Lcom/liquable/nemo/facebook/FacebookSession$3;->this$0:Lcom/liquable/nemo/facebook/FacebookSession;

    const/4 v1, 0x1

    # setter for: Lcom/liquable/nemo/facebook/FacebookSession;->opened:Z
    invoke-static {v0, v1}, Lcom/liquable/nemo/facebook/FacebookSession;->access$702(Lcom/liquable/nemo/facebook/FacebookSession;Z)Z

    .line 430
    const/4 v0, 0x0

    return-object v0
.end method

.method protected postExecute()V
    .locals 0

    .prologue
    .line 435
    return-void
.end method

.method protected postExecuteFail(Lcom/liquable/nemo/client/AsyncException;)V
    .locals 2
    .param p1, "exception"    # Lcom/liquable/nemo/client/AsyncException;

    .prologue
    .line 439
    iget-object v0, p0, Lcom/liquable/nemo/facebook/FacebookSession$3;->this$0:Lcom/liquable/nemo/facebook/FacebookSession;

    # invokes: Lcom/liquable/nemo/facebook/FacebookSession;->createNewSession()V
    invoke-static {v0}, Lcom/liquable/nemo/facebook/FacebookSession;->access$600(Lcom/liquable/nemo/facebook/FacebookSession;)V

    .line 441
    instance-of v0, p1, Lcom/liquable/nemo/facebook/FacebookAsyncException;

    if-eqz v0, :cond_0

    .line 442
    # getter for: Lcom/liquable/nemo/facebook/FacebookSession;->logger:Lcom/liquable/nemo/util/Logger;
    invoke-static {}, Lcom/liquable/nemo/facebook/FacebookSession;->access$100()Lcom/liquable/nemo/util/Logger;

    move-result-object v0

    const-string/jumbo v1, "unable to open FB session"

    invoke-virtual {v0, v1, p1}, Lcom/liquable/nemo/util/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 443
    invoke-static {}, Lcom/liquable/nemo/analytics/CrittercismService;->getInstance()Lcom/liquable/nemo/analytics/CrittercismService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/analytics/CrittercismService;->logException(Ljava/lang/Throwable;)V

    .line 444
    iget-object v0, p0, Lcom/liquable/nemo/facebook/FacebookSession$3;->val$facebookReadSessionCallback:Lcom/liquable/nemo/facebook/FacebookSession$IFacebookReadSessionCallback;

    invoke-interface {v0}, Lcom/liquable/nemo/facebook/FacebookSession$IFacebookReadSessionCallback;->onError()V

    .line 450
    :goto_0
    return-void

    .line 446
    :cond_0
    # getter for: Lcom/liquable/nemo/facebook/FacebookSession;->logger:Lcom/liquable/nemo/util/Logger;
    invoke-static {}, Lcom/liquable/nemo/facebook/FacebookSession;->access$100()Lcom/liquable/nemo/util/Logger;

    move-result-object v0

    invoke-virtual {p1}, Lcom/liquable/nemo/client/AsyncException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/liquable/nemo/util/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 447
    invoke-static {}, Lcom/liquable/nemo/analytics/CrittercismService;->getInstance()Lcom/liquable/nemo/analytics/CrittercismService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/analytics/CrittercismService;->logException(Ljava/lang/Throwable;)V

    .line 448
    iget-object v0, p0, Lcom/liquable/nemo/facebook/FacebookSession$3;->val$facebookReadSessionCallback:Lcom/liquable/nemo/facebook/FacebookSession$IFacebookReadSessionCallback;

    invoke-interface {v0}, Lcom/liquable/nemo/facebook/FacebookSession$IFacebookReadSessionCallback;->onError()V

    goto :goto_0
.end method

.method protected postExecuteFail(Lcom/liquable/nemo/model/DomainException;)V
    .locals 7
    .param p1, "exception"    # Lcom/liquable/nemo/model/DomainException;

    .prologue
    .line 454
    iget-object v3, p0, Lcom/liquable/nemo/facebook/FacebookSession$3;->this$0:Lcom/liquable/nemo/facebook/FacebookSession;

    # invokes: Lcom/liquable/nemo/facebook/FacebookSession;->createNewSession()V
    invoke-static {v3}, Lcom/liquable/nemo/facebook/FacebookSession;->access$600(Lcom/liquable/nemo/facebook/FacebookSession;)V

    .line 456
    instance-of v3, p1, Lcom/liquable/nemo/model/FacebookAlreadyInUseException;

    if-eqz v3, :cond_0

    move-object v1, p1

    .line 457
    check-cast v1, Lcom/liquable/nemo/model/FacebookAlreadyInUseException;

    .line 459
    .local v1, "faiue":Lcom/liquable/nemo/model/FacebookAlreadyInUseException;
    iget-object v3, p0, Lcom/liquable/nemo/facebook/FacebookSession$3;->this$0:Lcom/liquable/nemo/facebook/FacebookSession;

    # getter for: Lcom/liquable/nemo/facebook/FacebookSession;->activity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/liquable/nemo/facebook/FacebookSession;->access$1100(Lcom/liquable/nemo/facebook/FacebookSession;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v1}, Lcom/liquable/nemo/model/FacebookAlreadyInUseException;->getI18nKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/liquable/nemo/util/Contexts;->getStringResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 460
    .local v2, "resId":I
    iget-object v3, p0, Lcom/liquable/nemo/facebook/FacebookSession$3;->this$0:Lcom/liquable/nemo/facebook/FacebookSession;

    # getter for: Lcom/liquable/nemo/facebook/FacebookSession;->activity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/liquable/nemo/facebook/FacebookSession;->access$1100(Lcom/liquable/nemo/facebook/FacebookSession;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v1}, Lcom/liquable/nemo/model/FacebookAlreadyInUseException;->getNickname()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 462
    .local v0, "errorMsg":Ljava/lang/String;
    iget-object v3, p0, Lcom/liquable/nemo/facebook/FacebookSession$3;->val$facebookReadSessionCallback:Lcom/liquable/nemo/facebook/FacebookSession$IFacebookReadSessionCallback;

    invoke-interface {v3, v0}, Lcom/liquable/nemo/facebook/FacebookSession$IFacebookReadSessionCallback;->onFacebookAlreadyInUse(Ljava/lang/String;)V

    .line 466
    .end local v0    # "errorMsg":Ljava/lang/String;
    .end local v1    # "faiue":Lcom/liquable/nemo/model/FacebookAlreadyInUseException;
    .end local v2    # "resId":I
    :goto_0
    return-void

    .line 464
    :cond_0
    iget-object v3, p0, Lcom/liquable/nemo/facebook/FacebookSession$3;->val$facebookReadSessionCallback:Lcom/liquable/nemo/facebook/FacebookSession$IFacebookReadSessionCallback;

    invoke-interface {v3}, Lcom/liquable/nemo/facebook/FacebookSession$IFacebookReadSessionCallback;->onError()V

    goto :goto_0
.end method

.method protected bridge synthetic postExecuteSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 418
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/facebook/FacebookSession$3;->postExecuteSuccess(Ljava/lang/Void;)V

    return-void
.end method

.method protected postExecuteSuccess(Ljava/lang/Void;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 470
    iget-object v0, p0, Lcom/liquable/nemo/facebook/FacebookSession$3;->val$facebookReadSessionCallback:Lcom/liquable/nemo/facebook/FacebookSession$IFacebookReadSessionCallback;

    iget-object v1, p0, Lcom/liquable/nemo/facebook/FacebookSession$3;->val$facebookReadRequest:Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest;

    invoke-interface {v0, v1}, Lcom/liquable/nemo/facebook/FacebookSession$IFacebookReadSessionCallback;->onOpened(Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest;)V

    .line 471
    return-void
.end method
