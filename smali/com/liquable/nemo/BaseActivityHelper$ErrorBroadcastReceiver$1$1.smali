.class Lcom/liquable/nemo/BaseActivityHelper$ErrorBroadcastReceiver$1$1;
.super Ljava/lang/Object;
.source "BaseActivityHelper.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/BaseActivityHelper$ErrorBroadcastReceiver$1;->onClick(Landroid/content/DialogInterface;I)V
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
.field final synthetic this$2:Lcom/liquable/nemo/BaseActivityHelper$ErrorBroadcastReceiver$1;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/BaseActivityHelper$ErrorBroadcastReceiver$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/liquable/nemo/BaseActivityHelper$ErrorBroadcastReceiver$1;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/liquable/nemo/BaseActivityHelper$ErrorBroadcastReceiver$1$1;->this$2:Lcom/liquable/nemo/BaseActivityHelper$ErrorBroadcastReceiver$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private gotoUninstall()V
    .locals 3

    .prologue
    .line 73
    const-string/jumbo v2, "package:com.liquable.nemo"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 74
    .local v0, "packageURI":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.DELETE"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 75
    .local v1, "uninstallIntent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/liquable/nemo/BaseActivityHelper$ErrorBroadcastReceiver$1$1;->this$2:Lcom/liquable/nemo/BaseActivityHelper$ErrorBroadcastReceiver$1;

    iget-object v2, v2, Lcom/liquable/nemo/BaseActivityHelper$ErrorBroadcastReceiver$1;->this$1:Lcom/liquable/nemo/BaseActivityHelper$ErrorBroadcastReceiver;

    iget-object v2, v2, Lcom/liquable/nemo/BaseActivityHelper$ErrorBroadcastReceiver;->this$0:Lcom/liquable/nemo/BaseActivityHelper;

    # getter for: Lcom/liquable/nemo/BaseActivityHelper;->activity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/liquable/nemo/BaseActivityHelper;->access$000(Lcom/liquable/nemo/BaseActivityHelper;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 76
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
    .line 80
    .local p1, "future":Landroid/accounts/AccountManagerFuture;, "Landroid/accounts/AccountManagerFuture<Ljava/lang/Boolean;>;"
    iget-object v3, p0, Lcom/liquable/nemo/BaseActivityHelper$ErrorBroadcastReceiver$1$1;->this$2:Lcom/liquable/nemo/BaseActivityHelper$ErrorBroadcastReceiver$1;

    iget-object v3, v3, Lcom/liquable/nemo/BaseActivityHelper$ErrorBroadcastReceiver$1;->this$1:Lcom/liquable/nemo/BaseActivityHelper$ErrorBroadcastReceiver;

    iget-object v3, v3, Lcom/liquable/nemo/BaseActivityHelper$ErrorBroadcastReceiver;->this$0:Lcom/liquable/nemo/BaseActivityHelper;

    # getter for: Lcom/liquable/nemo/BaseActivityHelper;->activity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/liquable/nemo/BaseActivityHelper;->access$000(Lcom/liquable/nemo/BaseActivityHelper;)Landroid/app/Activity;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/app/Activity;->removeDialog(I)V

    .line 81
    sget-object v3, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v3}, Lcom/liquable/nemo/util/Pref;->removeAccountInfo()V

    .line 83
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    .line 84
    .local v2, "success":Ljava/lang/Boolean;
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 86
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/liquable/nemo/BaseActivityHelper$ErrorBroadcastReceiver$1$1;->this$2:Lcom/liquable/nemo/BaseActivityHelper$ErrorBroadcastReceiver$1;

    iget-object v3, v3, Lcom/liquable/nemo/BaseActivityHelper$ErrorBroadcastReceiver$1;->this$1:Lcom/liquable/nemo/BaseActivityHelper$ErrorBroadcastReceiver;

    iget-object v3, v3, Lcom/liquable/nemo/BaseActivityHelper$ErrorBroadcastReceiver;->this$0:Lcom/liquable/nemo/BaseActivityHelper;

    # getter for: Lcom/liquable/nemo/BaseActivityHelper;->activity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/liquable/nemo/BaseActivityHelper;->access$000(Lcom/liquable/nemo/BaseActivityHelper;)Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/liquable/nemo/CoverActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 87
    .local v1, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/liquable/nemo/BaseActivityHelper$ErrorBroadcastReceiver$1$1;->this$2:Lcom/liquable/nemo/BaseActivityHelper$ErrorBroadcastReceiver$1;

    iget-object v3, v3, Lcom/liquable/nemo/BaseActivityHelper$ErrorBroadcastReceiver$1;->this$1:Lcom/liquable/nemo/BaseActivityHelper$ErrorBroadcastReceiver;

    iget-object v3, v3, Lcom/liquable/nemo/BaseActivityHelper$ErrorBroadcastReceiver;->this$0:Lcom/liquable/nemo/BaseActivityHelper;

    # getter for: Lcom/liquable/nemo/BaseActivityHelper;->activity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/liquable/nemo/BaseActivityHelper;->access$000(Lcom/liquable/nemo/BaseActivityHelper;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 88
    sget-object v3, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/liquable/nemo/util/Pref;->setEnterDeleteAccount(Z)V

    .line 89
    iget-object v3, p0, Lcom/liquable/nemo/BaseActivityHelper$ErrorBroadcastReceiver$1$1;->this$2:Lcom/liquable/nemo/BaseActivityHelper$ErrorBroadcastReceiver$1;

    iget-object v3, v3, Lcom/liquable/nemo/BaseActivityHelper$ErrorBroadcastReceiver$1;->this$1:Lcom/liquable/nemo/BaseActivityHelper$ErrorBroadcastReceiver;

    iget-object v3, v3, Lcom/liquable/nemo/BaseActivityHelper$ErrorBroadcastReceiver;->this$0:Lcom/liquable/nemo/BaseActivityHelper;

    # getter for: Lcom/liquable/nemo/BaseActivityHelper;->activity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/liquable/nemo/BaseActivityHelper;->access$000(Lcom/liquable/nemo/BaseActivityHelper;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 101
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "success":Ljava/lang/Boolean;
    :goto_0
    return-void

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Landroid/accounts/OperationCanceledException;
    invoke-virtual {v0}, Landroid/accounts/OperationCanceledException;->printStackTrace()V

    .line 99
    .end local v0    # "e":Landroid/accounts/OperationCanceledException;
    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/liquable/nemo/BaseActivityHelper$ErrorBroadcastReceiver$1$1;->gotoUninstall()V

    .line 100
    iget-object v3, p0, Lcom/liquable/nemo/BaseActivityHelper$ErrorBroadcastReceiver$1$1;->this$2:Lcom/liquable/nemo/BaseActivityHelper$ErrorBroadcastReceiver$1;

    iget-object v3, v3, Lcom/liquable/nemo/BaseActivityHelper$ErrorBroadcastReceiver$1;->this$1:Lcom/liquable/nemo/BaseActivityHelper$ErrorBroadcastReceiver;

    iget-object v3, v3, Lcom/liquable/nemo/BaseActivityHelper$ErrorBroadcastReceiver;->this$0:Lcom/liquable/nemo/BaseActivityHelper;

    # getter for: Lcom/liquable/nemo/BaseActivityHelper;->activity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/liquable/nemo/BaseActivityHelper;->access$000(Lcom/liquable/nemo/BaseActivityHelper;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 94
    :catch_1
    move-exception v0

    .line 95
    .local v0, "e":Landroid/accounts/AuthenticatorException;
    invoke-virtual {v0}, Landroid/accounts/AuthenticatorException;->printStackTrace()V

    goto :goto_1

    .line 96
    .end local v0    # "e":Landroid/accounts/AuthenticatorException;
    :catch_2
    move-exception v0

    .line 97
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method
