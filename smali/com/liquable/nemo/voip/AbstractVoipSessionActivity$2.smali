.class Lcom/liquable/nemo/voip/AbstractVoipSessionActivity$2;
.super Ljava/lang/Object;
.source "AbstractVoipSessionActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;->configureMute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;

.field final synthetic val$muteBtn:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity$2;->this$0:Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;

    iput-object p2, p0, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity$2;->val$muteBtn:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 172
    iget-object v0, p0, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity$2;->this$0:Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;

    # getter for: Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;->voipSession:Lcom/liquable/nemo/voip/session/VoipSession;
    invoke-static {v0}, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;->access$000(Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;)Lcom/liquable/nemo/voip/session/VoipSession;

    move-result-object v1

    iget-object v0, p0, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity$2;->this$0:Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;

    # getter for: Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;->voipSession:Lcom/liquable/nemo/voip/session/VoipSession;
    invoke-static {v0}, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;->access$000(Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;)Lcom/liquable/nemo/voip/session/VoipSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liquable/nemo/voip/session/VoipSession;->isMute()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/liquable/nemo/voip/session/VoipSession;->setMute(Z)V

    .line 173
    iget-object v0, p0, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity$2;->val$muteBtn:Landroid/view/View;

    iget-object v1, p0, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity$2;->this$0:Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;

    # getter for: Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;->voipSession:Lcom/liquable/nemo/voip/session/VoipSession;
    invoke-static {v1}, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;->access$000(Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;)Lcom/liquable/nemo/voip/session/VoipSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/liquable/nemo/voip/session/VoipSession;->isMute()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 174
    return-void

    .line 172
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
