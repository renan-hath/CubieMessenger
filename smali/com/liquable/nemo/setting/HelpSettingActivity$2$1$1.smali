.class Lcom/liquable/nemo/setting/HelpSettingActivity$2$1$1;
.super Ljava/lang/Object;
.source "HelpSettingActivity.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/setting/HelpSettingActivity$2$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/accounts/AccountManagerCallback",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lcom/liquable/nemo/setting/HelpSettingActivity$2$1;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/setting/HelpSettingActivity$2$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/liquable/nemo/setting/HelpSettingActivity$2$1;

    .prologue
    .line 743
    iput-object p1, p0, Lcom/liquable/nemo/setting/HelpSettingActivity$2$1$1;->this$2:Lcom/liquable/nemo/setting/HelpSettingActivity$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 748
    .local p1, "future":Landroid/accounts/AccountManagerFuture;, "Landroid/accounts/AccountManagerFuture<Ljava/lang/Boolean;>;"
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    .line 749
    .local v2, "success":Ljava/lang/Boolean;
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 750
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v3

    sget-object v4, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v4}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/liquable/nemo/analytics/IAnalyticsService;->deleteAccount(Ljava/lang/String;)V

    .line 752
    sget-object v3, Lcom/liquable/nemo/NemoManagers;->backup:Lcom/liquable/nemo/db/Backup;

    invoke-virtual {v3}, Lcom/liquable/nemo/db/Backup;->truncateNemoDb()V

    .line 753
    sget-object v3, Lcom/liquable/nemo/NemoManagers;->backup:Lcom/liquable/nemo/db/Backup;

    sget-object v4, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v4}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/liquable/nemo/db/Backup;->deleteAllBackups(Ljava/lang/String;)V

    .line 755
    sget-object v3, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v3}, Lcom/liquable/nemo/util/Pref;->removeAllPreferences()V

    .line 759
    sget-object v3, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/liquable/nemo/util/Pref;->setEnterDeleteAccount(Z)V

    .line 761
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/liquable/nemo/setting/HelpSettingActivity$2$1$1;->this$2:Lcom/liquable/nemo/setting/HelpSettingActivity$2$1;

    iget-object v3, v3, Lcom/liquable/nemo/setting/HelpSettingActivity$2$1;->this$1:Lcom/liquable/nemo/setting/HelpSettingActivity$2;

    iget-object v3, v3, Lcom/liquable/nemo/setting/HelpSettingActivity$2;->this$0:Lcom/liquable/nemo/setting/HelpSettingActivity;

    const-class v4, Lcom/liquable/nemo/CoverActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 763
    .local v1, "intent":Landroid/content/Intent;
    const v3, 0x10008000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 765
    iget-object v3, p0, Lcom/liquable/nemo/setting/HelpSettingActivity$2$1$1;->this$2:Lcom/liquable/nemo/setting/HelpSettingActivity$2$1;

    iget-object v3, v3, Lcom/liquable/nemo/setting/HelpSettingActivity$2$1;->this$1:Lcom/liquable/nemo/setting/HelpSettingActivity$2;

    iget-object v3, v3, Lcom/liquable/nemo/setting/HelpSettingActivity$2;->this$0:Lcom/liquable/nemo/setting/HelpSettingActivity;

    invoke-virtual {v3, v1}, Lcom/liquable/nemo/setting/HelpSettingActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 775
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "success":Ljava/lang/Boolean;
    :cond_0
    :goto_0
    return-void

    .line 767
    :catch_0
    move-exception v0

    .line 768
    .local v0, "e":Landroid/accounts/OperationCanceledException;
    invoke-virtual {v0}, Landroid/accounts/OperationCanceledException;->printStackTrace()V

    goto :goto_0

    .line 769
    .end local v0    # "e":Landroid/accounts/OperationCanceledException;
    :catch_1
    move-exception v0

    .line 770
    .local v0, "e":Landroid/accounts/AuthenticatorException;
    invoke-virtual {v0}, Landroid/accounts/AuthenticatorException;->printStackTrace()V

    goto :goto_0

    .line 771
    .end local v0    # "e":Landroid/accounts/AuthenticatorException;
    :catch_2
    move-exception v0

    .line 772
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
