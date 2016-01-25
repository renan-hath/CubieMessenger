.class public Lcom/liquable/nemo/voip/AnswerCallActivity$CreateIntent;
.super Landroid/content/Intent;
.source "AnswerCallActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/voip/AnswerCallActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CreateIntent"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/liquable/nemo/voip/session/AnswerCall;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "answerCall"    # Lcom/liquable/nemo/voip/session/AnswerCall;

    .prologue
    .line 44
    const-class v0, Lcom/liquable/nemo/voip/AnswerCallActivity$CreateIntent;

    invoke-virtual {v0}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 49
    const v0, 0x10808000

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/voip/AnswerCallActivity$CreateIntent;->setFlags(I)Landroid/content/Intent;

    .line 51
    sget-object v0, Lcom/liquable/nemo/voip/session/AnswerCall;->INTENT_KEY:Ljava/lang/String;

    invoke-virtual {p0, v0, p2}, Lcom/liquable/nemo/voip/AnswerCallActivity$CreateIntent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 52
    return-void
.end method

.method public static getAnswerCall(Landroid/content/Intent;)Lcom/liquable/nemo/voip/session/AnswerCall;
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 40
    sget-object v0, Lcom/liquable/nemo/voip/session/AnswerCall;->INTENT_KEY:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/voip/session/AnswerCall;

    return-object v0
.end method
