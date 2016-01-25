.class Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity$1;
.super Ljava/lang/Object;
.source "ImportFacebookFriendsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity;->onLoggedInCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity$1;->this$0:Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 134
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v0

    const-string/jumbo v1, "facebook"

    invoke-interface {v0, v1}, Lcom/liquable/nemo/analytics/IAnalyticsService;->importFriendsSkip(Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity$1;->this$0:Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity;

    # invokes: Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity;->finishAndGoToSelectMyAccountIcon()V
    invoke-static {v0}, Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity;->access$000(Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity;)V

    .line 136
    return-void
.end method
