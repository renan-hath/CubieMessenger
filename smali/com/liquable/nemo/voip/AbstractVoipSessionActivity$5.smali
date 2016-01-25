.class Lcom/liquable/nemo/voip/AbstractVoipSessionActivity$5;
.super Ljava/lang/Object;
.source "AbstractVoipSessionActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;->toggleTalking(Lcom/liquable/nemo/friend/model/Account;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final startTime:J

.field final synthetic this$0:Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;)V
    .locals 2
    .param p1, "this$0"    # Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;

    .prologue
    .line 423
    iput-object p1, p0, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity$5;->this$0:Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 424
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity$5;->startTime:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x3e8

    .line 428
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity$5;->startTime:J

    sub-long v0, v2, v4

    .line 430
    .local v0, "delta":J
    iget-object v2, p0, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity$5;->this$0:Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;

    # invokes: Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;->getStateTextView()Landroid/widget/TextView;
    invoke-static {v2}, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;->access$400(Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;)Landroid/widget/TextView;

    move-result-object v2

    div-long v3, v0, v6

    invoke-static {v3, v4}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 431
    iget-object v2, p0, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity$5;->this$0:Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;

    iget-object v2, v2, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v2, p0, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 432
    return-void
.end method
