.class Lcom/liquable/nemo/BaseActivityHelper$ErrorBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BaseActivityHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/BaseActivityHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ErrorBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/BaseActivityHelper;


# direct methods
.method private constructor <init>(Lcom/liquable/nemo/BaseActivityHelper;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/liquable/nemo/BaseActivityHelper$ErrorBroadcastReceiver;->this$0:Lcom/liquable/nemo/BaseActivityHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/liquable/nemo/BaseActivityHelper;Lcom/liquable/nemo/BaseActivityHelper$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/liquable/nemo/BaseActivityHelper;
    .param p2, "x1"    # Lcom/liquable/nemo/BaseActivityHelper$1;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/liquable/nemo/BaseActivityHelper$ErrorBroadcastReceiver;-><init>(Lcom/liquable/nemo/BaseActivityHelper;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 51
    const-string/jumbo v2, "com.liquable.nemo.NEMO_EVENT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 52
    const-string/jumbo v2, "com.liquable.nemo.KEY_EVENT_CODE"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/NemoErrorEvent;

    .line 54
    .local v1, "event":Lcom/liquable/nemo/NemoErrorEvent;
    iget-object v2, p0, Lcom/liquable/nemo/BaseActivityHelper$ErrorBroadcastReceiver;->this$0:Lcom/liquable/nemo/BaseActivityHelper;

    # getter for: Lcom/liquable/nemo/BaseActivityHelper;->activity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/liquable/nemo/BaseActivityHelper;->access$000(Lcom/liquable/nemo/BaseActivityHelper;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/liquable/nemo/widget/CustomAlertDialogBuilder;->create(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 55
    invoke-virtual {v1}, Lcom/liquable/nemo/NemoErrorEvent;->getDialogMessageId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 56
    invoke-virtual {v1}, Lcom/liquable/nemo/NemoErrorEvent;->getDialogTitleId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    .line 57
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0d0069

    new-instance v4, Lcom/liquable/nemo/BaseActivityHelper$ErrorBroadcastReceiver$1;

    invoke-direct {v4, p0, v1, p1}, Lcom/liquable/nemo/BaseActivityHelper$ErrorBroadcastReceiver$1;-><init>(Lcom/liquable/nemo/BaseActivityHelper$ErrorBroadcastReceiver;Lcom/liquable/nemo/NemoErrorEvent;Landroid/content/Context;)V

    .line 58
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 106
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 107
    .local v0, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 109
    .end local v0    # "dialog":Landroid/app/AlertDialog;
    .end local v1    # "event":Lcom/liquable/nemo/NemoErrorEvent;
    :cond_0
    return-void
.end method
