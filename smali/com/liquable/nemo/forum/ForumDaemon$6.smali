.class Lcom/liquable/nemo/forum/ForumDaemon$6;
.super Ljava/lang/Object;
.source "ForumDaemon.java"

# interfaces
.implements Lcom/liquable/util/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/forum/ForumDaemon;->refreshFavoriteBoards(Ljava/util/List;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/liquable/util/Function",
        "<",
        "Lcom/liquable/nemo/model/forum/ForumBoardDto;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/forum/ForumDaemon;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/forum/ForumDaemon;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/forum/ForumDaemon;

    .prologue
    .line 756
    iput-object p1, p0, Lcom/liquable/nemo/forum/ForumDaemon$6;->this$0:Lcom/liquable/nemo/forum/ForumDaemon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 756
    check-cast p1, Lcom/liquable/nemo/model/forum/ForumBoardDto;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/forum/ForumDaemon$6;->apply(Lcom/liquable/nemo/model/forum/ForumBoardDto;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public apply(Lcom/liquable/nemo/model/forum/ForumBoardDto;)Ljava/lang/String;
    .locals 1
    .param p1, "f"    # Lcom/liquable/nemo/model/forum/ForumBoardDto;

    .prologue
    .line 759
    invoke-virtual {p1}, Lcom/liquable/nemo/model/forum/ForumBoardDto;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
