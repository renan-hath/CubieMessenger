.class public Lcom/liquable/nemo/group/RemoveChatGroupMemberActivity$CreateIntent;
.super Landroid/content/Intent;
.source "RemoveChatGroupMemberActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/group/RemoveChatGroupMemberActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CreateIntent"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "topic"    # Ljava/lang/String;

    .prologue
    .line 42
    const-class v0, Lcom/liquable/nemo/group/RemoveChatGroupMemberActivity$CreateIntent;

    invoke-virtual {v0}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 44
    const-string/jumbo v0, "topic"

    invoke-virtual {p0, v0, p2}, Lcom/liquable/nemo/group/RemoveChatGroupMemberActivity$CreateIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 45
    return-void
.end method

.method public static getChatGroupTopic(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 38
    const-string/jumbo v0, "topic"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
