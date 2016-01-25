.class Lcom/liquable/nemo/voip/AbstractVoipSessionActivity$1;
.super Ljava/lang/Object;
.source "AbstractVoipSessionActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;->configureFriend()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field count:I

.field final synthetic this$0:Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;)V
    .locals 1
    .param p1, "this$0"    # Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity$1;->this$0:Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    const/4 v0, 0x0

    iput v0, p0, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity$1;->count:I

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    .line 153
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 154
    iget v0, p0, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity$1;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity$1;->count:I

    .line 155
    iget v0, p0, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity$1;->count:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 156
    iget-object v1, p0, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity$1;->this$0:Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;

    iget-object v0, p0, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity$1;->this$0:Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;

    const v2, 0x7f0802c7

    invoke-virtual {v0, v2}, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/voip/VoipDebugView;

    iput-object v0, v1, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;->voipDebugView:Lcom/liquable/nemo/voip/VoipDebugView;

    .line 157
    iget-object v0, p0, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity$1;->this$0:Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;

    iget-object v0, v0, Lcom/liquable/nemo/voip/AbstractVoipSessionActivity;->voipDebugView:Lcom/liquable/nemo/voip/VoipDebugView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/voip/VoipDebugView;->setVisibility(I)V

    .line 160
    :cond_0
    return v3
.end method
