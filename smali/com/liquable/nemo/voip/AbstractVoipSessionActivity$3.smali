.class Lcom/liquable/nemo/voip/AbstractVoipSessionActivity$3;
.super Ljava/lang/Object;
.source "AbstractVoipSessionActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;->configureSpeaker()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;

    .prologue
    .line 181
    iput-object p1, p0, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity$3;->this$0:Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 185
    iget-object v1, p0, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity$3;->this$0:Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;

    invoke-static {v1}, Lcom/liquable/nemo/voip/audio/VoipSounds;->toggleSpeakerMode(Landroid/content/Context;)Z

    move-result v0

    .line 186
    .local v0, "speakerOn":Z
    iget-object v1, p0, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity$3;->this$0:Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;

    # getter for: Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;->speakerBtn:Landroid/view/View;
    invoke-static {v1}, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;->access$200(Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 187
    return-void
.end method
