.class Lcom/liquable/nemo/voip/AnswerCallActivity$1;
.super Ljava/lang/Object;
.source "AnswerCallActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/voip/AnswerCallActivity;
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
    .line 69
    iput-object p1, p0, Lcom/liquable/nemo/voip/AnswerCallActivity$1;->this$0:Lcom/liquable/nemo/voip/AnswerCallActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/liquable/nemo/voip/AnswerCallActivity$1;->this$0:Lcom/liquable/nemo/voip/AnswerCallActivity;

    # invokes: Lcom/liquable/nemo/voip/AnswerCallActivity;->releaseLock()V
    invoke-static {v0}, Lcom/liquable/nemo/voip/AnswerCallActivity;->access$000(Lcom/liquable/nemo/voip/AnswerCallActivity;)V

    .line 73
    return-void
.end method
