.class Lcom/liquable/nemo/regist/ImportContactsActivity$1;
.super Ljava/lang/Object;
.source "ImportContactsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/regist/ImportContactsActivity;->onLoggedInCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/regist/ImportContactsActivity;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/regist/ImportContactsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/regist/ImportContactsActivity;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/liquable/nemo/regist/ImportContactsActivity$1;->this$0:Lcom/liquable/nemo/regist/ImportContactsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 61
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v0

    const-string/jumbo v1, "ImportContactsActivity"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/liquable/nemo/analytics/IAnalyticsService;->enableAutoSyncContact(Ljava/lang/String;Z)V

    .line 62
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v0

    const-string/jumbo v1, "contacts"

    invoke-interface {v0, v1}, Lcom/liquable/nemo/analytics/IAnalyticsService;->importFriendsSkip(Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/liquable/nemo/regist/ImportContactsActivity$1;->this$0:Lcom/liquable/nemo/regist/ImportContactsActivity;

    # invokes: Lcom/liquable/nemo/regist/ImportContactsActivity;->finishAndGoToImportFacebookFriends()V
    invoke-static {v0}, Lcom/liquable/nemo/regist/ImportContactsActivity;->access$000(Lcom/liquable/nemo/regist/ImportContactsActivity;)V

    .line 64
    return-void
.end method
