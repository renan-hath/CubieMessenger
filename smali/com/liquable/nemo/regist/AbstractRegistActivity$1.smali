.class Lcom/liquable/nemo/regist/AbstractRegistActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "AbstractRegistActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/regist/AbstractRegistActivity;->registerBroadcastReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/regist/AbstractRegistActivity;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/regist/AbstractRegistActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/regist/AbstractRegistActivity;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/liquable/nemo/regist/AbstractRegistActivity$1;->this$0:Lcom/liquable/nemo/regist/AbstractRegistActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/liquable/nemo/regist/AbstractRegistActivity$1;->this$0:Lcom/liquable/nemo/regist/AbstractRegistActivity;

    invoke-virtual {v0}, Lcom/liquable/nemo/regist/AbstractRegistActivity;->finish()V

    .line 109
    return-void
.end method
