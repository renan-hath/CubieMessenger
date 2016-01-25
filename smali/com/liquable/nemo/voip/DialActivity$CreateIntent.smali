.class public Lcom/liquable/nemo/voip/DialActivity$CreateIntent;
.super Landroid/content/Intent;
.source "DialActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/voip/DialActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CreateIntent"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/liquable/nemo/friend/model/Account;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "receiver"    # Lcom/liquable/nemo/friend/model/Account;
    .param p3, "from"    # Ljava/lang/String;

    .prologue
    .line 30
    const-class v0, Lcom/liquable/nemo/voip/DialActivity$CreateIntent;

    invoke-virtual {v0}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 33
    const v0, 0x10808000

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/voip/DialActivity$CreateIntent;->setFlags(I)Landroid/content/Intent;

    .line 35
    const-string/jumbo v0, "receiver"

    invoke-virtual {p0, v0, p2}, Lcom/liquable/nemo/voip/DialActivity$CreateIntent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 36
    const-string/jumbo v0, "from"

    invoke-virtual {p0, v0, p3}, Lcom/liquable/nemo/voip/DialActivity$CreateIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    return-void
.end method

.method public static getFrom(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 22
    const-string/jumbo v0, "from"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getReceiver(Landroid/content/Intent;)Lcom/liquable/nemo/friend/model/Account;
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 26
    const-string/jumbo v0, "receiver"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/friend/model/Account;

    return-object v0
.end method
