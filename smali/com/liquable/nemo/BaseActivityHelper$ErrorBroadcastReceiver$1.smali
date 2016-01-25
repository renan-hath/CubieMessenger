.class Lcom/liquable/nemo/BaseActivityHelper$ErrorBroadcastReceiver$1;
.super Ljava/lang/Object;
.source "BaseActivityHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/BaseActivityHelper$ErrorBroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/liquable/nemo/BaseActivityHelper$ErrorBroadcastReceiver;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$event:Lcom/liquable/nemo/NemoErrorEvent;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/BaseActivityHelper$ErrorBroadcastReceiver;Lcom/liquable/nemo/NemoErrorEvent;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$1"    # Lcom/liquable/nemo/BaseActivityHelper$ErrorBroadcastReceiver;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/liquable/nemo/BaseActivityHelper$ErrorBroadcastReceiver$1;->this$1:Lcom/liquable/nemo/BaseActivityHelper$ErrorBroadcastReceiver;

    iput-object p2, p0, Lcom/liquable/nemo/BaseActivityHelper$ErrorBroadcastReceiver$1;->val$event:Lcom/liquable/nemo/NemoErrorEvent;

    iput-object p3, p0, Lcom/liquable/nemo/BaseActivityHelper$ErrorBroadcastReceiver$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 61
    iget-object v1, p0, Lcom/liquable/nemo/BaseActivityHelper$ErrorBroadcastReceiver$1;->val$event:Lcom/liquable/nemo/NemoErrorEvent;

    sget-object v2, Lcom/liquable/nemo/NemoErrorEvent;->LOGIN_ERROR_NEED_UPDATE:Lcom/liquable/nemo/NemoErrorEvent;

    if-ne v1, v2, :cond_1

    .line 62
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    sget-object v2, Lcom/liquable/nemo/client/home/CubieDownloadUrl;->LOGIN_ERROR:Lcom/liquable/nemo/client/home/CubieDownloadUrl;

    .line 63
    invoke-virtual {v2}, Lcom/liquable/nemo/client/home/CubieDownloadUrl;->getBitlyUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 64
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/liquable/nemo/BaseActivityHelper$ErrorBroadcastReceiver$1;->this$1:Lcom/liquable/nemo/BaseActivityHelper$ErrorBroadcastReceiver;

    iget-object v1, v1, Lcom/liquable/nemo/BaseActivityHelper$ErrorBroadcastReceiver;->this$0:Lcom/liquable/nemo/BaseActivityHelper;

    # getter for: Lcom/liquable/nemo/BaseActivityHelper;->activity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/liquable/nemo/BaseActivityHelper;->access$000(Lcom/liquable/nemo/BaseActivityHelper;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 65
    iget-object v1, p0, Lcom/liquable/nemo/BaseActivityHelper$ErrorBroadcastReceiver$1;->this$1:Lcom/liquable/nemo/BaseActivityHelper$ErrorBroadcastReceiver;

    iget-object v1, v1, Lcom/liquable/nemo/BaseActivityHelper$ErrorBroadcastReceiver;->this$0:Lcom/liquable/nemo/BaseActivityHelper;

    # getter for: Lcom/liquable/nemo/BaseActivityHelper;->activity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/liquable/nemo/BaseActivityHelper;->access$000(Lcom/liquable/nemo/BaseActivityHelper;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 104
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    iget-object v1, p0, Lcom/liquable/nemo/BaseActivityHelper$ErrorBroadcastReceiver$1;->val$event:Lcom/liquable/nemo/NemoErrorEvent;

    sget-object v2, Lcom/liquable/nemo/NemoErrorEvent;->LOGIN_ERROR_NEED_REINSTALL:Lcom/liquable/nemo/NemoErrorEvent;

    if-ne v1, v2, :cond_0

    .line 67
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/util/Pref;->setEnterDeleteAccount(Z)V

    .line 69
    iget-object v1, p0, Lcom/liquable/nemo/BaseActivityHelper$ErrorBroadcastReceiver$1;->this$1:Lcom/liquable/nemo/BaseActivityHelper$ErrorBroadcastReceiver;

    iget-object v1, v1, Lcom/liquable/nemo/BaseActivityHelper$ErrorBroadcastReceiver;->this$0:Lcom/liquable/nemo/BaseActivityHelper;

    # getter for: Lcom/liquable/nemo/BaseActivityHelper;->activity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/liquable/nemo/BaseActivityHelper;->access$000(Lcom/liquable/nemo/BaseActivityHelper;)Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/liquable/nemo/BaseActivityHelper$ErrorBroadcastReceiver$1;->this$1:Lcom/liquable/nemo/BaseActivityHelper$ErrorBroadcastReceiver;

    iget-object v3, v3, Lcom/liquable/nemo/BaseActivityHelper$ErrorBroadcastReceiver;->this$0:Lcom/liquable/nemo/BaseActivityHelper;

    # getter for: Lcom/liquable/nemo/BaseActivityHelper;->activity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/liquable/nemo/BaseActivityHelper;->access$000(Lcom/liquable/nemo/BaseActivityHelper;)Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/liquable/nemo/android/service/ChattingAndroidService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->stopService(Landroid/content/Intent;)Z

    .line 71
    iget-object v1, p0, Lcom/liquable/nemo/BaseActivityHelper$ErrorBroadcastReceiver$1;->val$context:Landroid/content/Context;

    new-instance v2, Lcom/liquable/nemo/BaseActivityHelper$ErrorBroadcastReceiver$1$1;

    invoke-direct {v2, p0}, Lcom/liquable/nemo/BaseActivityHelper$ErrorBroadcastReceiver$1$1;-><init>(Lcom/liquable/nemo/BaseActivityHelper$ErrorBroadcastReceiver$1;)V

    invoke-static {v1, v2}, Lcom/liquable/nemo/authenticator/AccountUtil;->removeAccount(Landroid/content/Context;Landroid/accounts/AccountManagerCallback;)V

    goto :goto_0
.end method
