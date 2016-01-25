.class public Lcom/liquable/nemo/forum/ForumImageViewerActivity$CreateIntent;
.super Landroid/content/Intent;
.source "ForumImageViewerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/forum/ForumImageViewerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CreateIntent"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imageUrl"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    .line 19
    const-class v0, Lcom/liquable/nemo/forum/ForumImageViewerActivity;

    invoke-virtual {p0, p1, v0}, Lcom/liquable/nemo/forum/ForumImageViewerActivity$CreateIntent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 20
    const-string/jumbo v0, "IMAGE_URL"

    invoke-virtual {p0, v0, p2}, Lcom/liquable/nemo/forum/ForumImageViewerActivity$CreateIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 21
    return-void
.end method

.method public static getImageUrl(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 15
    const-string/jumbo v0, "IMAGE_URL"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
