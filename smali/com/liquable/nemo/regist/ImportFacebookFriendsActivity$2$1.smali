.class Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity$2$1;
.super Ljava/lang/Object;
.source "ImportFacebookFriendsActivity.java"

# interfaces
.implements Lcom/liquable/nemo/facebook/FacebookSession$IFacebookReadSessionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity$2;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity$2;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity$2$1;->this$1:Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    .prologue
    .line 152
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v0

    const-string/jumbo v1, "facebookCancel"

    invoke-interface {v0, v1}, Lcom/liquable/nemo/analytics/IAnalyticsService;->importFriendsSkip(Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity$2$1;->this$1:Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity$2;

    iget-object v0, v0, Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity$2;->this$0:Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity;

    # invokes: Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity;->finishAndGoToSelectMyAccountIcon()V
    invoke-static {v0}, Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity;->access$000(Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity;)V

    .line 154
    return-void
.end method

.method public onError()V
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity$2$1;->this$1:Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity$2;

    iget-object v0, v0, Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity$2;->this$0:Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity;

    # invokes: Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity;->finishAndGoToSelectMyAccountIcon()V
    invoke-static {v0}, Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity;->access$000(Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity;)V

    .line 160
    return-void
.end method

.method public onFacebookAlreadyInUse(Ljava/lang/String;)V
    .locals 1
    .param p1, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity$2$1;->this$1:Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity$2;

    iget-object v0, v0, Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity$2;->this$0:Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity;

    # invokes: Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity;->finishAndGoToSelectMyAccountIcon()V
    invoke-static {v0}, Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity;->access$000(Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity;)V

    .line 166
    return-void
.end method

.method public onOpened(Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest;)V
    .locals 4
    .param p1, "facebookRequest"    # Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity$2$1;->this$1:Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity$2;

    iget-object v0, v0, Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity$2;->this$0:Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity;

    # invokes: Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity;->preloadMyPicture()V
    invoke-static {v0}, Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity;->access$100(Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity;)V

    .line 171
    new-instance v0, Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity$ImportFacebookFriendsTask;

    iget-object v1, p0, Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity$2$1;->this$1:Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity$2;

    iget-object v1, v1, Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity$2;->this$0:Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity;

    iget-object v2, p0, Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity$2$1;->this$1:Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity$2;

    iget-object v2, v2, Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity$2;->this$0:Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity$ImportFacebookFriendsTask;-><init>(Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity;Landroid/content/Context;Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest;Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity$ImportFacebookFriendsTask;->execute([Ljava/lang/Object;)V

    .line 172
    return-void
.end method
