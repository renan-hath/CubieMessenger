.class Lcom/liquable/nemo/forum/FavoriteBoardListAdapter$2;
.super Ljava/lang/Object;
.source "FavoriteBoardListAdapter.java"

# interfaces
.implements Lcom/liquable/util/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/forum/FavoriteBoardListAdapter;->updateLocalLastUpdateTime(Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/liquable/util/Predicate",
        "<",
        "Lcom/liquable/nemo/forum/model/board/ForumBoard;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/forum/FavoriteBoardListAdapter;

.field final synthetic val$id:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/forum/FavoriteBoardListAdapter;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/forum/FavoriteBoardListAdapter;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/liquable/nemo/forum/FavoriteBoardListAdapter$2;->this$0:Lcom/liquable/nemo/forum/FavoriteBoardListAdapter;

    iput-object p2, p0, Lcom/liquable/nemo/forum/FavoriteBoardListAdapter$2;->val$id:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/liquable/nemo/forum/model/board/ForumBoard;)Z
    .locals 2
    .param p1, "input"    # Lcom/liquable/nemo/forum/model/board/ForumBoard;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/liquable/nemo/forum/FavoriteBoardListAdapter$2;->val$id:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/liquable/nemo/forum/model/board/ForumBoard;->getForumBoardDto()Lcom/liquable/nemo/model/forum/ForumBoardDto;

    move-result-object v1

    invoke-virtual {v1}, Lcom/liquable/nemo/model/forum/ForumBoardDto;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 92
    check-cast p1, Lcom/liquable/nemo/forum/model/board/ForumBoard;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/forum/FavoriteBoardListAdapter$2;->apply(Lcom/liquable/nemo/forum/model/board/ForumBoard;)Z

    move-result v0

    return v0
.end method
