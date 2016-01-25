.class Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity$3;
.super Ljava/lang/Object;
.source "CreateProfileWithFacebookActivity.java"

# interfaces
.implements Lcom/liquable/nemo/facebook/FacebookSession$IFacebookReadSessionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity;->onNotLoggedInCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity$3;->this$0:Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .prologue
    .line 139
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v0

    invoke-interface {v0}, Lcom/liquable/nemo/analytics/IAnalyticsService;->beginPhoneVerificationOnCancel()V

    .line 140
    iget-object v0, p0, Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity$3;->this$0:Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity;

    # invokes: Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity;->failFacebookLogin()V
    invoke-static {v0}, Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity;->access$100(Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity;)V

    .line 141
    return-void
.end method

.method public onError()V
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity$3;->this$0:Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity;

    # invokes: Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity;->showFacebookErrorToast()V
    invoke-static {v0}, Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity;->access$200(Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity;)V

    .line 147
    iget-object v0, p0, Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity$3;->this$0:Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity;

    # invokes: Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity;->failFacebookLogin()V
    invoke-static {v0}, Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity;->access$100(Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity;)V

    .line 148
    return-void
.end method

.method public onFacebookAlreadyInUse(Ljava/lang/String;)V
    .locals 0
    .param p1, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 153
    return-void
.end method

.method public onOpened(Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest;)V
    .locals 1
    .param p1, "facebookReadRequest"    # Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity$3;->this$0:Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity;

    # setter for: Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity;->facebookReadRequest:Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest;
    invoke-static {v0, p1}, Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity;->access$302(Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity;Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest;)Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest;

    .line 158
    iget-object v0, p0, Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity$3;->this$0:Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity;

    # invokes: Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity;->registerToServer(Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest;)V
    invoke-static {v0, p1}, Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity;->access$400(Lcom/liquable/nemo/regist/CreateProfileWithFacebookActivity;Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest;)V

    .line 159
    return-void
.end method
