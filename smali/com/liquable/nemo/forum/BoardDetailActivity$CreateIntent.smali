.class public Lcom/liquable/nemo/forum/BoardDetailActivity$CreateIntent;
.super Landroid/content/Intent;
.source "BoardDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/forum/BoardDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CreateIntent"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/liquable/nemo/model/forum/ForumBoardDto;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "forumBoardDto"    # Lcom/liquable/nemo/model/forum/ForumBoardDto;

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    .line 21
    const-class v0, Lcom/liquable/nemo/forum/BoardDetailActivity;

    invoke-virtual {p0, p1, v0}, Lcom/liquable/nemo/forum/BoardDetailActivity$CreateIntent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 22
    const-string/jumbo v0, "BOARD_DTO"

    invoke-virtual {p0, v0, p2}, Lcom/liquable/nemo/forum/BoardDetailActivity$CreateIntent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 23
    return-void
.end method

.method public static getBoardDto(Landroid/os/Bundle;)Lcom/liquable/nemo/model/forum/ForumBoardDto;
    .locals 1
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 17
    const-string/jumbo v0, "BOARD_DTO"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/model/forum/ForumBoardDto;

    return-object v0
.end method
