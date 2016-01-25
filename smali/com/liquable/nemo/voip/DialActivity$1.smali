.class Lcom/liquable/nemo/voip/DialActivity$1;
.super Ljava/lang/Object;
.source "DialActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/voip/DialActivity;->onSessionCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/voip/DialActivity;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/voip/DialActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/voip/DialActivity;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/liquable/nemo/voip/DialActivity$1;->this$0:Lcom/liquable/nemo/voip/DialActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 72
    iget-object v0, p0, Lcom/liquable/nemo/voip/DialActivity$1;->this$0:Lcom/liquable/nemo/voip/DialActivity;

    # getter for: Lcom/liquable/nemo/voip/DialActivity;->hangupBtn:Landroid/view/View;
    invoke-static {v0}, Lcom/liquable/nemo/voip/DialActivity;->access$000(Lcom/liquable/nemo/voip/DialActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 73
    iget-object v0, p0, Lcom/liquable/nemo/voip/DialActivity$1;->this$0:Lcom/liquable/nemo/voip/DialActivity;

    # getter for: Lcom/liquable/nemo/voip/DialActivity;->closeBtn:Landroid/view/View;
    invoke-static {v0}, Lcom/liquable/nemo/voip/DialActivity;->access$100(Lcom/liquable/nemo/voip/DialActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 74
    iget-object v0, p0, Lcom/liquable/nemo/voip/DialActivity$1;->this$0:Lcom/liquable/nemo/voip/DialActivity;

    invoke-virtual {v0}, Lcom/liquable/nemo/voip/DialActivity;->getVoipSession()Lcom/liquable/nemo/voip/session/VoipSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liquable/nemo/voip/session/VoipSession;->hangup()V

    .line 75
    return-void
.end method
