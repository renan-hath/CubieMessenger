.class public Lcom/liquable/nemo/chat/OpenSecretImageActivity$CreateIntent;
.super Landroid/content/Intent;
.source "OpenSecretImageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/chat/OpenSecretImageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CreateIntent"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/liquable/nemo/message/model/SecretPictureMessage;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "secretPictureMessage"    # Lcom/liquable/nemo/message/model/SecretPictureMessage;

    .prologue
    .line 44
    const-class v0, Lcom/liquable/nemo/chat/OpenSecretImageActivity$CreateIntent;

    invoke-virtual {v0}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 45
    const-string/jumbo v0, "secretPictureMessage"

    invoke-virtual {p0, v0, p2}, Lcom/liquable/nemo/chat/OpenSecretImageActivity$CreateIntent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 46
    return-void
.end method

.method public static getSecretPictureMessage(Landroid/content/Intent;)Lcom/liquable/nemo/message/model/SecretPictureMessage;
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 40
    const-string/jumbo v0, "secretPictureMessage"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/message/model/SecretPictureMessage;

    return-object v0
.end method
