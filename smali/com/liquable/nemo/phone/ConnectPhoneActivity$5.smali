.class Lcom/liquable/nemo/phone/ConnectPhoneActivity$5;
.super Landroid/content/BroadcastReceiver;
.source "ConnectPhoneActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/phone/ConnectPhoneActivity;->registerBroadcastReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/phone/ConnectPhoneActivity;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/phone/ConnectPhoneActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/phone/ConnectPhoneActivity;

    .prologue
    .line 167
    iput-object p1, p0, Lcom/liquable/nemo/phone/ConnectPhoneActivity$5;->this$0:Lcom/liquable/nemo/phone/ConnectPhoneActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 171
    iget-object v0, p0, Lcom/liquable/nemo/phone/ConnectPhoneActivity$5;->this$0:Lcom/liquable/nemo/phone/ConnectPhoneActivity;

    invoke-virtual {v0}, Lcom/liquable/nemo/phone/ConnectPhoneActivity;->finish()V

    .line 172
    return-void
.end method
