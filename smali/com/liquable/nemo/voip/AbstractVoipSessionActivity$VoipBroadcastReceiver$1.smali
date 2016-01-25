.class Lcom/liquable/nemo/voip/AbstractVoipSessionActivity$VoipBroadcastReceiver$1;
.super Ljava/lang/Object;
.source "AbstractVoipSessionActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/voip/AbstractVoipSessionActivity$VoipBroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/liquable/nemo/voip/AbstractVoipSessionActivity$VoipBroadcastReceiver;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/voip/AbstractVoipSessionActivity$VoipBroadcastReceiver;)V
    .locals 0
    .param p1, "this$1"    # Lcom/liquable/nemo/voip/AbstractVoipSessionActivity$VoipBroadcastReceiver;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity$VoipBroadcastReceiver$1;->this$1:Lcom/liquable/nemo/voip/AbstractVoipSessionActivity$VoipBroadcastReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity$VoipBroadcastReceiver$1;->this$1:Lcom/liquable/nemo/voip/AbstractVoipSessionActivity$VoipBroadcastReceiver;

    iget-object v0, v0, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity$VoipBroadcastReceiver;->this$0:Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;

    invoke-virtual {v0}, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;->finish()V

    .line 77
    return-void
.end method
