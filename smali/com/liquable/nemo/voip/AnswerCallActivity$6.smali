.class Lcom/liquable/nemo/voip/AnswerCallActivity$6;
.super Ljava/lang/Object;
.source "AnswerCallActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/voip/AnswerCallActivity;->onVoipSessionPeerLost()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/voip/AnswerCallActivity;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/voip/AnswerCallActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/voip/AnswerCallActivity;

    .prologue
    .line 220
    iput-object p1, p0, Lcom/liquable/nemo/voip/AnswerCallActivity$6;->this$0:Lcom/liquable/nemo/voip/AnswerCallActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/liquable/nemo/voip/AnswerCallActivity$6;->this$0:Lcom/liquable/nemo/voip/AnswerCallActivity;

    invoke-virtual {v0}, Lcom/liquable/nemo/voip/AnswerCallActivity;->finish()V

    .line 224
    return-void
.end method
