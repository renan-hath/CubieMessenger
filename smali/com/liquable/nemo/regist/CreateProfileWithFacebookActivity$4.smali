.class Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity$4;
.super Lcom/liquable/nemo/util/RpcAsyncTask;
.source "CreateProfileWithFacebookActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity;->registerToServer(Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest;)V
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
        "Lcom/liquable/nemo/model/account/ProfileDto;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity;

.field final synthetic val$facebookReadRequest:Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity;Landroid/content/Context;Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 167
    iput-object p1, p0, Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity$4;->this$0:Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity;

    iput-object p3, p0, Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity$4;->val$facebookReadRequest:Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest;

    invoke-direct {p0, p2}, Lcom/liquable/nemo/util/RpcAsyncTask;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/liquable/nemo/model/account/ProfileDto;
    .locals 8
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;,
            Lcom/liquable/nemo/model/DomainException;
        }
    .end annotation

    .prologue
    .line 171
    iget-object v0, p0, Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity$4;->val$facebookReadRequest:Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest;

    invoke-virtual {v0}, Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest;->me()Lcom/liquable/nemo/facebook/FacebookUser;

    move-result-object v7

    .line 172
    .local v7, "facebookUser":Lcom/liquable/nemo/facebook/FacebookUser;
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->registrationDaemon:Lcom/liquable/nemo/regist/RegistrationDaemon;

    invoke-virtual {v7}, Lcom/liquable/nemo/facebook/FacebookUser;->getFbuid()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity$4;->val$facebookReadRequest:Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest;

    .line 173
    invoke-virtual {v2}, Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    .line 174
    invoke-virtual {v7}, Lcom/liquable/nemo/facebook/FacebookUser;->getNickname()Ljava/lang/String;

    move-result-object v3

    .line 175
    invoke-virtual {v7}, Lcom/liquable/nemo/facebook/FacebookUser;->getGender()Ljava/lang/String;

    move-result-object v4

    .line 176
    invoke-virtual {v7}, Lcom/liquable/nemo/facebook/FacebookUser;->getBirthday()Ljava/lang/String;

    move-result-object v5

    .line 177
    invoke-virtual {v7}, Lcom/liquable/nemo/facebook/FacebookUser;->getLocale()Ljava/lang/String;

    move-result-object v6

    .line 172
    invoke-virtual/range {v0 .. v6}, Lcom/liquable/nemo/regist/RegistrationDaemon;->findOrCreateProfileWithFacebook(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/model/account/ProfileDto;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;,
            Lcom/liquable/nemo/model/DomainException;
        }
    .end annotation

    .prologue
    .line 167
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity$4;->doInBackground([Ljava/lang/Void;)Lcom/liquable/nemo/model/account/ProfileDto;

    move-result-object v0

    return-object v0
.end method

.method protected postExecute()V
    .locals 0

    .prologue
    .line 181
    return-void
.end method

.method protected postExecuteFail(Lcom/liquable/nemo/client/AsyncException;)V
    .locals 1
    .param p1, "exception"    # Lcom/liquable/nemo/client/AsyncException;

    .prologue
    .line 185
    instance-of v0, p1, Lcom/liquable/nemo/facebook/FacebookAsyncException;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity$4;->this$0:Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity;

    # invokes: Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity;->showFacebookErrorToast()V
    invoke-static {v0}, Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity;->access$200(Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity;)V

    .line 187
    iget-object v0, p0, Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity$4;->this$0:Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity;

    # invokes: Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity;->failFacebookLogin()V
    invoke-static {v0}, Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity;->access$100(Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity;)V

    .line 192
    :goto_0
    return-void

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity$4;->this$0:Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity;

    # invokes: Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity;->showAsyncErrorToast()V
    invoke-static {v0}, Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity;->access$500(Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity;)V

    .line 190
    iget-object v0, p0, Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity$4;->this$0:Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity;

    # invokes: Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity;->failFacebookLogin()V
    invoke-static {v0}, Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity;->access$100(Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity;)V

    goto :goto_0
.end method

.method protected postExecuteFail(Lcom/liquable/nemo/model/DomainException;)V
    .locals 2
    .param p1, "exception"    # Lcom/liquable/nemo/model/DomainException;

    .prologue
    .line 196
    iget-object v0, p0, Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity$4;->this$0:Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity;

    invoke-virtual {p1}, Lcom/liquable/nemo/model/DomainException;->getI18nKey()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity;->showToast(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity;->access$600(Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity;Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity$4;->this$0:Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity;

    # invokes: Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity;->failFacebookLogin()V
    invoke-static {v0}, Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity;->access$100(Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity;)V

    .line 198
    return-void
.end method

.method protected postExecuteSuccess(Lcom/liquable/nemo/model/account/ProfileDto;)V
    .locals 2
    .param p1, "profileDto"    # Lcom/liquable/nemo/model/account/ProfileDto;

    .prologue
    .line 202
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {p1}, Lcom/liquable/nemo/model/account/ProfileDto;->getFbuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/Pref;->setFbuid(Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity$4;->this$0:Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity;

    # invokes: Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity;->startRestoreDataActivity(Lcom/liquable/nemo/model/account/ProfileDto;)V
    invoke-static {v0, p1}, Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity;->access$700(Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity;Lcom/liquable/nemo/model/account/ProfileDto;)V

    .line 204
    return-void
.end method

.method protected bridge synthetic postExecuteSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 167
    check-cast p1, Lcom/liquable/nemo/model/account/ProfileDto;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity$4;->postExecuteSuccess(Lcom/liquable/nemo/model/account/ProfileDto;)V

    return-void
.end method
