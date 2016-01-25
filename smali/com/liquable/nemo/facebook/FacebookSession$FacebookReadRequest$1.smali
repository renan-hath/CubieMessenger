.class Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest$1;
.super Ljava/lang/Object;
.source "FacebookSession.java"

# interfaces
.implements Lcom/facebook/widget/WebDialog$OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest;->dialog(Landroid/content/Context;Landroid/os/Bundle;Lcom/liquable/nemo/facebook/FacebookSession$IFacebookDialogCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest;

.field final synthetic val$facebookDialogCallback:Lcom/liquable/nemo/facebook/FacebookSession$IFacebookDialogCallback;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest;Lcom/liquable/nemo/facebook/FacebookSession$IFacebookDialogCallback;)V
    .locals 0
    .param p1, "this$1"    # Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest$1;->this$1:Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest;

    iput-object p2, p0, Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest$1;->val$facebookDialogCallback:Lcom/liquable/nemo/facebook/FacebookSession$IFacebookDialogCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Landroid/os/Bundle;Lcom/facebook/FacebookException;)V
    .locals 3
    .param p1, "values"    # Landroid/os/Bundle;
    .param p2, "exception"    # Lcom/facebook/FacebookException;

    .prologue
    .line 75
    if-eqz p2, :cond_1

    .line 76
    instance-of v1, p2, Lcom/facebook/FacebookOperationCanceledException;

    if-eqz v1, :cond_0

    .line 77
    iget-object v1, p0, Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest$1;->val$facebookDialogCallback:Lcom/liquable/nemo/facebook/FacebookSession$IFacebookDialogCallback;

    invoke-interface {v1}, Lcom/liquable/nemo/facebook/FacebookSession$IFacebookDialogCallback;->onCancel()V

    .line 95
    :goto_0
    return-void

    .line 81
    :cond_0
    iget-object v1, p0, Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest$1;->val$facebookDialogCallback:Lcom/liquable/nemo/facebook/FacebookSession$IFacebookDialogCallback;

    invoke-interface {v1}, Lcom/liquable/nemo/facebook/FacebookSession$IFacebookDialogCallback;->onError()V

    .line 82
    # getter for: Lcom/liquable/nemo/facebook/FacebookSession;->logger:Lcom/liquable/nemo/util/Logger;
    invoke-static {}, Lcom/liquable/nemo/facebook/FacebookSession;->access$100()Lcom/liquable/nemo/util/Logger;

    move-result-object v1

    const-string/jumbo v2, "unable to open FB session"

    invoke-virtual {v1, v2, p2}, Lcom/liquable/nemo/util/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 83
    invoke-static {}, Lcom/liquable/nemo/analytics/CrittercismService;->getInstance()Lcom/liquable/nemo/analytics/CrittercismService;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/liquable/nemo/analytics/CrittercismService;->logException(Ljava/lang/Throwable;)V

    .line 84
    iget-object v1, p0, Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest$1;->val$facebookDialogCallback:Lcom/liquable/nemo/facebook/FacebookSession$IFacebookDialogCallback;

    invoke-interface {v1}, Lcom/liquable/nemo/facebook/FacebookSession$IFacebookDialogCallback;->onError()V

    goto :goto_0

    .line 88
    :cond_1
    const-string/jumbo v1, "post_id"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, "postId":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 90
    iget-object v1, p0, Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest$1;->val$facebookDialogCallback:Lcom/liquable/nemo/facebook/FacebookSession$IFacebookDialogCallback;

    invoke-interface {v1}, Lcom/liquable/nemo/facebook/FacebookSession$IFacebookDialogCallback;->onCancel()V

    goto :goto_0

    .line 94
    :cond_2
    iget-object v1, p0, Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest$1;->val$facebookDialogCallback:Lcom/liquable/nemo/facebook/FacebookSession$IFacebookDialogCallback;

    invoke-interface {v1}, Lcom/liquable/nemo/facebook/FacebookSession$IFacebookDialogCallback;->onComplete()V

    goto :goto_0
.end method
