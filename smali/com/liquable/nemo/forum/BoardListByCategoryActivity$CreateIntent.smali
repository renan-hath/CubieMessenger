.class public Lcom/liquable/nemo/forum/BoardListByCategoryActivity$CreateIntent;
.super Landroid/content/Intent;
.source "BoardListByCategoryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/forum/BoardListByCategoryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CreateIntent"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "boardCategory"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    .line 22
    const-class v0, Lcom/liquable/nemo/forum/BoardListByCategoryActivity;

    invoke-virtual {p0, p1, v0}, Lcom/liquable/nemo/forum/BoardListByCategoryActivity$CreateIntent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 23
    const-string/jumbo v0, "BOARD_CATEGORY"

    invoke-virtual {p0, v0, p2}, Lcom/liquable/nemo/forum/BoardListByCategoryActivity$CreateIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 24
    return-void
.end method

.method public static getBoardCategory(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 18
    const-string/jumbo v0, "BOARD_CATEGORY"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
