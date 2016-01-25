.class public Lcom/liquable/nemo/targetedintent/TextInviteAction;
.super Lcom/liquable/nemo/targetedintent/InviteAction;
.source "TextInviteAction.java"


# instance fields
.field private final context:Landroid/content/Context;

.field private final downloadUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "downloadUrl"    # Ljava/lang/String;
    .param p3, "trackingKey"    # Ljava/lang/String;

    .prologue
    .line 15
    invoke-direct {p0, p3}, Lcom/liquable/nemo/targetedintent/InviteAction;-><init>(Ljava/lang/String;)V

    .line 16
    iput-object p1, p0, Lcom/liquable/nemo/targetedintent/TextInviteAction;->context:Landroid/content/Context;

    .line 17
    iput-object p2, p0, Lcom/liquable/nemo/targetedintent/TextInviteAction;->downloadUrl:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method protected decorate(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 22
    const-string/jumbo v0, "text/plain"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 23
    const-string/jumbo v0, "android.intent.extra.TEXT"

    iget-object v1, p0, Lcom/liquable/nemo/targetedintent/TextInviteAction;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/liquable/nemo/targetedintent/TextInviteAction;->downloadUrl:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/liquable/nemo/targetedintent/TextInviteAction;->getInviteText(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 24
    return-void
.end method

.method protected getInviteText(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "downloadUrl"    # Ljava/lang/String;

    .prologue
    .line 27
    const v0, 0x7f0d048e

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    .line 28
    invoke-virtual {v3}, Lcom/liquable/nemo/util/Pref;->getUsername()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    .line 27
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
