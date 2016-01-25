.class Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity$1;
.super Lcom/liquable/nemo/util/RpcAsyncTask;
.source "CreateProfileWithFacebookActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity;->importFacebookFriendsAndProfilePictureInBackground(Lcom/liquable/nemo/model/account/ProfileDto;Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest;)V
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
.field final synthetic this$0:Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity;

.field final synthetic val$facebookReadRequest:Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest;

.field final synthetic val$profileDto:Lcom/liquable/nemo/model/account/ProfileDto;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity;Landroid/content/Context;Lcom/liquable/nemo/model/account/ProfileDto;Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity$1;->this$0:Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity;

    iput-object p3, p0, Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity$1;->val$profileDto:Lcom/liquable/nemo/model/account/ProfileDto;

    iput-object p4, p0, Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity$1;->val$facebookReadRequest:Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest;

    invoke-direct {p0, p2}, Lcom/liquable/nemo/util/RpcAsyncTask;-><init>(Landroid/content/Context;)V

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
    .line 52
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;,
            Lcom/liquable/nemo/model/DomainException;
        }
    .end annotation

    .prologue
    .line 55
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->registrationDaemon:Lcom/liquable/nemo/regist/RegistrationDaemon;

    iget-object v2, p0, Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity$1;->val$profileDto:Lcom/liquable/nemo/model/account/ProfileDto;

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/regist/RegistrationDaemon;->isFirstLogin(Lcom/liquable/nemo/model/account/ProfileDto;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    # getter for: Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity;->logger:Lcom/liquable/nemo/util/Logger;
    invoke-static {}, Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity;->access$000()Lcom/liquable/nemo/util/Logger;

    move-result-object v1

    const-string/jumbo v2, "first time login, update icon from facebook"

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 58
    :try_start_0
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->facebookDaemon:Lcom/liquable/nemo/facebook/FacebookDaemon;

    iget-object v2, p0, Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity$1;->this$0:Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity;

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/facebook/FacebookDaemon;->updateMyAccountIconWithFacebookIcon(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/liquable/nemo/client/AsyncException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :goto_0
    :try_start_1
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->facebookDaemon:Lcom/liquable/nemo/facebook/FacebookDaemon;

    iget-object v2, p0, Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity$1;->val$facebookReadRequest:Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest;

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/facebook/FacebookDaemon;->importFacebookOneWayFriends(Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest;)Ljava/util/List;
    :try_end_1
    .catch Lcom/liquable/nemo/client/AsyncException; {:try_start_1 .. :try_end_1} :catch_1

    .line 72
    :goto_1
    const/4 v1, 0x0

    return-object v1

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Lcom/liquable/nemo/client/AsyncException;
    # getter for: Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity;->logger:Lcom/liquable/nemo/util/Logger;
    invoke-static {}, Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity;->access$000()Lcom/liquable/nemo/util/Logger;

    move-result-object v1

    const-string/jumbo v2, "updateMyAccountIconWithFacebookIcon async error, abort"

    invoke-virtual {v1, v2, v0}, Lcom/liquable/nemo/util/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 63
    .end local v0    # "e":Lcom/liquable/nemo/client/AsyncException;
    :cond_0
    # getter for: Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity;->logger:Lcom/liquable/nemo/util/Logger;
    invoke-static {}, Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity;->access$000()Lcom/liquable/nemo/util/Logger;

    move-result-object v1

    const-string/jumbo v2, "Not first time login, skip update icon from facebook"

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/util/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 68
    :catch_1
    move-exception v0

    .line 69
    .restart local v0    # "e":Lcom/liquable/nemo/client/AsyncException;
    # getter for: Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity;->logger:Lcom/liquable/nemo/util/Logger;
    invoke-static {}, Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity;->access$000()Lcom/liquable/nemo/util/Logger;

    move-result-object v1

    const-string/jumbo v2, "importFacebookOneWayFriends async error, abort"

    invoke-virtual {v1, v2, v0}, Lcom/liquable/nemo/util/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method protected postExecute()V
    .locals 0

    .prologue
    .line 76
    return-void
.end method

.method protected bridge synthetic postExecuteSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 52
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity$1;->postExecuteSuccess(Ljava/lang/Void;)V

    return-void
.end method

.method protected postExecuteSuccess(Ljava/lang/Void;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 79
    return-void
.end method
