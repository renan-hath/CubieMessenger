.class Lcom/liquable/nemo/share/ShareMediaActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "ShareMediaActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/share/ShareMediaActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/share/ShareMediaActivity;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/share/ShareMediaActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/share/ShareMediaActivity;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/liquable/nemo/share/ShareMediaActivity$1;->this$0:Lcom/liquable/nemo/share/ShareMediaActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 36
    const-string/jumbo v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 37
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, "state":Ljava/lang/String;
    const-string/jumbo v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "mounted_ro"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 39
    :cond_1
    iget-object v1, p0, Lcom/liquable/nemo/share/ShareMediaActivity$1;->this$0:Lcom/liquable/nemo/share/ShareMediaActivity;

    # invokes: Lcom/liquable/nemo/share/ShareMediaActivity;->refresh()V
    invoke-static {v1}, Lcom/liquable/nemo/share/ShareMediaActivity;->access$000(Lcom/liquable/nemo/share/ShareMediaActivity;)V

    .line 46
    .end local v0    # "state":Ljava/lang/String;
    :cond_2
    :goto_0
    return-void

    .line 41
    :cond_3
    const-string/jumbo v1, "com.liquable.nemo.share.SHARE_EVENT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 42
    sget-object v1, Lcom/liquable/nemo/share/ShareEvent;->REFRESH:Lcom/liquable/nemo/share/ShareEvent;

    const-string/jumbo v2, "com.liquable.nemo.KEY_EVENT_CODE"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/share/ShareEvent;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 43
    iget-object v1, p0, Lcom/liquable/nemo/share/ShareMediaActivity$1;->this$0:Lcom/liquable/nemo/share/ShareMediaActivity;

    # invokes: Lcom/liquable/nemo/share/ShareMediaActivity;->refresh()V
    invoke-static {v1}, Lcom/liquable/nemo/share/ShareMediaActivity;->access$000(Lcom/liquable/nemo/share/ShareMediaActivity;)V

    goto :goto_0
.end method
