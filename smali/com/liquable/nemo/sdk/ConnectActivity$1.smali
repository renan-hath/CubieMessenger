.class Lcom/liquable/nemo/sdk/ConnectActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "ConnectActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/sdk/ConnectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/sdk/ConnectActivity;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/sdk/ConnectActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/sdk/ConnectActivity;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/liquable/nemo/sdk/ConnectActivity$1;->this$0:Lcom/liquable/nemo/sdk/ConnectActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 51
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/liquable/nemo/util/urlimage/UrlFileType;

    const/4 v1, 0x0

    sget-object v2, Lcom/liquable/nemo/util/urlimage/UrlFileType;->OPEN_API_APP_MSG_BUTTON:Lcom/liquable/nemo/util/urlimage/UrlFileType;

    aput-object v2, v0, v1

    invoke-static {p2, v0}, Lcom/liquable/nemo/util/BroadcastEventMatcher;->matchUrlFileTransferCompleteEvent(Landroid/content/Intent;[Lcom/liquable/nemo/util/urlimage/UrlFileType;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/liquable/nemo/sdk/ConnectActivity$1;->this$0:Lcom/liquable/nemo/sdk/ConnectActivity;

    # invokes: Lcom/liquable/nemo/sdk/ConnectActivity;->loadAppIcon()V
    invoke-static {v0}, Lcom/liquable/nemo/sdk/ConnectActivity;->access$000(Lcom/liquable/nemo/sdk/ConnectActivity;)V

    .line 55
    :cond_0
    return-void
.end method
